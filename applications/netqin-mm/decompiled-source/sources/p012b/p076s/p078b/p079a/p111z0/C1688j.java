package p012b.p076s.p078b.p079a.p111z0;

import java.util.Arrays;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* renamed from: b.s.b.a.z0.j */
/* loaded from: classes-dex2jar.jar:b/s/b/a/z0/j.class */
public final class C1688j implements AbstractC1678b {

    /* renamed from: a */
    public final boolean f6891a;

    /* renamed from: b */
    public final int f6892b;

    /* renamed from: c */
    public final byte[] f6893c;

    /* renamed from: d */
    public final C1677a[] f6894d;

    /* renamed from: e */
    public int f6895e;

    /* renamed from: f */
    public int f6896f;

    /* renamed from: g */
    public int f6897g;

    /* renamed from: h */
    public C1677a[] f6898h;

    public C1688j(boolean z, int i) {
        this(z, i, 0);
    }

    public C1688j(boolean z, int i, int i2) {
        C1160a.m34520a(i > 0);
        C1160a.m34520a(i2 >= 0);
        this.f6891a = z;
        this.f6892b = i;
        this.f6897g = i2;
        this.f6898h = new C1677a[i2 + 100];
        if (i2 > 0) {
            this.f6893c = new byte[i2 * i];
            for (int i3 = 0; i3 < i2; i3++) {
                this.f6898h[i3] = new C1677a(this.f6893c, i3 * i);
            }
        } else {
            this.f6893c = null;
        }
        this.f6894d = new C1677a[1];
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1678b
    /* renamed from: a */
    public C1677a mo32381a() {
        C1677a aVar;
        synchronized (this) {
            this.f6896f++;
            if (this.f6897g > 0) {
                C1677a[] aVarArr = this.f6898h;
                int i = this.f6897g - 1;
                this.f6897g = i;
                aVar = aVarArr[i];
                this.f6898h[i] = null;
            } else {
                aVar = new C1677a(new byte[this.f6892b], 0);
            }
        }
        return aVar;
    }

    /* renamed from: a */
    public void m32380a(int i) {
        synchronized (this) {
            boolean z = i < this.f6895e;
            this.f6895e = i;
            if (z) {
                mo32377b();
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1678b
    /* renamed from: a */
    public void mo32379a(C1677a aVar) {
        synchronized (this) {
            this.f6894d[0] = aVar;
            mo32378a(this.f6894d);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1678b
    /* renamed from: a */
    public void mo32378a(C1677a[] aVarArr) {
        synchronized (this) {
            if (this.f6897g + aVarArr.length >= this.f6898h.length) {
                this.f6898h = (C1677a[]) Arrays.copyOf(this.f6898h, Math.max(this.f6898h.length * 2, this.f6897g + aVarArr.length));
            }
            for (C1677a aVar : aVarArr) {
                C1677a[] aVarArr2 = this.f6898h;
                int i = this.f6897g;
                this.f6897g = i + 1;
                aVarArr2[i] = aVar;
            }
            this.f6896f -= aVarArr.length;
            notifyAll();
        }
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1678b
    /* renamed from: b */
    public void mo32377b() {
        synchronized (this) {
            int i = 0;
            int max = Math.max(0, C1167d0.m34494a(this.f6895e, this.f6892b) - this.f6896f);
            if (max < this.f6897g) {
                int i2 = max;
                if (this.f6893c != null) {
                    int i3 = this.f6897g - 1;
                    while (i <= i3) {
                        C1677a aVar = this.f6898h[i];
                        if (aVar.f6867a == this.f6893c) {
                            i++;
                        } else {
                            C1677a aVar2 = this.f6898h[i3];
                            if (aVar2.f6867a != this.f6893c) {
                                i3--;
                            } else {
                                this.f6898h[i] = aVar2;
                                this.f6898h[i3] = aVar;
                                i3--;
                                i++;
                            }
                        }
                    }
                    int max2 = Math.max(max, i);
                    i2 = max2;
                    if (max2 >= this.f6897g) {
                        return;
                    }
                }
                Arrays.fill(this.f6898h, i2, this.f6897g, (Object) null);
                this.f6897g = i2;
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1678b
    /* renamed from: c */
    public int mo32376c() {
        return this.f6892b;
    }

    /* renamed from: d */
    public int m32375d() {
        int i;
        int i2;
        synchronized (this) {
            i = this.f6896f;
            i2 = this.f6892b;
        }
        return i * i2;
    }

    /* renamed from: e */
    public void m32374e() {
        synchronized (this) {
            if (this.f6891a) {
                m32380a(0);
            }
        }
    }
}
