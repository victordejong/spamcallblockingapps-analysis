package com.p317hp.hpl.sparta.xpath;

import java.io.IOException;
/* renamed from: com.hp.hpl.sparta.xpath.XPathException */
/* loaded from: classes2-dex2jar.jar:com/hp/hpl/sparta/xpath/XPathException.class */
public class XPathException extends Exception {
    private Throwable cause_;

    XPathException(C9341b c9341b, Exception exc) {
        super(c9341b + " " + exc);
        this.cause_ = null;
        this.cause_ = exc;
    }

    public XPathException(C9341b c9341b, String str) {
        super(c9341b + " " + str);
        this.cause_ = null;
    }

    XPathException(C9341b c9341b, String str, C9340a c9340a, String str2) {
        this(c9341b, str + " got \"" + m1037a(c9340a) + "\" instead of expected " + str2);
    }

    /* renamed from: a */
    private static String m1037a(C9340a c9340a) {
        try {
            new StringBuffer().append(m1036b(c9340a));
            throw null;
        } catch (IOException e) {
            return "(cannot get  info: " + e + ")";
        }
    }

    /* renamed from: b */
    private static String m1036b(C9340a c9340a) {
        throw null;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause_;
    }
}
