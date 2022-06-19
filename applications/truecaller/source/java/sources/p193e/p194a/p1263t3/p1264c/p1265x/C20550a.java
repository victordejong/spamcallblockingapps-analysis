package p193e.p194a.p1263t3.p1264c.p1265x;

import com.truecaller.featuretoggles.FeatureKey;
import o3.a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1272u3.AbstractC20583b;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.z.c.l;
/* renamed from: e.a.t3.c.x.a */
/* loaded from: classes9-dex2jar.jar:e/a/t3/c/x/a.class */
public final class C20550a implements AbstractC20552c {

    /* renamed from: a */
    public final FeatureKey f57638a = FeatureKey.NORMALIZE_SHORT_CODES;

    /* renamed from: b */
    public final a<AbstractC19854f<AbstractC6233m>> f57639b;

    /* renamed from: c */
    public final AbstractC8541a f57640c;

    public C20550a(a<AbstractC19854f<AbstractC6233m>> aVar, AbstractC8541a abstractC8541a) {
        l.e(aVar, "messagesStorage");
        l.e(abstractC8541a, "coreSettings");
        this.f57639b = aVar;
        this.f57640c = abstractC8541a;
    }

    @Override // p193e.p194a.p1263t3.p1264c.p1265x.AbstractC20552c
    /* renamed from: a */
    public void mo11038a(AbstractC20583b abstractC20583b) {
        l.e(abstractC20583b, "feature");
        this.f57640c.putBoolean("deleteBackupDuplicates", true);
        ((AbstractC6233m) ((AbstractC19854f) this.f57639b.get()).mo11854a()).mo31698b(false);
    }

    /* renamed from: b */
    public FeatureKey m11040b() {
        return this.f57638a;
    }
}
