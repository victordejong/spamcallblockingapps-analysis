package org.mozilla.javascript;

import java.io.CharArrayWriter;
import java.io.FilenameFilter;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/RhinoException.class */
public abstract class RhinoException extends RuntimeException {
    private static final Pattern JAVA_STACK_PATTERN = Pattern.compile("_c_(.*)_\\d+");
    static final long serialVersionUID = 1883500631321581169L;
    private static StackStyle stackStyle;
    private int columnNumber;
    int[] interpreterLineData;
    Object interpreterStackInfo;
    private int lineNumber;
    private String lineSource;
    private String sourceName;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.mozilla.javascript.RhinoException$1 */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/RhinoException$1.class */
    public static /* synthetic */ class C21541 {
        static final /* synthetic */ int[] $SwitchMap$org$mozilla$javascript$StackStyle = new int[StackStyle.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$org$mozilla$javascript$StackStyle[StackStyle.MOZILLA.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$mozilla$javascript$StackStyle[StackStyle.V8.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$mozilla$javascript$StackStyle[StackStyle.RHINO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    static {
        stackStyle = StackStyle.RHINO;
        String property = System.getProperty("rhino.stack.style");
        if (property == null) {
            return;
        }
        if ("Rhino".equalsIgnoreCase(property)) {
            stackStyle = StackStyle.RHINO;
        } else if ("Mozilla".equalsIgnoreCase(property)) {
            stackStyle = StackStyle.MOZILLA;
        } else if ("V8".equalsIgnoreCase(property)) {
            stackStyle = StackStyle.V8;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RhinoException() {
        Evaluator createInterpreter = Context.createInterpreter();
        if (createInterpreter != null) {
            createInterpreter.captureStackInfo(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RhinoException(String str) {
        super(str);
        Evaluator createInterpreter = Context.createInterpreter();
        if (createInterpreter != null) {
            createInterpreter.captureStackInfo(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String formatStackTrace(ScriptStackElement[] scriptStackElementArr, String str) {
        StringBuilder sb = new StringBuilder();
        String systemProperty = SecurityUtilities.getSystemProperty("line.separator");
        if (stackStyle == StackStyle.V8 && !"null".equals(str)) {
            sb.append(str);
            sb.append(systemProperty);
        }
        for (ScriptStackElement scriptStackElement : scriptStackElementArr) {
            switch (C21541.$SwitchMap$org$mozilla$javascript$StackStyle[stackStyle.ordinal()]) {
                case 1:
                    scriptStackElement.renderMozillaStyle(sb);
                    break;
                case 2:
                    scriptStackElement.renderV8Style(sb);
                    break;
                case 3:
                    scriptStackElement.renderJavaStyle(sb);
                    break;
            }
            sb.append(systemProperty);
        }
        return sb.toString();
    }

    private String generateStackTrace() {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        super.printStackTrace(new PrintWriter(charArrayWriter));
        String charArrayWriter2 = charArrayWriter.toString();
        Evaluator createInterpreter = Context.createInterpreter();
        if (createInterpreter != null) {
            return createInterpreter.getPatchedStack(this, charArrayWriter2);
        }
        return null;
    }

    public static StackStyle getStackStyle() {
        return stackStyle;
    }

    public static void setStackStyle(StackStyle stackStyle2) {
        stackStyle = stackStyle2;
    }

    public static void useMozillaStackStyle(boolean z) {
        stackStyle = z ? StackStyle.MOZILLA : StackStyle.RHINO;
    }

    public static boolean usesMozillaStackStyle() {
        return stackStyle == StackStyle.MOZILLA;
    }

    public final int columnNumber() {
        return this.columnNumber;
    }

    public String details() {
        return super.getMessage();
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String details = details();
        if (this.sourceName == null || this.lineNumber <= 0) {
            return details;
        }
        StringBuilder sb = new StringBuilder(details);
        sb.append(" (");
        if (this.sourceName != null) {
            sb.append(this.sourceName);
        }
        if (this.lineNumber > 0) {
            sb.append('#');
            sb.append(this.lineNumber);
        }
        sb.append(')');
        return sb.toString();
    }

    public ScriptStackElement[] getScriptStack() {
        return getScriptStack(-1, null);
    }

    public ScriptStackElement[] getScriptStack(int i, String str) {
        ScriptStackElement[] scriptStackElementArr;
        ArrayList arrayList = new ArrayList();
        ScriptStackElement[][] scriptStackElementArr2 = null;
        ScriptStackElement[][] scriptStackElementArr3 = scriptStackElementArr2;
        if (this.interpreterStackInfo != null) {
            Evaluator createInterpreter = Context.createInterpreter();
            scriptStackElementArr3 = scriptStackElementArr2;
            if (createInterpreter instanceof Interpreter) {
                scriptStackElementArr3 = ((Interpreter) createInterpreter).getScriptStackElements(this);
            }
        }
        StackTraceElement[] stackTrace = getStackTrace();
        boolean z = str == null;
        int i2 = 0;
        int i3 = 0;
        for (StackTraceElement stackTraceElement : stackTrace) {
            String fileName = stackTraceElement.getFileName();
            if (!stackTraceElement.getMethodName().startsWith("_c_") || stackTraceElement.getLineNumber() <= -1 || fileName == null || fileName.endsWith(".java")) {
                i2 = i2;
                z = z;
                i3 = i3;
                if ("org.mozilla.javascript.Interpreter".equals(stackTraceElement.getClassName())) {
                    i2 = i2;
                    z = z;
                    i3 = i3;
                    if ("interpretLoop".equals(stackTraceElement.getMethodName())) {
                        i2 = i2;
                        z = z;
                        i3 = i3;
                        if (scriptStackElementArr3 != null) {
                            i2 = i2;
                            z = z;
                            i3 = i3;
                            if (scriptStackElementArr3.length > i2) {
                                for (ScriptStackElement scriptStackElement : scriptStackElementArr3[i2]) {
                                    if (z || !str.equals(scriptStackElement.functionName)) {
                                        z = z;
                                        i3 = i3;
                                        if (z) {
                                            if (i >= 0) {
                                                z = z;
                                                i3 = i3;
                                                if (i3 >= i) {
                                                }
                                            }
                                            arrayList.add(scriptStackElement);
                                            i3++;
                                            z = z;
                                        }
                                    } else {
                                        z = true;
                                        i3 = i3;
                                    }
                                }
                                i2++;
                                i3 = i3;
                                z = z;
                            }
                        }
                    }
                }
            } else {
                String methodName = stackTraceElement.getMethodName();
                Matcher matcher = JAVA_STACK_PATTERN.matcher(methodName);
                String group = ("_c_script_0".equals(methodName) || !matcher.find()) ? null : matcher.group(1);
                if (z || !str.equals(group)) {
                    i2 = i2;
                    z = z;
                    i3 = i3;
                    if (z) {
                        if (i >= 0) {
                            i2 = i2;
                            z = z;
                            i3 = i3;
                            if (i3 >= i) {
                            }
                        }
                        arrayList.add(new ScriptStackElement(fileName, group, stackTraceElement.getLineNumber()));
                        i3++;
                        i2 = i2;
                        z = z;
                    }
                } else {
                    z = true;
                    i2 = i2;
                    i3 = i3;
                }
            }
        }
        return (ScriptStackElement[]) arrayList.toArray(new ScriptStackElement[arrayList.size()]);
    }

    public String getScriptStackTrace() {
        return getScriptStackTrace(-1, null);
    }

    public String getScriptStackTrace(int i, String str) {
        return formatStackTrace(getScriptStack(i, str), details());
    }

    @Deprecated
    public String getScriptStackTrace(FilenameFilter filenameFilter) {
        return getScriptStackTrace();
    }

    public final void initColumnNumber(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException(String.valueOf(i));
        } else if (this.columnNumber > 0) {
            throw new IllegalStateException();
        } else {
            this.columnNumber = i;
        }
    }

    public final void initLineNumber(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException(String.valueOf(i));
        } else if (this.lineNumber > 0) {
            throw new IllegalStateException();
        } else {
            this.lineNumber = i;
        }
    }

    public final void initLineSource(String str) {
        if (str == null) {
            throw new IllegalArgumentException();
        } else if (this.lineSource != null) {
            throw new IllegalStateException();
        } else {
            this.lineSource = str;
        }
    }

    public final void initSourceName(String str) {
        if (str == null) {
            throw new IllegalArgumentException();
        } else if (this.sourceName != null) {
            throw new IllegalStateException();
        } else {
            this.sourceName = str;
        }
    }

    public final int lineNumber() {
        return this.lineNumber;
    }

    public final String lineSource() {
        return this.lineSource;
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        if (this.interpreterStackInfo == null) {
            super.printStackTrace(printStream);
        } else {
            printStream.print(generateStackTrace());
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        if (this.interpreterStackInfo == null) {
            super.printStackTrace(printWriter);
        } else {
            printWriter.print(generateStackTrace());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void recordErrorOrigin(String str, int i, String str2, int i2) {
        int i3 = i;
        if (i == -1) {
            i3 = 0;
        }
        if (str != null) {
            initSourceName(str);
        }
        if (i3 != 0) {
            initLineNumber(i3);
        }
        if (str2 != null) {
            initLineSource(str2);
        }
        if (i2 != 0) {
            initColumnNumber(i2);
        }
    }

    public final String sourceName() {
        return this.sourceName;
    }
}
