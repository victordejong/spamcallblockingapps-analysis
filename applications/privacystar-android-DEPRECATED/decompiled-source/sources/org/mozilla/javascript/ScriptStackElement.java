package org.mozilla.javascript;

import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ScriptStackElement.class */
public final class ScriptStackElement implements Serializable {
    static final long serialVersionUID = -6416688260860477449L;
    public final String fileName;
    public final String functionName;
    public final int lineNumber;

    public ScriptStackElement(String str, String str2, int i) {
        this.fileName = str;
        this.functionName = str2;
        this.lineNumber = i;
    }

    private void appendV8Location(StringBuilder sb) {
        sb.append(this.fileName);
        if (this.lineNumber > -1) {
            sb.append(':');
            sb.append(this.lineNumber);
        }
    }

    public void renderJavaStyle(StringBuilder sb) {
        sb.append("\tat ");
        sb.append(this.fileName);
        if (this.lineNumber > -1) {
            sb.append(':');
            sb.append(this.lineNumber);
        }
        if (this.functionName != null) {
            sb.append(" (");
            sb.append(this.functionName);
            sb.append(')');
        }
    }

    public void renderMozillaStyle(StringBuilder sb) {
        if (this.functionName != null) {
            sb.append(this.functionName);
            sb.append("()");
        }
        sb.append('@');
        sb.append(this.fileName);
        if (this.lineNumber > -1) {
            sb.append(':');
            sb.append(this.lineNumber);
        }
    }

    public void renderV8Style(StringBuilder sb) {
        sb.append("    at ");
        if (this.functionName == null || "anonymous".equals(this.functionName) || "undefined".equals(this.functionName)) {
            appendV8Location(sb);
            return;
        }
        sb.append(this.functionName);
        sb.append(" (");
        appendV8Location(sb);
        sb.append(')');
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        renderMozillaStyle(sb);
        return sb.toString();
    }
}
