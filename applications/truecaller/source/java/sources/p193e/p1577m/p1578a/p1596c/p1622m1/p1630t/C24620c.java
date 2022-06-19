package p193e.p1577m.p1578a.p1596c.p1622m1.p1630t;

import java.util.Collections;
import java.util.List;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e;
import p193e.p1577m.p1578a.p1596c.p1622m1.C24562b;
/* renamed from: e.m.a.c.m1.t.c */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/t/c.class */
public final class C24620c implements AbstractC24565e {

    /* renamed from: a */
    public final List<C24562b> f68946a;

    public C24620c(List<C24562b> list) {
        this.f68946a = Collections.unmodifiableList(list);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e
    /* renamed from: a */
    public long mo4813a(int i) {
        C26232y.m2310r(i == 0);
        return 0L;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e
    /* renamed from: c */
    public int mo4812c() {
        return 1;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e
    /* renamed from: d */
    public int mo4811d(long j) {
        return j < 0 ? 0 : -1;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e
    /* renamed from: e */
    public List<C24562b> mo4810e(long j) {
        return j >= 0 ? this.f68946a : Collections.emptyList();
    }
}
