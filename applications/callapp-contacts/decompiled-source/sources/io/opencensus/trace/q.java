package io.opencensus.trace;

import java.util.Arrays;
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/q.class */
public final class q {

    /* renamed from: b  reason: collision with root package name */
    public static final q f36324b;

    /* renamed from: c  reason: collision with root package name */
    private static final x f36325c;

    /* renamed from: a  reason: collision with root package name */
    final v f36326a;

    /* renamed from: d  reason: collision with root package name */
    private final u f36327d;
    private final r e;
    private final x f;

    static {
        x a2 = x.b().a();
        f36325c = a2;
        f36324b = new q(u.f36335a, r.f36328a, v.f36338a, a2);
    }

    private q(u uVar, r rVar, v vVar, x xVar) {
        this.f36327d = uVar;
        this.e = rVar;
        this.f36326a = vVar;
        this.f = xVar;
    }

    public final u a() {
        return this.f36327d;
    }

    public final r b() {
        return this.e;
    }

    public final v c() {
        return this.f36326a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        return this.f36327d.equals(qVar.f36327d) && this.e.equals(qVar.e) && this.f36326a.equals(qVar.f36326a);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f36327d, this.e, this.f36326a});
    }

    public final String toString() {
        return "SpanContext{traceId=" + this.f36327d + ", spanId=" + this.e + ", traceOptions=" + this.f36326a + "}";
    }
}
