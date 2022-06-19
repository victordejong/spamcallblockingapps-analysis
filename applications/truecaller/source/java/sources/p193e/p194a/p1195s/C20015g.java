package p193e.p194a.p1195s;

import com.truecaller.dynamicfeaturesupport.DynamicFeature;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1188r3.AbstractC19909g;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import s1.z.c.l;
/* renamed from: e.a.s.g */
/* loaded from: classes6-dex2jar.jar:e/a/s/g.class */
public final class C20015g extends AbstractC20576b<AbstractC20014f> implements Object {

    /* renamed from: b */
    public int f56543b;

    /* renamed from: c */
    public final AbstractC17197v0 f56544c;

    /* renamed from: d */
    public final AbstractC19909g f56545d;

    @Inject
    public C20015g(AbstractC17197v0 abstractC17197v0, AbstractC19909g abstractC19909g) {
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC19909g, "dynamicFeatureManager");
        this.f56544c = abstractC17197v0;
        this.f56545d = abstractC19909g;
    }

    /* renamed from: Hj */
    public final void m11662Hj() {
        if (!this.f56544c.mo16397h3() || !this.f56545d.mo11821b(DynamicFeature.CALLHERO_ASSISTANT)) {
            if (this.f56543b == 1) {
                return;
            }
            AbstractC20014f abstractC20014f = (AbstractC20014f) this.f57683a;
            if (abstractC20014f != null) {
                abstractC20014f.mo11664p2();
            }
            this.f56543b = 1;
        } else if (this.f56543b == 2) {
        } else {
            AbstractC20014f abstractC20014f2 = (AbstractC20014f) this.f57683a;
            if (abstractC20014f2 != null) {
                abstractC20014f2.mo11663pv();
            }
            this.f56543b = 2;
        }
    }
}
