package p1727n3.p1758e.p1759a.p1761e;

import p1727n3.p1758e.p1767b.AbstractC25929i0;
import p1727n3.p1758e.p1767b.AbstractC25931i1;
import p1727n3.p1758e.p1767b.p1772k1.AbstractC26068d;
import p1727n3.p1790h.p1791a.AbstractC26249d;
import p1727n3.p1790h.p1791a.C26247b;
/* renamed from: n3.e.a.e.v0 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/v0.class */
public final /* synthetic */ class C25868v0 implements AbstractC26249d {

    /* renamed from: a */
    public final /* synthetic */ C25753i2 f72358a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC25931i1 f72359b;

    public /* synthetic */ C25868v0(C25753i2 c25753i2, AbstractC25931i1 abstractC25931i1) {
        this.f72358a = c25753i2;
        this.f72359b = abstractC25931i1;
    }

    @Override // p1727n3.p1790h.p1791a.AbstractC26249d
    /* renamed from: a */
    public final Object mo2255a(final C26247b c26247b) {
        final C25753i2 c25753i2 = this.f72358a;
        final AbstractC25931i1 abstractC25931i1 = this.f72359b;
        c25753i2.f72136b.execute(new Runnable() { // from class: n3.e.a.e.u0
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC25931i1 m2751b;
                C25753i2 c25753i22 = C25753i2.this;
                C26247b<Void> c26247b2 = c26247b;
                AbstractC25931i1 abstractC25931i12 = abstractC25931i1;
                if (c25753i22.f72140f) {
                    c25753i22.m3001b(abstractC25931i12);
                    c25753i22.f72139e.mo2942e(abstractC25931i12.mo2752a(), c26247b2);
                    c25753i22.f72135a.r();
                    return;
                }
                synchronized (c25753i22.f72137c) {
                    c25753i22.f72137c.m2999b(1.0f);
                    m2751b = AbstractC26068d.m2751b(c25753i22.f72137c);
                }
                c25753i22.m3001b(m2751b);
                c26247b2.m2256c(new AbstractC25929i0.C25930a("Camera is not active."));
            }
        });
        return "setZoomRatio";
    }
}
