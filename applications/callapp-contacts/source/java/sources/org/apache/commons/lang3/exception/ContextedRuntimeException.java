package org.apache.commons.lang3.exception;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/exception/ContextedRuntimeException.class */
public class ContextedRuntimeException extends RuntimeException implements AbstractC20760b {

    /* renamed from: a */
    private final AbstractC20760b f67256a;

    public ContextedRuntimeException() {
        this.f67256a = new C20759a();
    }

    public ContextedRuntimeException(String str) {
        super(str);
        this.f67256a = new C20759a();
    }

    public ContextedRuntimeException(String str, Throwable th) {
        super(str, th);
        this.f67256a = new C20759a();
    }

    public ContextedRuntimeException(String str, Throwable th, AbstractC20760b abstractC20760b) {
        super(str, th);
        this.f67256a = abstractC20760b == null ? new C20759a() : abstractC20760b;
    }

    public ContextedRuntimeException(Throwable th) {
        super(th);
        this.f67256a = new C20759a();
    }

    @Override // org.apache.commons.lang3.exception.AbstractC20760b
    /* renamed from: a */
    public final String mo520a(String str) {
        return this.f67256a.mo520a(str);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return mo520a(super.getMessage());
    }
}
