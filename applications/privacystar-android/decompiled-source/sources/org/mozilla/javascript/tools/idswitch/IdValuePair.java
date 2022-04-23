package org.mozilla.javascript.tools.idswitch;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/idswitch/IdValuePair.class */
public class IdValuePair {

    /* renamed from: id */
    public final String f844id;
    public final int idLength;
    private int lineNumber;
    public final String value;

    public IdValuePair(String str, String str2) {
        this.idLength = str.length();
        this.f844id = str;
        this.value = str2;
    }

    public int getLineNumber() {
        return this.lineNumber;
    }

    public void setLineNumber(int i) {
        this.lineNumber = i;
    }
}
