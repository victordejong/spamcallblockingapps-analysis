package p193e.p1577m.p1578a.p1596c.p1622m1.p1629s;

import java.util.Collections;
import java.util.List;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24565e;
import p193e.p1577m.p1578a.p1596c.p1622m1.C24562b;
/* renamed from: e.m.a.c.m1.s.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/m1/s/b.class */
public final class C24617b implements AbstractC24565e {

    /* renamed from: b */
    public static final C24617b f68939b = new C24617b();

    /* renamed from: a */
    public final List<C24562b> f68940a;

    public C24617b() {
        this.f68940a = Collections.emptyList();
    }

    public C24617b(C24562b c24562b) {
        this.f68940a = Collections.singletonList(c24562b);
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
        return j >= 0 ? this.f68940a : Collections.emptyList();
    }
}
