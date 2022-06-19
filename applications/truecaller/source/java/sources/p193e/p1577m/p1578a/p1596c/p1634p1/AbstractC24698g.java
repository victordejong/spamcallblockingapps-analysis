package p193e.p1577m.p1578a.p1596c.p1634p1;

import java.util.ArrayList;
import java.util.Map;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.p1.g */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/g.class */
public abstract class AbstractC24698g implements AbstractC24739l {

    /* renamed from: a */
    public final boolean f69196a;

    /* renamed from: b */
    public final ArrayList<AbstractC24697f0> f69197b = new ArrayList<>(1);

    /* renamed from: c */
    public int f69198c;

    /* renamed from: d */
    public C24742n f69199d;

    public AbstractC24698g(boolean z) {
        this.f69196a = z;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    /* renamed from: a */
    public /* synthetic */ Map mo4667a() {
        return C24738k.m4688a(this);
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    /* renamed from: c */
    public final void mo4669c(AbstractC24697f0 abstractC24697f0) {
        if (!this.f69197b.contains(abstractC24697f0)) {
            this.f69197b.add(abstractC24697f0);
            this.f69198c++;
        }
    }

    /* renamed from: d */
    public final void m4768d(int i) {
        C24742n c24742n = this.f69199d;
        int i2 = C24773d0.f69427a;
        for (int i3 = 0; i3 < this.f69198c; i3++) {
            this.f69197b.get(i3).mo4679c(this, c24742n, this.f69196a, i);
        }
    }

    /* renamed from: e */
    public final void m4767e() {
        C24742n c24742n = this.f69199d;
        int i = C24773d0.f69427a;
        for (int i2 = 0; i2 < this.f69198c; i2++) {
            this.f69197b.get(i2).mo4680b(this, c24742n, this.f69196a);
        }
        this.f69199d = null;
    }

    /* renamed from: f */
    public final void m4766f(C24742n c24742n) {
        for (int i = 0; i < this.f69198c; i++) {
            this.f69197b.get(i).mo4675g(this, c24742n, this.f69196a);
        }
    }

    /* renamed from: g */
    public final void m4765g(C24742n c24742n) {
        this.f69199d = c24742n;
        for (int i = 0; i < this.f69198c; i++) {
            this.f69197b.get(i).mo4677e(this, c24742n, this.f69196a);
        }
    }
}
