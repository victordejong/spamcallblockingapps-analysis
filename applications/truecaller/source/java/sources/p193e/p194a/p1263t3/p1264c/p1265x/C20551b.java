package p193e.p194a.p1263t3.p1264c.p1265x;

import com.truecaller.featuretoggles.FeatureKey;
import o3.a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1272u3.AbstractC20583b;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import s1.z.c.l;
/* renamed from: e.a.t3.c.x.b */
/* loaded from: classes9-dex2jar.jar:e/a/t3/c/x/b.class */
public final class C20551b implements AbstractC20552c {

    /* renamed from: a */
    public final a<AbstractC19854f<AbstractC6233m>> f57641a;

    public C20551b(a<AbstractC19854f<AbstractC6233m>> aVar) {
        l.e(aVar, "messagesStorage");
        this.f57641a = aVar;
    }

    @Override // p193e.p194a.p1263t3.p1264c.p1265x.AbstractC20552c
    /* renamed from: a */
    public void mo11038a(AbstractC20583b abstractC20583b) {
        l.e(abstractC20583b, "feature");
        if (!abstractC20583b.isEnabled()) {
            ((AbstractC6233m) ((AbstractC19854f) this.f57641a.get()).mo11854a()).mo31678G();
        }
    }

    /* renamed from: b */
    public FeatureKey m11039b() {
        return FeatureKey.PROMOTIONAL_MESSAGE_CATEGORY;
    }
}
