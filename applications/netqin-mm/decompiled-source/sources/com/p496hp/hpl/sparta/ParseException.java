package com.p496hp.hpl.sparta;

import p131c.p368e.p369a.p370a.AbstractC6395b;
import p131c.p368e.p369a.p370a.C6394a;
/* renamed from: com.hp.hpl.sparta.ParseException */
/* loaded from: classes2-dex2jar.jar:com/hp/hpl/sparta/ParseException.class */
public class ParseException extends Exception {
    public Throwable cause_;
    public int lineNumber_;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ParseException(p131c.p368e.p369a.p370a.C6394a r5, char r6, char r7) {
        /*
            r4 = this;
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "got '"
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r8
            r1 = r6
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = "' instead of expected '"
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r8
            r1 = r7
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = "'"
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r4
            r1 = r5
            r2 = r8
            java.lang.String r2 = r2.toString()
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p496hp.hpl.sparta.ParseException.<init>(c.e.a.a.a, char, char):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ParseException(p131c.p368e.p369a.p370a.C6394a r5, char r6, java.lang.String r7) {
        /*
            r4 = this;
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "got '"
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r8
            r1 = r6
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = "' instead of "
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r8
            r1 = r7
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = " as expected"
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r4
            r1 = r5
            r2 = r8
            java.lang.String r2 = r2.toString()
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p496hp.hpl.sparta.ParseException.<init>(c.e.a.a.a, char, java.lang.String):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ParseException(p131c.p368e.p369a.p370a.C6394a r5, char r6, char[] r7) {
        /*
            r4 = this;
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "got '"
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r8
            r1 = r6
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = "' instead of "
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r8
            r1 = r7
            java.lang.String r1 = toString(r1)
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r4
            r1 = r5
            r2 = r8
            java.lang.String r2 = r2.toString()
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p496hp.hpl.sparta.ParseException.<init>(c.e.a.a.a, char, char[]):void");
    }

    public ParseException(C6394a aVar, String str) {
        aVar.m20992a();
        throw null;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ParseException(p131c.p368e.p369a.p370a.C6394a r5, java.lang.String r6, java.lang.String r7) {
        /*
            r4 = this;
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "got \""
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r8
            r1 = r6
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = "\" instead of \""
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r8
            r1 = r7
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = "\" as expected"
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r4
            r1 = r5
            r2 = r8
            java.lang.String r2 = r2.toString()
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p496hp.hpl.sparta.ParseException.<init>(c.e.a.a.a, java.lang.String, java.lang.String):void");
    }

    public ParseException(C6394a aVar, String str, char[] cArr) {
        this(aVar, str, new String(cArr));
    }

    public ParseException(AbstractC6395b bVar, String str, int i, int i2, String str2, String str3) {
        this(str, i, i2, str2, str3);
        bVar.m20987a(str3, str, i);
    }

    public ParseException(String str) {
        super(str);
        this.lineNumber_ = -1;
        this.cause_ = null;
    }

    public ParseException(String str, int i, int i2, String str2, String str3) {
        super(toMessage(str, i, i2, str2, str3));
        this.lineNumber_ = -1;
        this.cause_ = null;
        this.lineNumber_ = i;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ParseException(java.lang.String r4, java.lang.Throwable r5) {
        /*
            r3 = this;
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            r1 = r4
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = " "
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r6
            r1 = r5
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r3
            r1 = r6
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            r0 = r3
            r1 = -1
            r0.lineNumber_ = r1
            r0 = r3
            r1 = 0
            r0.cause_ = r1
            r0 = r3
            r1 = r5
            r0.cause_ = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p496hp.hpl.sparta.ParseException.<init>(java.lang.String, java.lang.Throwable):void");
    }

    public static String charRepr(int i) {
        String str;
        if (i == -1) {
            str = "EOF";
        } else {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("");
            stringBuffer.append((char) i);
            str = stringBuffer.toString();
        }
        return str;
    }

    public static String toMessage(String str, int i, int i2, String str2, String str3) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append("(");
        stringBuffer.append(i);
        stringBuffer.append("): \n");
        stringBuffer.append(str2);
        stringBuffer.append("\nLast character read was '");
        stringBuffer.append(charRepr(i2));
        stringBuffer.append("'\n");
        stringBuffer.append(str3);
        return stringBuffer.toString();
    }

    public static String toString(char[] cArr) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(cArr[0]);
        for (int i = 1; i < cArr.length; i++) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("or ");
            stringBuffer2.append(cArr[i]);
            stringBuffer.append(stringBuffer2.toString());
        }
        return stringBuffer.toString();
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause_;
    }

    public int getLineNumber() {
        return this.lineNumber_;
    }
}
