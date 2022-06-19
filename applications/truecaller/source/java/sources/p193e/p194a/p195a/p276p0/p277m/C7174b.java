package p193e.p194a.p195a.p276p0.p277m;

import com.truecaller.featuretoggles.FeatureKey;
import p193e.p194a.p1263t3.p1264c.p1265x.AbstractC20552c;
import p193e.p194a.p1272u3.AbstractC20583b;
import s1.z.c.l;
/* renamed from: e.a.a.p0.m.b */
/* loaded from: classes10-dex2jar.jar:e/a/a/p0/m/b.class */
public final class C7174b implements AbstractC20552c {

    /* renamed from: a */
    public final FeatureKey f23066a = FeatureKey.SMS_CATEGORIZER;

    /* renamed from: b */
    public final C7172a f23067b;

    public C7174b(C7172a c7172a) {
        l.e(c7172a, "categorizerFlagObserver");
        this.f23067b = c7172a;
    }

    @Override // p193e.p194a.p1263t3.p1264c.p1265x.AbstractC20552c
    /* renamed from: a */
    public void mo11038a(AbstractC20583b abstractC20583b) {
        l.e(abstractC20583b, "feature");
        this.f23067b.m30025a(abstractC20583b.isEnabled());
    }

    /* renamed from: b */
    public FeatureKey m30021b() {
        return this.f23066a;
    }
}
