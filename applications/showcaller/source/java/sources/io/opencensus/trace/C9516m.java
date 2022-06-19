package io.opencensus.trace;

import java.util.Arrays;
/* renamed from: io.opencensus.trace.m */
/* loaded from: classes2-dex2jar.jar:io/opencensus/trace/m.class */
public final class C9516m {

    /* renamed from: a */
    private static final AbstractC9532s f40451a;

    /* renamed from: b */
    public static final C9516m f40452b;

    /* renamed from: c */
    private final C9521p f40453c;

    /* renamed from: d */
    private final C9517n f40454d;

    /* renamed from: e */
    private final C9526q f40455e;

    /* renamed from: f */
    private final AbstractC9532s f40456f;

    static {
        AbstractC9532s m394b = AbstractC9532s.m398b().m394b();
        f40451a = m394b;
        f40452b = new C9516m(C9521p.f40460d, C9517n.f40457d, C9526q.f40464a, m394b);
    }

    private C9516m(C9521p c9521p, C9517n c9517n, C9526q c9526q, AbstractC9532s abstractC9532s) {
        this.f40453c = c9521p;
        this.f40454d = c9517n;
        this.f40455e = c9526q;
        this.f40456f = abstractC9532s;
    }

    /* renamed from: a */
    public C9517n m424a() {
        return this.f40454d;
    }

    /* renamed from: b */
    public C9521p m423b() {
        return this.f40453c;
    }

    /* renamed from: c */
    public C9526q m422c() {
        return this.f40455e;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C9516m)) {
            return false;
        }
        C9516m c9516m = (C9516m) obj;
        if (!this.f40453c.equals(c9516m.f40453c) || !this.f40454d.equals(c9516m.f40454d) || !this.f40455e.equals(c9516m.f40455e)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f40453c, this.f40454d, this.f40455e});
    }

    public String toString() {
        return "SpanContext{traceId=" + this.f40453c + ", spanId=" + this.f40454d + ", traceOptions=" + this.f40455e + "}";
    }
}
