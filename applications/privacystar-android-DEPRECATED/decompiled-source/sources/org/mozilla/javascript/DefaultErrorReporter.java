package org.mozilla.javascript;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/DefaultErrorReporter.class */
public class DefaultErrorReporter implements ErrorReporter {
    static final DefaultErrorReporter instance = new DefaultErrorReporter();
    private ErrorReporter chainedReporter;
    private boolean forEval;

    private DefaultErrorReporter() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ErrorReporter forEval(ErrorReporter errorReporter) {
        DefaultErrorReporter defaultErrorReporter = new DefaultErrorReporter();
        defaultErrorReporter.forEval = true;
        defaultErrorReporter.chainedReporter = errorReporter;
        return defaultErrorReporter;
    }

    @Override // org.mozilla.javascript.ErrorReporter
    public void error(String str, String str2, int i, String str3, int i2) {
        if (this.forEval) {
            String str4 = "SyntaxError";
            String str5 = str;
            if (str.startsWith("TypeError: ")) {
                str4 = "TypeError";
                str5 = str.substring("TypeError: ".length());
            }
            throw ScriptRuntime.constructError(str4, str5, str2, i, str3, i2);
        } else if (this.chainedReporter != null) {
            this.chainedReporter.error(str, str2, i, str3, i2);
        } else {
            throw runtimeError(str, str2, i, str3, i2);
        }
    }

    @Override // org.mozilla.javascript.ErrorReporter
    public EvaluatorException runtimeError(String str, String str2, int i, String str3, int i2) {
        return this.chainedReporter != null ? this.chainedReporter.runtimeError(str, str2, i, str3, i2) : new EvaluatorException(str, str2, i, str3, i2);
    }

    @Override // org.mozilla.javascript.ErrorReporter
    public void warning(String str, String str2, int i, String str3, int i2) {
        if (this.chainedReporter != null) {
            this.chainedReporter.warning(str, str2, i, str3, i2);
        }
    }
}
