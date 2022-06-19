package p193e.p194a.p1114o5.p1115a2;

import java.util.Map;
import javax.inject.Inject;
import javax.inject.Provider;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p1392y2.AbstractC21770n;
import p193e.p194a.p1392y2.C21755a;
import s1.z.c.l;
/* renamed from: e.a.o5.a2.e */
/* loaded from: classes15-dex2jar.jar:e/a/o5/a2/e.class */
public final class C18941e extends AbstractC21770n {

    /* renamed from: a */
    public final Map<C21755a, Provider<AbstractC21765k>> f53089a;

    @Inject
    public C18941e(Map<C21755a, Provider<AbstractC21765k>> map) {
        l.e(map, "actions");
        this.f53089a = map;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21770n
    /* renamed from: a */
    public Map<C21755a, Provider<AbstractC21765k>> mo9099a() {
        return this.f53089a;
    }
}
