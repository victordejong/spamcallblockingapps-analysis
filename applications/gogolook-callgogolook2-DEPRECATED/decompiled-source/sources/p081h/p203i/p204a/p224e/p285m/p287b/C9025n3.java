package p081h.p203i.p204a.p224e.p285m.p287b;

import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p249s.AbstractC7074f;
/* renamed from: h.i.a.e.m.b.n3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/n3.class */
public final class C9025n3 {

    /* renamed from: a */
    public final AbstractC7074f f20509a;

    /* renamed from: b */
    public long f20510b;

    public C9025n3(AbstractC7074f fVar) {
        C7021t.m21290a(fVar);
        this.f20509a = fVar;
    }

    /* renamed from: a */
    public final void m16450a() {
        this.f20510b = 0L;
    }

    /* renamed from: a */
    public final boolean m16449a(long j) {
        return this.f20510b == 0 || this.f20509a.elapsedRealtime() - this.f20510b >= 3600000;
    }

    /* renamed from: b */
    public final void m16448b() {
        this.f20510b = this.f20509a.elapsedRealtime();
    }
}
