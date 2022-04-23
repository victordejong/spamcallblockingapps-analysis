package p012b.p076s.p078b.p079a.p111z0;

import java.util.ArrayList;
import java.util.Map;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* renamed from: b.s.b.a.z0.d */
/* loaded from: classes-dex2jar.jar:b/s/b/a/z0/d.class */
public abstract class AbstractC1681d implements AbstractC1684g {

    /* renamed from: a */
    public final boolean f6869a;

    /* renamed from: b */
    public final ArrayList<AbstractC1704x> f6870b = new ArrayList<>(1);

    /* renamed from: c */
    public int f6871c;

    /* renamed from: d */
    public C1687i f6872d;

    public AbstractC1681d(boolean z) {
        this.f6869a = z;
    }

    /* renamed from: a */
    public final void m32393a() {
        C1687i iVar = this.f6872d;
        C1167d0.m34479a(iVar);
        C1687i iVar2 = iVar;
        for (int i = 0; i < this.f6871c; i++) {
            this.f6870b.get(i).mo32318c(this, iVar2, this.f6869a);
        }
        this.f6872d = null;
    }

    /* renamed from: a */
    public final void m32392a(int i) {
        C1687i iVar = this.f6872d;
        C1167d0.m34479a(iVar);
        C1687i iVar2 = iVar;
        for (int i2 = 0; i2 < this.f6871c; i2++) {
            this.f6870b.get(i2).mo32320a(this, iVar2, this.f6869a, i);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: a */
    public final void mo32326a(AbstractC1704x xVar) {
        if (!this.f6870b.contains(xVar)) {
            this.f6870b.add(xVar);
            this.f6871c++;
        }
    }

    /* renamed from: b */
    public final void m32391b(C1687i iVar) {
        for (int i = 0; i < this.f6871c; i++) {
            this.f6870b.get(i).mo32319b(this, iVar, this.f6869a);
        }
    }

    /* renamed from: c */
    public final void m32390c(C1687i iVar) {
        this.f6872d = iVar;
        for (int i = 0; i < this.f6871c; i++) {
            this.f6870b.get(i).mo32321a(this, iVar, this.f6869a);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: p */
    public Map mo32322p() {
        return AbstractC1683f.m32389a(this);
    }
}
