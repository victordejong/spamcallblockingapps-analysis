package p193e.p194a.p1263t3.p1264c.p1265x;

import com.truecaller.featuretoggles.FeatureKey;
import java.util.Map;
import p193e.p194a.p1272u3.AbstractC20583b;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.t3.c.x.d */
/* loaded from: classes9-dex2jar.jar:e/a/t3/c/x/d.class */
public final class C20553d implements AbstractC20554e {

    /* renamed from: a */
    public final Map<FeatureKey, AbstractC20552c> f57642a;

    public C20553d(Map map, f fVar) {
        this.f57642a = map;
    }

    @Override // p193e.p194a.p1263t3.p1264c.p1265x.AbstractC20554e
    /* renamed from: a */
    public void mo11037a(AbstractC20583b abstractC20583b) {
        l.e(abstractC20583b, "feature");
        AbstractC20552c abstractC20552c = this.f57642a.get(abstractC20583b.getKey());
        if (abstractC20552c != null) {
            abstractC20552c.mo11038a(abstractC20583b);
        }
    }
}
