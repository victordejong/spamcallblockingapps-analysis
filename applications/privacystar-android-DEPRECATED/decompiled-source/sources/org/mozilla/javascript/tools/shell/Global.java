package org.mozilla.javascript.tools.shell;

import com.apptentive.android.sdk.Apptentive;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.Reader;
import java.lang.reflect.InvocationTargetException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.p018io.IOUtils;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.ContextAction;
import org.mozilla.javascript.ContextFactory;
import org.mozilla.javascript.Function;
import org.mozilla.javascript.ImporterTopLevel;
import org.mozilla.javascript.NativeArray;
import org.mozilla.javascript.Script;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;
import org.mozilla.javascript.Synchronizer;
import org.mozilla.javascript.Undefined;
import org.mozilla.javascript.Wrapper;
import org.mozilla.javascript.commonjs.module.Require;
import org.mozilla.javascript.commonjs.module.RequireBuilder;
import org.mozilla.javascript.commonjs.module.provider.SoftCachingModuleScriptProvider;
import org.mozilla.javascript.commonjs.module.provider.UrlModuleSourceProvider;
import org.mozilla.javascript.serialize.ScriptableInputStream;
import org.mozilla.javascript.serialize.ScriptableOutputStream;
import org.mozilla.javascript.tools.ToolErrorReporter;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/shell/Global.class */
public class Global extends ImporterTopLevel {
    static final long serialVersionUID = 4029130780977538005L;
    boolean attemptedJLineLoad;
    private ShellConsole console;
    private HashMap<String, String> doctestCanonicalizations;
    private PrintStream errStream;
    NativeArray history;
    private InputStream inStream;
    boolean initialized;
    private PrintStream outStream;
    private QuitAction quitAction;
    private boolean sealedStdLib = false;
    private String[] prompts = {"js> ", "  > "};

    public Global() {
    }

    public Global(Context context) {
        init(context);
    }

