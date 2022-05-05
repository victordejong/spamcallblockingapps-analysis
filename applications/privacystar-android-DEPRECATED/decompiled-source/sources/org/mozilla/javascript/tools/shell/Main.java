package org.mozilla.javascript.tools.shell;

import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.cli.HelpFormatter;
import org.apache.commons.p018io.IOUtils;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.ContextAction;
import org.mozilla.javascript.Function;
import org.mozilla.javascript.GeneratedClassLoader;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.NativeArray;
import org.mozilla.javascript.RhinoException;
import org.mozilla.javascript.Script;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.SecurityController;
import org.mozilla.javascript.commonjs.module.ModuleScope;
import org.mozilla.javascript.commonjs.module.Require;
import org.mozilla.javascript.tools.SourceReader;
import org.mozilla.javascript.tools.ToolErrorReporter;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/shell/Main.class */
public class Main {
    private static final int EXITCODE_FILE_NOT_FOUND = 4;
    private static final int EXITCODE_RUNTIME_ERROR = 3;
    protected static ToolErrorReporter errorReporter;
    protected static int exitCode = 0;
    static String mainModule;
    static List<String> modulePath;
    static boolean processStdin = true;
    static Require require;
    static boolean sandboxed = false;
    private static SecurityProxy securityImpl;
    static boolean useRequire = false;
    public static ShellContextFactory shellContextFactory = new ShellContextFactory();
    public static Global global = new Global();
    static List<String> fileList = new ArrayList();
    private static final ScriptCache scriptCache = new ScriptCache(32);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/shell/Main$IProxy.class */
    public static class IProxy implements ContextAction, QuitAction {
        private static final int EVAL_INLINE_SCRIPT = 2;
        private static final int PROCESS_FILES = 1;
        private static final int SYSTEM_EXIT = 3;
        String[] args;
        String scriptText;
        private int type;

        IProxy(int i) {
            this.type = i;
        }

        @Override // org.mozilla.javascript.tools.shell.QuitAction
        public void quit(Context context, int i) {
            if (this.type == 3) {
                System.exit(i);
                return;
            }
            throw Kit.codeBug();
        }

