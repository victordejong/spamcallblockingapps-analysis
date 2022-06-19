package p1727n3.p1758e.p1759a.p1761e;

import p1727n3.p1758e.p1767b.AbstractC25929i0;
import p1727n3.p1790h.p1791a.AbstractC26249d;
import p1727n3.p1790h.p1791a.C26247b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.a.e.t0 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/t0.class */
public final /* synthetic */ class C25862t0 implements AbstractC26249d {

    /* renamed from: a */
    public final /* synthetic */ C25748h2 f72341a;

    /* renamed from: b */
    public final /* synthetic */ boolean f72342b;

    public /* synthetic */ C25862t0(C25748h2 c25748h2, boolean z) {
        this.f72341a = c25748h2;
        this.f72342b = z;
    }

    @Override // p1727n3.p1790h.p1791a.AbstractC26249d
    /* renamed from: a */
    public final Object mo2255a(final C26247b c26247b) {
        final C25748h2 c25748h2 = this.f72341a;
        final boolean z = this.f72342b;
        c25748h2.f72125d.execute(new Runnable() { // from class: n3.e.a.e.s0
            @Override // java.lang.Runnable
            public final void run() {
                C25748h2 c25748h22 = C25748h2.this;
                C26247b<Void> c26247b2 = c26247b;
                boolean z2 = z;
                if (!c25748h22.f72126e) {
                    c25748h22.m3003a(c25748h22.f72123b, 0);
                    c26247b2.m2256c(new AbstractC25929i0.C25930a("Camera is not active."));
                    return;
                }
                c25748h22.f72128g = z2;
                c25748h22.f72122a.j(z2);
                c25748h22.m3003a(c25748h22.f72123b, Integer.valueOf(z2 ? 1 : 0));
                C26247b<Void> c26247b3 = c25748h22.f72127f;
                if (c26247b3 != null) {
                    C22128a.m8715F0("There is a new enableTorch being set", c26247b3);
                }
                c25748h22.f72127f = c26247b2;
            }
        });
        return "enableTorch: " + z;
    }
}
