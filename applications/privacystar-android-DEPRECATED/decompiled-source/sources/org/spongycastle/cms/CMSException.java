package org.spongycastle.cms;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/CMSException.class */
public class CMSException extends Exception {

    /* renamed from: e */
    Exception f1008e;

    public CMSException(String str) {
        super(str);
    }

    public CMSException(String str, Exception exc) {
        super(str);
        this.f1008e = exc;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.f1008e;
    }

    public Exception getUnderlyingException() {
        return this.f1008e;
    }
}
