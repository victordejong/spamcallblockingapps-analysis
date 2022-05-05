package org.mozilla.javascript.tools;

import java.io.PrintStream;
import java.text.MessageFormat;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.EcmaError;
import org.mozilla.javascript.ErrorReporter;
import org.mozilla.javascript.EvaluatorException;
import org.mozilla.javascript.JavaScriptException;
import org.mozilla.javascript.RhinoException;
import org.mozilla.javascript.SecurityUtilities;
import org.mozilla.javascript.WrappedException;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/ToolErrorReporter.class */
public class ToolErrorReporter implements ErrorReporter {
    private static final String messagePrefix = "js: ";
    private PrintStream err;
    private boolean hasReportedErrorFlag;
    private boolean reportWarnings;

    public ToolErrorReporter(boolean z) {
        this(z, System.err);
    }

    public ToolErrorReporter(boolean z, PrintStream printStream) {
        this.reportWarnings = z;
        this.err = printStream;
    }

    private String buildIndicator(int i) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < i - 1; i2++) {
            sb.append(".");
        }
        sb.append("^");
        return sb.toString();
    }

    private static String getExceptionMessage(RhinoException rhinoException) {
        return rhinoException instanceof JavaScriptException ? getMessage("msg.uncaughtJSException", rhinoException.details()) : rhinoException instanceof EcmaError ? getMessage("msg.uncaughtEcmaError", rhinoException.details()) : rhinoException instanceof EvaluatorException ? rhinoException.details() : rhinoException.toString();
    }

    public static String getMessage(String str) {
        return getMessage(str, (Object[]) null);
    }

    public static String getMessage(String str, Object obj, Object obj2) {
        return getMessage(str, new Object[]{obj, obj2});
    }

    public static String getMessage(String str, String str2) {
        return getMessage(str, new Object[]{str2});
    }

    public static String getMessage(String str, Object[] objArr) {
        Context currentContext = Context.getCurrentContext();
        try {
            String string = ResourceBundle.getBundle("org.mozilla.javascript.tools.resources.Messages", currentContext == null ? Locale.getDefault() : currentContext.getLocale()).getString(str);
            return objArr == null ? string : new MessageFormat(string).format(objArr);
        } catch (MissingResourceException e) {
            throw new RuntimeException("no message resource found for message property " + str);
        }
    }

    private void reportErrorMessage(String str, String str2, int i, String str3, int i2, boolean z) {
        String str4;
        if (i > 0) {
            String valueOf = String.valueOf(i);
            str4 = str2 != null ? getMessage("msg.format3", new Object[]{str2, valueOf, str}) : getMessage("msg.format2", new Object[]{valueOf, str});
        } else {
            str4 = getMessage("msg.format1", new Object[]{str});
        }
        String str5 = str4;
        if (z) {
            str5 = getMessage("msg.warning", str4);
        }
        PrintStream printStream = this.err;
        printStream.println(messagePrefix + str5);
        if (str3 != null) {
            PrintStream printStream2 = this.err;
            printStream2.println(messagePrefix + str3);
            PrintStream printStream3 = this.err;
            printStream3.println(messagePrefix + buildIndicator(i2));
        }
    }

    public static void reportException(ErrorReporter errorReporter, RhinoException rhinoException) {
        if (errorReporter instanceof ToolErrorReporter) {
            ((ToolErrorReporter) errorReporter).reportException(rhinoException);
        } else {
            errorReporter.error(getExceptionMessage(rhinoException), rhinoException.sourceName(), rhinoException.lineNumber(), rhinoException.lineSource(), rhinoException.columnNumber());
        }
    }

    @Override // org.mozilla.javascript.ErrorReporter
    public void error(String str, String str2, int i, String str3, int i2) {
        this.hasReportedErrorFlag = true;
        reportErrorMessage(str, str2, i, str3, i2, false);
    }

    public boolean hasReportedError() {
        return this.hasReportedErrorFlag;
    }

    public boolean isReportingWarnings() {
        return this.reportWarnings;
    }

    public void reportException(RhinoException rhinoException) {
        if (rhinoException instanceof WrappedException) {
            ((WrappedException) rhinoException).printStackTrace(this.err);
            return;
        }
        String systemProperty = SecurityUtilities.getSystemProperty("line.separator");
        reportErrorMessage(getExceptionMessage(rhinoException) + systemProperty + rhinoException.getScriptStackTrace(), rhinoException.sourceName(), rhinoException.lineNumber(), rhinoException.lineSource(), rhinoException.columnNumber(), false);
    }

    @Override // org.mozilla.javascript.ErrorReporter
    public EvaluatorException runtimeError(String str, String str2, int i, String str3, int i2) {
        return new EvaluatorException(str, str2, i, str3, i2);
    }

    public void setIsReportingWarnings(boolean z) {
        this.reportWarnings = z;
    }

    @Override // org.mozilla.javascript.ErrorReporter
    public void warning(String str, String str2, int i, String str3, int i2) {
        if (this.reportWarnings) {
            reportErrorMessage(str, str2, i, str3, i2, true);
        }
    }
}
