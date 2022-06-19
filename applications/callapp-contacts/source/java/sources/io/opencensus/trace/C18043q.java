package io.opencensus.trace;

import java.util.Arrays;
/* renamed from: io.opencensus.trace.q */
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/q.class */
public final class C18043q {

    /* renamed from: b */
    public static final C18043q f62943b;

    /* renamed from: c */
    private static final AbstractC18057x f62944c;

    /* renamed from: a */
    final C18051v f62945a;

    /* renamed from: d */
    private final C18050u f62946d;

    /* renamed from: e */
    private final C18044r f62947e;

    /* renamed from: f */
    private final AbstractC18057x f62948f;

    static {
        AbstractC18057x m4493a = AbstractC18057x.m4494b().m4493a();
        f62944c = m4493a;
        f62943b = new C18043q(C18050u.f62973a, C18044r.f62949a, C18051v.f62976a, m4493a);
    }

    private C18043q(C18050u c18050u, C18044r c18044r, C18051v c18051v, AbstractC18057x abstractC18057x) {
        this.f62946d = c18050u;
        this.f62947e = c18044r;
        this.f62945a = c18051v;
        this.f62948f = abstractC18057x;
    }

    /* renamed from: a */
    public final C18050u m4514a() {
        return this.f62946d;
    }

    /* renamed from: b */
    public final C18044r m4513b() {
        return this.f62947e;
    }

    /* renamed from: c */
    public final C18051v m4512c() {
        return this.f62945a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C18043q)) {
            return false;
        }
        C18043q c18043q = (C18043q) obj;
        return this.f62946d.equals(c18043q.f62946d) && this.f62947e.equals(c18043q.f62947e) && this.f62945a.equals(c18043q.f62945a);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f62946d, this.f62947e, this.f62945a});
    }

    public final String toString() {
        return "SpanContext{traceId=" + this.f62946d + ", spanId=" + this.f62947e + ", traceOptions=" + this.f62945a + "}";
    }
}
