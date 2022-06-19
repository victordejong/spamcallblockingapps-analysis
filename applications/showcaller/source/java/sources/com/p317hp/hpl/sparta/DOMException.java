package com.p317hp.hpl.sparta;
/* renamed from: com.hp.hpl.sparta.DOMException */
/* loaded from: classes2-dex2jar.jar:com/hp/hpl/sparta/DOMException.class */
public class DOMException extends Exception {
    public short code;

    public DOMException(short s, String str) {
        super(str);
        this.code = s;
    }
}
