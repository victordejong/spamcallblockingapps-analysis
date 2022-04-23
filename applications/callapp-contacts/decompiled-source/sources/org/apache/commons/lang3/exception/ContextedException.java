package org.apache.commons.lang3.exception;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/exception/ContextedException.class */
public class ContextedException extends Exception implements b {

    /* renamed from: a  reason: collision with root package name */
    private final b f39177a;

    public ContextedException() {
        this.f39177a = new a();
    }

    public ContextedException(String str) {
        super(str);
        this.f39177a = new a();
    }

    public ContextedException(String str, Throwable th) {
        super(str, th);
        this.f39177a = new a();
    }

    public ContextedException(String str, Throwable th, b bVar) {
        super(str, th);
        this.f39177a = bVar == null ? new a() : bVar;
    }

    public ContextedException(Throwable th) {
        super(th);
        this.f39177a = new a();
    }

    @Override // org.apache.commons.lang3.exception.b
    public final String a(String str) {
        return this.f39177a.a(str);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return a(super.getMessage());
    }
}