    public static void defineClass(Context context, Scriptable scriptable, Object[] objArr, Function function) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        Class<?> cls = getClass(objArr);
        if (!Scriptable.class.isAssignableFrom(cls)) {
            throw reportRuntimeError("msg.must.implement.Scriptable");
        }
        ScriptableObject.defineClass(scriptable, cls);
    }

    public static Object deserialize(Context context, Scriptable scriptable, Object[] objArr, Function function) throws IOException, ClassNotFoundException {
        if (objArr.length < 1) {
            throw Context.reportRuntimeError("Expected a filename to read the serialization from");
        }
        FileInputStream fileInputStream = new FileInputStream(Context.toString(objArr[0]));
        Scriptable topLevelScope = ScriptableObject.getTopLevelScope(scriptable);
        ScriptableInputStream scriptableInputStream = new ScriptableInputStream(fileInputStream, topLevelScope);
        Object readObject = scriptableInputStream.readObject();
        scriptableInputStream.close();
        return Context.toObject(readObject, topLevelScope);
    }

    public static Object doctest(Context context, Scriptable scriptable, Object[] objArr, Function function) {
        if (objArr.length == 0) {
            return Boolean.FALSE;
        }
        String context2 = Context.toString(objArr[0]);
        Global instance = getInstance(function);
        return new Integer(instance.runDoctest(context, instance, context2, null, 0));
    }

    private boolean doctestOutputMatches(String str, String str2) {
        String str3;
        String trim = str.trim();
        String replace = str2.trim().replace(IOUtils.LINE_SEPARATOR_WINDOWS, IOUtils.LINE_SEPARATOR_UNIX);
        if (trim.equals(replace)) {
            return true;
        }
        for (Map.Entry<String, String> entry : this.doctestCanonicalizations.entrySet()) {
            trim = trim.replace(entry.getKey(), entry.getValue());
        }
        if (trim.equals(replace)) {
            return true;
        }
        Pattern compile = Pattern.compile("@[0-9a-fA-F]+");
        Matcher matcher = compile.matcher(trim);
        Matcher matcher2 = compile.matcher(replace);
        while (matcher.find() && matcher2.find() && matcher2.start() == matcher.start()) {
            int start = matcher.start();
            if (!trim.substring(0, start).equals(replace.substring(0, start))) {
                return false;
            }
            String group = matcher.group();
            String group2 = matcher2.group();
            String str4 = this.doctestCanonicalizations.get(group);
            if (str4 == null) {
                this.doctestCanonicalizations.put(group, group2);
                str3 = trim.replace(group, group2);
            } else {
                str3 = trim;
                if (!group2.equals(str4)) {
                    return false;
                }
            }
            trim = str3;
            if (str3.equals(replace)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: gc */
    public static void m206gc(Context context, Scriptable scriptable, Object[] objArr, Function function) {
        System.gc();
    }

    private static String getCharCodingFromType(String str) {
        int indexOf = str.indexOf(59);
        if (indexOf < 0) {
            return null;
        }
        int length = str.length();
        while (true) {
            indexOf++;
            if (indexOf == length || str.charAt(indexOf) > ' ') {
                break;
            }
        }
        if (!HttpRequest.PARAM_CHARSET.regionMatches(true, 0, str, indexOf, HttpRequest.PARAM_CHARSET.length())) {
            return null;
        }
        int length2 = indexOf + HttpRequest.PARAM_CHARSET.length();
        while (length2 != length && str.charAt(length2) <= ' ') {
            length2++;
        }
        if (length2 == length || str.charAt(length2) != '=') {
            return null;
        }
        while (true) {
            length2++;
            if (length2 == length || str.charAt(length2) > ' ') {
                break;
            }
        }
        if (length2 == length) {
            return null;
        }
        while (str.charAt(length - 1) <= ' ') {
            length--;
        }
        return str.substring(length2, length);
    }

    private static Class<?> getClass(Object[] objArr) {
        if (objArr.length == 0) {
            throw reportRuntimeError("msg.expected.string.arg");
        }
        Object obj = objArr[0];
        if (obj instanceof Wrapper) {
            Object unwrap = ((Wrapper) obj).unwrap();
            if (unwrap instanceof Class) {
                return (Class) unwrap;
            }
        }
        String context = Context.toString(objArr[0]);
        try {
            return Class.forName(context);
        } catch (ClassNotFoundException e) {
            throw reportRuntimeError("msg.class.not.found", context);
        }
    }

    private static Global getInstance(Function function) {
        Scriptable parentScope = function.getParentScope();
        if (parentScope instanceof Global) {
            return (Global) parentScope;
        }
        throw reportRuntimeError("msg.bad.shell.function.scope", String.valueOf(parentScope));
    }

    public static void help(Context context, Scriptable scriptable, Object[] objArr, Function function) {
        getInstance(function).getOut().println(ToolErrorReporter.getMessage("msg.help"));
    }

    public static void load(Context context, Scriptable scriptable, Object[] objArr, Function function) {
        for (Object obj : objArr) {
            String context2 = Context.toString(obj);
            try {
                Main.processFile(context, scriptable, context2);
            } catch (IOException e) {
                throw Context.reportRuntimeError(ToolErrorReporter.getMessage("msg.couldnt.read.source", context2, e.getMessage()));
            } catch (VirtualMachineError e2) {
                e2.printStackTrace();
                throw Context.reportRuntimeError(ToolErrorReporter.getMessage("msg.uncaughtJSException", e2.toString()));
            }
        }
    }

    public static void loadClass(Context context, Scriptable scriptable, Object[] objArr, Function function) throws IllegalAccessException, InstantiationException {
        Class<?> cls = getClass(objArr);
        if (!Script.class.isAssignableFrom(cls)) {
            throw reportRuntimeError("msg.must.implement.Script");
        }
        ((Script) cls.newInstance()).exec(context, scriptable);
    }

    private boolean loadJLine(Charset charset) {
        boolean z = true;
        if (!this.attemptedJLineLoad) {
            this.attemptedJLineLoad = true;
            this.console = ShellConsole.getConsole(this, charset);
        }
        if (this.console == null) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void pipe(boolean z, InputStream inputStream, OutputStream outputStream) throws IOException {
        int read;
        try {
            byte[] bArr = new byte[4096];
            while (true) {
                if (!z) {
                    read = inputStream.read(bArr, 0, 4096);
                } else {
                    try {
                        read = inputStream.read(bArr, 0, 4096);
                    } catch (IOException e) {
                    }
                }
                if (read < 0) {
                    break;
                } else if (z) {
                    outputStream.write(bArr, 0, read);
                    outputStream.flush();
                } else {
                    outputStream.write(bArr, 0, read);
                    outputStream.flush();
                }
            }
            try {
                if (z) {
                    inputStream.close();
                } else {
                    outputStream.close();
                }
            } catch (IOException e2) {
            }
        } catch (Throwable th) {
            try {
                if (z) {
                    inputStream.close();
                } else {
                    outputStream.close();
                }
            } catch (IOException e3) {
            }
            throw th;
        }
    }

    public static Object print(Context context, Scriptable scriptable, Object[] objArr, Function function) {
        PrintStream out = getInstance(function).getOut();
        for (int i = 0; i < objArr.length; i++) {
            if (i > 0) {
                out.print(" ");
            }
            out.print(Context.toString(objArr[i]));
        }
        out.println();
        return Context.getUndefinedValue();
    }

    public static void quit(Context context, Scriptable scriptable, Object[] objArr, Function function) {
        Global instance = getInstance(function);
        if (instance.quitAction != null) {
            int i = 0;
            if (objArr.length != 0) {
                i = ScriptRuntime.toInt32(objArr[0]);
            }
            instance.quitAction.quit(context, i);
        }
    }

    public static Object readFile(Context context, Scriptable scriptable, Object[] objArr, Function function) throws IOException {
        if (objArr.length == 0) {
            throw reportRuntimeError("msg.shell.readFile.bad.args");
        }
        String scriptRuntime = ScriptRuntime.toString(objArr[0]);
        String str = null;
        if (objArr.length >= 2) {
            str = ScriptRuntime.toString(objArr[1]);
        }
        return readUrl(scriptRuntime, str, true);
    }

    private static String readReader(Reader reader) throws IOException {
        return readReader(reader, 4096);
    }

    private static String readReader(Reader reader, int i) throws IOException {
        char[] cArr = new char[i];
        int i2 = 0;
        while (true) {
            int read = reader.read(cArr, i2, cArr.length - i2);
            if (read < 0) {
                return new String(cArr, 0, i2);
            }
            int i3 = i2 + read;
            i2 = i3;
            if (i3 == cArr.length) {
                char[] cArr2 = new char[cArr.length * 2];
                System.arraycopy(cArr, 0, cArr2, 0, i3);
                cArr = cArr2;
                i2 = i3;
            }
        }
    }

    public static Object readUrl(Context context, Scriptable scriptable, Object[] objArr, Function function) throws IOException {
        if (objArr.length == 0) {
            throw reportRuntimeError("msg.shell.readUrl.bad.args");
        }
        String scriptRuntime = ScriptRuntime.toString(objArr[0]);
        String str = null;
        if (objArr.length >= 2) {
            str = ScriptRuntime.toString(objArr[1]);
        }
        return readUrl(scriptRuntime, str, false);
    }

    private static String readUrl(String str, String str2, boolean z) throws IOException {
        Throwable th;
        int i;
        InputStream inputStream;
        try {
            if (!z) {
                URLConnection openConnection = new URL(str).openConnection();
                inputStream = openConnection.getInputStream();
                try {
                    int contentLength = openConnection.getContentLength();
                    i = contentLength;
                    if (contentLength <= 0) {
                        i = 1024;
                    }
                    str2 = str2;
                    if (str2 == null) {
                        String contentType = openConnection.getContentType();
                        str2 = str2;
                        if (contentType != null) {
                            str2 = getCharCodingFromType(contentType);
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    throw th;
                }
            } else {
                File file = new File(str);
                if (!file.exists()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("File not found: ");
                    sb.append(str);
                    throw new FileNotFoundException(sb.toString());
                } else if (!file.canRead()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Cannot read file: ");
                    sb2.append(str);
                    throw new IOException(sb2.toString());
                } else {
                    long length = file.length();
                    i = (int) length;
                    if (i != length) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Too big file size: ");
                        sb3.append(length);
                        throw new IOException(sb3.toString());
                    } else if (i == 0) {
                        return "";
                    } else {
                        inputStream = new FileInputStream(file);
                    }
                }
            }
            String readReader = readReader(str2 == null ? new InputStreamReader(inputStream) : new InputStreamReader(inputStream, str2), i);
            if (inputStream != null) {
                inputStream.close();
            }
            return readReader;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    static RuntimeException reportRuntimeError(String str) {
        return Context.reportRuntimeError(ToolErrorReporter.getMessage(str));
    }

    static RuntimeException reportRuntimeError(String str, String str2) {
        return Context.reportRuntimeError(ToolErrorReporter.getMessage(str, str2));
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01eb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object runCommand(org.mozilla.javascript.Context r7, org.mozilla.javascript.Scriptable r8, java.lang.Object[] r9, org.mozilla.javascript.Function r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 882
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.tools.shell.Global.runCommand(org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, java.lang.Object[], org.mozilla.javascript.Function):java.lang.Object");
    }

    private static int runProcess(String[] strArr, String[] strArr2, File file, InputStream inputStream, OutputStream outputStream, OutputStream outputStream2) throws IOException {
        PipeThread pipeThread;
        PipeThread pipeThread2;
        PipeThread pipeThread3 = null;
        Process exec = strArr2 == null ? Runtime.getRuntime().exec(strArr, (String[]) null, file) : Runtime.getRuntime().exec(strArr, strArr2, file);
        try {
            if (inputStream != null) {
                pipeThread = new PipeThread(false, inputStream, exec.getOutputStream());
                pipeThread.start();
            } else {
                exec.getOutputStream().close();
                pipeThread = null;
            }
            if (outputStream != null) {
                pipeThread2 = new PipeThread(true, exec.getInputStream(), outputStream);
                pipeThread2.start();
            } else {
                exec.getInputStream().close();
                pipeThread2 = null;
            }
            if (outputStream2 != null) {
                pipeThread3 = new PipeThread(true, exec.getErrorStream(), outputStream2);
                pipeThread3.start();
            } else {
                exec.getErrorStream().close();
            }
            while (true) {
                try {
                    exec.waitFor();
                    if (pipeThread2 != null) {
                        pipeThread2.join();
                    }
                    if (pipeThread != null) {
                        pipeThread.join();
                    }
                    if (pipeThread3 == null) {
                        break;
                    }
                    pipeThread3.join();
                    break;
                } catch (InterruptedException e) {
                }
            }
            return exec.exitValue();
        } finally {
            exec.destroy();
        }
    }

    public static void seal(Context context, Scriptable scriptable, Object[] objArr, Function function) {
        for (int i = 0; i != objArr.length; i++) {
            Object obj = objArr[i];
            if (!(obj instanceof ScriptableObject) || obj == Undefined.instance) {
                if (!(obj instanceof Scriptable) || obj == Undefined.instance) {
                    throw reportRuntimeError("msg.shell.seal.not.object");
                } else {
                    throw reportRuntimeError("msg.shell.seal.not.scriptable");
                }
            }
        }
        for (int i2 = 0; i2 != objArr.length; i2++) {
            ((ScriptableObject) objArr[i2]).sealObject();
        }
    }

    public static void serialize(Context context, Scriptable scriptable, Object[] objArr, Function function) throws IOException {
        if (objArr.length < 2) {
            throw Context.reportRuntimeError("Expected an object to serialize and a filename to write the serialization to");
        }
        Object obj = objArr[0];
        ScriptableOutputStream scriptableOutputStream = new ScriptableOutputStream(new FileOutputStream(Context.toString(objArr[1])), ScriptableObject.getTopLevelScope(scriptable));
        scriptableOutputStream.writeObject(obj);
        scriptableOutputStream.close();
    }

    public static Object spawn(Context context, Scriptable scriptable, Object[] objArr, Function function) {
        Runner runner;
        Scriptable parentScope = function.getParentScope();
        if (objArr.length != 0 && (objArr[0] instanceof Function)) {
            Object[] objArr2 = null;
            if (objArr.length > 1) {
                objArr2 = null;
                if (objArr[1] instanceof Scriptable) {
                    objArr2 = context.getElements((Scriptable) objArr[1]);
                }
            }
            Object[] objArr3 = objArr2;
            if (objArr2 == null) {
                objArr3 = ScriptRuntime.emptyArgs;
            }
            runner = new Runner(parentScope, (Function) objArr[0], objArr3);
        } else if (objArr.length == 0 || !(objArr[0] instanceof Script)) {
            throw reportRuntimeError("msg.spawn.args");
        } else {
            runner = new Runner(parentScope, (Script) objArr[0]);
        }
        runner.factory = context.getFactory();
        Thread thread = new Thread(runner);
        thread.start();
        return thread;
    }

    public static Object sync(Context context, Scriptable scriptable, Object[] objArr, Function function) {
        if (objArr.length < 1 || objArr.length > 2 || !(objArr[0] instanceof Function)) {
            throw reportRuntimeError("msg.sync.args");
        }
        Object obj = null;
        if (objArr.length == 2) {
            obj = null;
            if (objArr[1] != Undefined.instance) {
                obj = objArr[1];
            }
        }
        return new Synchronizer((Function) objArr[0], obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.io.InputStream toInputStream(java.lang.Object r4) throws java.io.IOException {
        /*
            r0 = r4
            boolean r0 = r0 instanceof org.mozilla.javascript.Wrapper
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0066
            r0 = r4
            org.mozilla.javascript.Wrapper r0 = (org.mozilla.javascript.Wrapper) r0
            java.lang.Object r0 = r0.unwrap()
            r7 = r0
            r0 = r7
            boolean r0 = r0 instanceof java.io.InputStream
            if (r0 == 0) goto L_0x0026
            r0 = r7
            java.io.InputStream r0 = (java.io.InputStream) r0
            r6 = r0
            r0 = 0
            r7 = r0
            goto L_0x0068
        L_0x0026:
            r0 = r7
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto L_0x003e
            java.io.ByteArrayInputStream r0 = new java.io.ByteArrayInputStream
            r1 = r0
            r2 = r7
            byte[] r2 = (byte[]) r2
            r1.<init>(r2)
            r6 = r0
            r0 = 0
            r7 = r0
            goto L_0x0068
        L_0x003e:
            r0 = r7
            boolean r0 = r0 instanceof java.io.Reader
            if (r0 == 0) goto L_0x0050
            r0 = r7
            java.io.Reader r0 = (java.io.Reader) r0
            java.lang.String r0 = readReader(r0)
            r7 = r0
            goto L_0x0068
        L_0x0050:
            r0 = r7
            boolean r0 = r0 instanceof char[]
            if (r0 == 0) goto L_0x0066
            java.lang.String r0 = new java.lang.String
            r1 = r0
            r2 = r7
            char[] r2 = (char[]) r2
            r1.<init>(r2)
            r7 = r0
            goto L_0x0068
        L_0x0066:
            r0 = 0
            r7 = r0
        L_0x0068:
            r0 = r6
            r8 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0087
            r0 = r7
            r6 = r0
            r0 = r7
            if (r0 != 0) goto L_0x007a
            r0 = r4
            java.lang.String r0 = org.mozilla.javascript.ScriptRuntime.toString(r0)
            r6 = r0
        L_0x007a:
            java.io.ByteArrayInputStream r0 = new java.io.ByteArrayInputStream
            r1 = r0
            r2 = r6
            byte[] r2 = r2.getBytes()
            r1.<init>(r2)
            r8 = r0
        L_0x0087:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.tools.shell.Global.toInputStream(java.lang.Object):java.io.InputStream");
    }

    private static OutputStream toOutputStream(Object obj) {
        OutputStream outputStream;
        if (obj instanceof Wrapper) {
            Object unwrap = ((Wrapper) obj).unwrap();
            if (unwrap instanceof OutputStream) {
                outputStream = (OutputStream) unwrap;
                return outputStream;
            }
        }
        outputStream = null;
        return outputStream;
    }

    public static Object toint32(Context context, Scriptable scriptable, Object[] objArr, Function function) {
        Object obj = objArr.length != 0 ? objArr[0] : Undefined.instance;
        return obj instanceof Integer ? obj : ScriptRuntime.wrapInt(ScriptRuntime.toInt32(obj));
    }

    public static double version(Context context, Scriptable scriptable, Object[] objArr, Function function) {
        double languageVersion = context.getLanguageVersion();
        if (objArr.length > 0) {
            context.setLanguageVersion((int) Context.toNumber(objArr[0]));
        }
        return languageVersion;
    }

    public ShellConsole getConsole(Charset charset) {
        if (!loadJLine(charset)) {
            this.console = ShellConsole.getConsole(getIn(), getErr(), charset);
        }
        return this.console;
    }

    public PrintStream getErr() {
        return this.errStream == null ? System.err : this.errStream;
    }

    public InputStream getIn() {
        if (this.inStream == null && !this.attemptedJLineLoad && loadJLine(Charset.defaultCharset())) {
            this.inStream = this.console.getIn();
        }
        return this.inStream == null ? System.in : this.inStream;
    }

    public PrintStream getOut() {
        return this.outStream == null ? System.out : this.outStream;
    }

    public String[] getPrompts(Context context) {
        if (ScriptableObject.hasProperty(this, "prompts")) {
            Object property = ScriptableObject.getProperty(this, "prompts");
            if (property instanceof Scriptable) {
                Scriptable scriptable = (Scriptable) property;
                if (ScriptableObject.hasProperty(scriptable, 0) && ScriptableObject.hasProperty(scriptable, 1)) {
                    Object property2 = ScriptableObject.getProperty(scriptable, 0);
                    Object obj = property2;
                    if (property2 instanceof Function) {
                        obj = ((Function) property2).call(context, this, scriptable, new Object[0]);
                    }
                    this.prompts[0] = Context.toString(obj);
                    Object property3 = ScriptableObject.getProperty(scriptable, 1);
                    Object obj2 = property3;
                    if (property3 instanceof Function) {
                        obj2 = ((Function) property3).call(context, this, scriptable, new Object[0]);
                    }
                    this.prompts[1] = Context.toString(obj2);
                }
            }
        }
        return this.prompts;
    }

    public void init(Context context) {
        initStandardObjects(context, this.sealedStdLib);
        defineFunctionProperties(new String[]{"defineClass", "deserialize", "doctest", "gc", "help", "load", "loadClass", "print", "quit", "readFile", "readUrl", "runCommand", "seal", "serialize", "spawn", "sync", "toint32", Apptentive.Version.TYPE}, Global.class, 2);
        Environment.defineClass(this);
        defineProperty("environment", new Environment(this), 2);
        this.history = (NativeArray) context.newArray(this, 0);
        defineProperty("history", this.history, 2);
        this.initialized = true;
    }

    public void init(ContextFactory contextFactory) {
        contextFactory.call(new ContextAction() { // from class: org.mozilla.javascript.tools.shell.Global.1
            @Override // org.mozilla.javascript.ContextAction
            public Object run(Context context) {
                Global.this.init(context);
                return null;
            }
        });
    }

    public void initQuitAction(QuitAction quitAction) {
        if (quitAction == null) {
            throw new IllegalArgumentException("quitAction is null");
        } else if (this.quitAction != null) {
            throw new IllegalArgumentException("The method is once-call.");
        } else {
            this.quitAction = quitAction;
        }
    }

    public Require installRequire(Context context, List<String> list, boolean z) {
        RequireBuilder requireBuilder = new RequireBuilder();
        requireBuilder.setSandboxed(z);
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (String str : list) {
                try {
                    URI uri = new URI(str);
                    URI uri2 = uri;
                    if (!uri.isAbsolute()) {
                        uri2 = new File(str).toURI().resolve("");
                    }
                    if (!uri2.toString().endsWith("/")) {
                        uri2 = new URI(uri2 + "/");
                    }
                    arrayList.add(uri2);
                } catch (URISyntaxException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        requireBuilder.setModuleScriptProvider(new SoftCachingModuleScriptProvider(new UrlModuleSourceProvider(arrayList, null)));
        Require createRequire = requireBuilder.createRequire(context, this);
        createRequire.install(this);
        return createRequire;
    }

    public boolean isInitialized() {
        return this.initialized;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x01ca, code lost:
        if (r0.trim().startsWith("function") == false) goto L_0x01cd;
     */
    /* JADX WARN: Removed duplicated region for block: B:50:0x02d3 A[LOOP:1: B:9:0x004c->B:50:0x02d3, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0278 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int runDoctest(org.mozilla.javascript.Context r8, org.mozilla.javascript.Scriptable r9, java.lang.String r10, java.lang.String r11, int r12) {
        /*
            Method dump skipped, instructions count: 798
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.tools.shell.Global.runDoctest(org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, java.lang.String, java.lang.String, int):int");
    }

    public void setErr(PrintStream printStream) {
        this.errStream = printStream;
    }

    public void setIn(InputStream inputStream) {
        this.inStream = inputStream;
    }

    public void setOut(PrintStream printStream) {
        this.outStream = printStream;
    }

    public void setSealedStdLib(boolean z) {
        this.sealedStdLib = z;
    }
}
