package io.grpc;

import p530d.p531a.C9260k0;
/* loaded from: classes2-dex2jar.jar:io/grpc/StatusRuntimeException.class */
public class StatusRuntimeException extends RuntimeException {
    public static final long serialVersionUID = 1950934672280720624L;
    public final boolean fillInStackTrace;
    public final Status status;
    public final C9260k0 trailers;

    public StatusRuntimeException(Status status) {
        this(status, null);
    }

    public StatusRuntimeException(Status status, C9260k0 k0Var) {
        this(status, k0Var, true);
    }

    public StatusRuntimeException(Status status, C9260k0 k0Var, boolean z) {
        super(Status.m614a(status), status.m606c());
        this.status = status;
        this.trailers = k0Var;
        this.fillInStackTrace = z;
        fillInStackTrace();
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        Throwable fillInStackTrace;
        synchronized (this) {
            fillInStackTrace = this.fillInStackTrace ? super.fillInStackTrace() : this;
        }
        return fillInStackTrace;
    }

    public final Status getStatus() {
        return this.status;
    }

    public final C9260k0 getTrailers() {
        return this.trailers;
    }
}