        @Override // org.mozilla.javascript.ContextAction
        public Object run(Context context) {
            if (Main.useRequire) {
                Main.require = Main.global.installRequire(context, Main.modulePath, Main.sandboxed);
            }
            if (this.type == 1) {
                Main.processFiles(context, this.args);
                return null;
            } else if (this.type == 2) {
                Main.evalInlineScript(context, this.scriptText);
                return null;
            } else {
                throw Kit.codeBug();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/shell/Main$ScriptCache.class */
    public static class ScriptCache extends LinkedHashMap<String, ScriptReference> {
        int capacity;
        ReferenceQueue<Script> queue = new ReferenceQueue<>();

        ScriptCache(int i) {
            super(i + 1, 2.0f, true);
            this.capacity = i;
        }

        ScriptReference get(String str, byte[] bArr) {
            while (true) {
                ScriptReference scriptReference = (ScriptReference) this.queue.poll();
                if (scriptReference == null) {
                    break;
                }
                remove(scriptReference.path);
            }
            ScriptReference scriptReference2 = get(str);
            ScriptReference scriptReference3 = scriptReference2;
            if (scriptReference2 != null) {
                scriptReference3 = scriptReference2;
                if (!Arrays.equals(bArr, scriptReference2.digest)) {
                    remove(scriptReference2.path);
                    scriptReference3 = null;
                }
            }
            return scriptReference3;
        }

        void put(String str, byte[] bArr, Script script) {
            put(str, new ScriptReference(str, bArr, script, this.queue));
        }

        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(Map.Entry<String, ScriptReference> entry) {
            return size() > this.capacity;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/shell/Main$ScriptReference.class */
    public static class ScriptReference extends SoftReference<Script> {
        byte[] digest;
        String path;

        ScriptReference(String str, byte[] bArr, Script script, ReferenceQueue<Script> referenceQueue) {
            super(script, referenceQueue);
            this.path = str;
            this.digest = bArr;
        }
    }

    static {
        global.initQuitAction(new IProxy(3));
    }

    static void evalInlineScript(Context context, String str) {
        try {
            Script compileString = context.compileString(str, "<command>", 1, null);
            if (compileString != null) {
                compileString.exec(context, getShellScope());
            }
        } catch (VirtualMachineError e) {
            e.printStackTrace();
            Context.reportError(ToolErrorReporter.getMessage("msg.uncaughtJSException", e.toString()));
            exitCode = 3;
        } catch (RhinoException e2) {
            ToolErrorReporter.reportException(context.getErrorReporter(), e2);
            exitCode = 3;
        }
    }

    public static int exec(String[] strArr) {
        errorReporter = new ToolErrorReporter(false, global.getErr());
        shellContextFactory.setErrorReporter(errorReporter);
        String[] processOptions = processOptions(strArr);
        if (exitCode > 0) {
            return exitCode;
        }
        if (processStdin) {
            fileList.add(null);
        }
        if (!global.initialized) {
            global.init(shellContextFactory);
        }
        IProxy iProxy = new IProxy(1);
        iProxy.args = processOptions;
        shellContextFactory.call(iProxy);
        return exitCode;
    }

    private static byte[] getDigest(Object obj) {
        byte[] bArr;
        byte[] bytes;
        if (obj != null) {
            if (obj instanceof String) {
                try {
                    bytes = ((String) obj).getBytes("UTF-8");
                } catch (UnsupportedEncodingException e) {
                    bytes = ((String) obj).getBytes();
                }
            } else {
                bytes = (byte[]) obj;
            }
            try {
                bArr = MessageDigest.getInstance("MD5").digest(bytes);
            } catch (NoSuchAlgorithmException e2) {
                throw new RuntimeException(e2);
            }
        } else {
            bArr = null;
        }
        return bArr;
    }

    public static PrintStream getErr() {
        return getGlobal().getErr();
    }

    public static Global getGlobal() {
        return global;
    }

    public static InputStream getIn() {
        return getGlobal().getIn();
    }

    public static PrintStream getOut() {
        return getGlobal().getOut();
    }

    static Scriptable getScope(String str) {
        URI uri;
        if (!useRequire) {
            return global;
        }
        if (str == null) {
            uri = new File(System.getProperty("user.dir")).toURI();
        } else if (SourceReader.toUrl(str) != null) {
            try {
                uri = new URI(str);
            } catch (URISyntaxException e) {
                uri = new File(str).toURI();
            }
        } else {
            uri = new File(str).toURI();
        }
        return new ModuleScope(global, uri, null);
    }

    static Scriptable getShellScope() {
        return getScope(null);
    }

    private static void initJavaPolicySecuritySupport() {
        try {
            securityImpl = (SecurityProxy) Class.forName("org.mozilla.javascript.tools.shell.JavaPolicySecurity").newInstance();
            SecurityController.initGlobal(securityImpl);
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | LinkageError e) {
            throw Kit.initCause(new IllegalStateException("Can not load security support: " + e), e);
        }
    }

    private static Script loadCompiledScript(Context context, String str, byte[] bArr, Object obj) throws FileNotFoundException {
        if (bArr == null) {
            throw new FileNotFoundException(str);
        }
        int lastIndexOf = str.lastIndexOf(47);
        int i = lastIndexOf < 0 ? 0 : lastIndexOf + 1;
        int lastIndexOf2 = str.lastIndexOf(46);
        int i2 = lastIndexOf2;
        if (lastIndexOf2 < i) {
            i2 = str.length();
        }
        String substring = str.substring(i, i2);
        try {
            GeneratedClassLoader createLoader = SecurityController.createLoader(context.getApplicationClassLoader(), obj);
            Class<?> defineClass = createLoader.defineClass(substring, bArr);
            createLoader.linkClass(defineClass);
            if (Script.class.isAssignableFrom(defineClass)) {
                return (Script) defineClass.newInstance();
            }
            throw Context.reportRuntimeError("msg.must.implement.Script");
        } catch (IllegalAccessException e) {
            Context.reportError(e.toString());
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            Context.reportError(e2.toString());
            throw new RuntimeException(e2);
        }
    }

    public static void main(String[] strArr) {
        try {
            if (Boolean.getBoolean("rhino.use_java_policy_security")) {
                initJavaPolicySecuritySupport();
            }
        } catch (SecurityException e) {
            e.printStackTrace(System.err);
        }
        int exec = exec(strArr);
        if (exec != 0) {
            System.exit(exec);
        }
    }

    public static void processFile(Context context, Scriptable scriptable, String str) throws IOException {
        if (securityImpl == null) {
            processFileSecure(context, scriptable, str, null);
        } else {
            securityImpl.callProcessFileSecure(context, scriptable, str);
        }
    }

    public static void processFileNoThrow(Context context, Scriptable scriptable, String str) {
        try {
            processFile(context, scriptable, str);
        } catch (IOException e) {
            Context.reportError(ToolErrorReporter.getMessage("msg.couldnt.read.source", str, e.getMessage()));
            exitCode = 4;
        } catch (VirtualMachineError e2) {
            e2.printStackTrace();
            Context.reportError(ToolErrorReporter.getMessage("msg.uncaughtJSException", e2.toString()));
            exitCode = 3;
        } catch (RhinoException e3) {
            ToolErrorReporter.reportException(context.getErrorReporter(), e3);
            exitCode = 3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void processFileSecure(Context context, Scriptable scriptable, String str, Object obj) throws IOException {
        Script script;
        boolean endsWith = str.endsWith(".class");
        Object readFileOrUrl = readFileOrUrl(str, !endsWith);
        byte[] digest = getDigest(readFileOrUrl);
        String str2 = str + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + context.getOptimizationLevel();
        ScriptReference scriptReference = scriptCache.get(str2, digest);
        Script script2 = scriptReference != null ? scriptReference.get() : null;
        Script script3 = script2;
        if (script2 == null) {
            if (endsWith) {
                script = loadCompiledScript(context, str, (byte[]) readFileOrUrl, obj);
            } else {
                String str3 = (String) readFileOrUrl;
                String str4 = str3;
                if (str3.length() > 0) {
                    str4 = str3;
                    if (str3.charAt(0) == '#') {
                        int i = 1;
                        while (true) {
                            str4 = str3;
                            if (i == str3.length()) {
                                break;
                            }
                            char charAt = str3.charAt(i);
                            if (charAt == '\n' || charAt == '\r') {
                                break;
                            }
                            i++;
                        }
                        str4 = str3.substring(i);
                    }
                }
                script = context.compileString(str4, str, 1, obj);
            }
            scriptCache.put(str2, digest, script);
            script3 = script;
        }
        if (script3 != null) {
            script3.exec(context, scriptable);
        }
    }

    static void processFiles(Context context, String[] strArr) {
        Object[] objArr = new Object[strArr.length];
        System.arraycopy(strArr, 0, objArr, 0, strArr.length);
        global.defineProperty("arguments", context.newArray(global, objArr), 2);
        for (String str : fileList) {
            try {
                processSource(context, str);
            } catch (IOException e) {
                Context.reportError(ToolErrorReporter.getMessage("msg.couldnt.read.source", str, e.getMessage()));
                exitCode = 4;
            } catch (VirtualMachineError e2) {
                e2.printStackTrace();
                Context.reportError(ToolErrorReporter.getMessage("msg.uncaughtJSException", e2.toString()));
                exitCode = 3;
            } catch (RhinoException e3) {
                ToolErrorReporter.reportException(context.getErrorReporter(), e3);
                exitCode = 3;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x023d, code lost:
        if (r0.equals("-help") != false) goto L_0x0240;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String[] processOptions(java.lang.String[] r7) {
        /*
            Method dump skipped, instructions count: 717
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.tools.shell.Main.processOptions(java.lang.String[]):java.lang.String[]");
    }

    public static void processSource(Context context, String str) throws IOException {
        int i;
        boolean z;
        if (str == null || str.equals(HelpFormatter.DEFAULT_OPT_PREFIX)) {
            Scriptable shellScope = getShellScope();
            String characterEncoding = shellContextFactory.getCharacterEncoding();
            ShellConsole console = global.getConsole(characterEncoding != null ? Charset.forName(characterEncoding) : Charset.defaultCharset());
            if (str == null) {
                console.println(context.getImplementationVersion());
            }
            boolean z2 = false;
            int i2 = 1;
            while (!z2) {
                String[] prompts = global.getPrompts(context);
                String str2 = str == null ? prompts[0] : null;
                console.flush();
                String str3 = "";
                while (true) {
                    try {
                        String readLine = console.readLine(str2);
                        if (readLine == null) {
                            z = true;
                            i = i2;
                            break;
                        }
                        str3 = str3 + readLine + IOUtils.LINE_SEPARATOR_UNIX;
                        i2++;
                        if (context.stringIsCompilableUnit(str3)) {
                            z = z2;
                            i = i2;
                            break;
                        }
                        str2 = prompts[1];
                    } catch (IOException e) {
                        console.println(e.toString());
                        i = i2;
                        z = z2;
                    }
                }
                try {
                    try {
                        Script compileString = context.compileString(str3, "<stdin>", i, null);
                        z2 = z;
                        i2 = i;
                        if (compileString != null) {
                            Object exec = compileString.exec(context, shellScope);
                            if (exec != Context.getUndefinedValue() && (!(exec instanceof Function) || !str3.trim().startsWith("function"))) {
                                try {
                                    console.println(Context.toString(exec));
                                } catch (RhinoException e2) {
                                    ToolErrorReporter.reportException(context.getErrorReporter(), e2);
                                }
                            }
                            NativeArray nativeArray = global.history;
                            nativeArray.put((int) nativeArray.getLength(), nativeArray, str3);
                            z2 = z;
                            i2 = i;
                        }
                    } catch (RhinoException e3) {
                        ToolErrorReporter.reportException(context.getErrorReporter(), e3);
                        exitCode = 3;
                        z2 = z;
                        i2 = i;
                    }
                } catch (VirtualMachineError e4) {
                    e4.printStackTrace();
                    Context.reportError(ToolErrorReporter.getMessage("msg.uncaughtJSException", e4.toString()));
                    exitCode = 3;
                    z2 = z;
                    i2 = i;
                }
            }
            console.println();
            console.flush();
        } else if (!useRequire || !str.equals(mainModule)) {
            processFile(context, getScope(str), str);
        } else {
            require.requireMain(context, str);
        }
    }

    private static Object readFileOrUrl(String str, boolean z) throws IOException {
        return SourceReader.readFileOrUrl(str, z, shellContextFactory.getCharacterEncoding());
    }

    public static void setErr(PrintStream printStream) {
        getGlobal().setErr(printStream);
    }

    public static void setIn(InputStream inputStream) {
        getGlobal().setIn(inputStream);
    }

    public static void setOut(PrintStream printStream) {
        getGlobal().setOut(printStream);
    }
}
