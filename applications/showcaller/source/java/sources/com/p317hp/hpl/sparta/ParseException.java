package com.p317hp.hpl.sparta;
/* renamed from: com.hp.hpl.sparta.ParseException */
/* loaded from: classes2-dex2jar.jar:com/hp/hpl/sparta/ParseException.class */
public class ParseException extends Exception {
    private Throwable cause_;
    private int lineNumber_;

    public ParseException(C9338a c9338a, char c, char c2) {
        this(c9338a, "got '" + c + "' instead of expected '" + c2 + "'");
    }

    public ParseException(C9338a c9338a, char c, String str) {
        this(c9338a, "got '" + c + "' instead of " + str + " as expected");
    }

    public ParseException(C9338a c9338a, char c, char[] cArr) {
        this(c9338a, "got '" + c + "' instead of " + m1039b(cArr));
    }

    public ParseException(C9338a c9338a, String str) {
        throw null;
    }

    public ParseException(C9338a c9338a, String str, String str2) {
        this(c9338a, "got \"" + str + "\" instead of \"" + str2 + "\" as expected");
    }

    public ParseException(C9338a c9338a, String str, char[] cArr) {
        this(c9338a, str, new String(cArr));
    }

    public ParseException(AbstractC9339b abstractC9339b, String str, int i, int i2, String str2, String str3) {
        this(str, i, i2, str2, str3);
        abstractC9339b.m1038a(str3, str, i);
    }

    public ParseException(String str) {
        super(str);
        this.lineNumber_ = -1;
        this.cause_ = null;
    }

    public ParseException(String str, int i, int i2, String str2, String str3) {
        super(m1040a(str, i, i2, str2, str3));
        this.lineNumber_ = -1;
        this.cause_ = null;
        this.lineNumber_ = i;
    }

    public ParseException(String str, Throwable th) {
        super(str + " " + th);
        this.lineNumber_ = -1;
        this.cause_ = null;
        this.cause_ = th;
    }

    /* renamed from: a */
    private static String m1040a(String str, int i, int i2, String str2, String str3) {
        return str + "(" + i + "): \n" + str2 + "\nLast character read was '" + charRepr(i2) + "'\n" + str3;
    }

    /* renamed from: b */
    private static String m1039b(char[] cArr) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(cArr[0]);
        for (int i = 1; i < cArr.length; i++) {
            stringBuffer.append("or " + cArr[i]);
        }
        return stringBuffer.toString();
    }

    static String charRepr(int i) {
        String str;
        if (i == -1) {
            str = "EOF";
        } else {
            str = "" + ((char) i);
        }
        return str;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause_;
    }

    public int getLineNumber() {
        return this.lineNumber_;
    }
}
