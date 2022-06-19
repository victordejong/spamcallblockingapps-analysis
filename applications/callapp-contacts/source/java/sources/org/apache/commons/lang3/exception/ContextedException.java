package org.apache.commons.lang3.exception;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/exception/ContextedException.class */
public class ContextedException extends Exception implements AbstractC20760b {

    /* renamed from: a */
    private final AbstractC20760b f67255a;

    public ContextedException() {
        this.f67255a = new C20759a();
    }

    public ContextedException(String str) {
        super(str);
        this.f67255a = new C20759a();
    }

    public ContextedException(String str, Throwable th) {
        super(str, th);
        this.f67255a = new C20759a();
    }

    public ContextedException(String str, Throwable th, AbstractC20760b abstractC20760b) {
        super(str, th);
        this.f67255a = abstractC20760b == null ? new C20759a() : abstractC20760b;
    }

    public ContextedException(Throwable th) {
        super(th);
        this.f67255a = new C20759a();
    }

    @Override // org.apache.commons.lang3.exception.AbstractC20760b
    /* renamed from: a */
    public final String mo520a(String str) {
        return this.f67255a.mo520a(str);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return mo520a(super.getMessage());
    }
}
