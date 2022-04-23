package org.apache.commons.lang3.exception;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/exception/ContextedRuntimeException.class */
public class ContextedRuntimeException extends RuntimeException implements b {

    /* renamed from: a  reason: collision with root package name */
    private final b f39178a;

    public ContextedRuntimeException() {
        this.f39178a = new a();
    }

    public ContextedRuntimeException(String str) {
        super(str);
        this.f39178a = new a();
    }

    public ContextedRuntimeException(String str, Throwable th) {
        super(str, th);
        this.f39178a = new a();
    }

    public ContextedRuntimeException(String str, Throwable th, b bVar) {
        super(str, th);
        this.f39178a = bVar == null ? new a() : bVar;
    }

    public ContextedRuntimeException(Throwable th) {
        super(th);
        this.f39178a = new a();
    }

    @Override // org.apache.commons.lang3.exception.b
    public final String a(String str) {
        return this.f39178a.a(str);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return a(super.getMessage());
    }
}
