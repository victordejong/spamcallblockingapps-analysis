package p012b.p076s.p078b.p079a.p086s0.p091v;

import java.io.IOException;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
/* renamed from: b.s.b.a.s0.v.n */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/v/n.class */
public final class C1419n {

    /* renamed from: a */
    public C1402c f5707a;

    /* renamed from: b */
    public long f5708b;

    /* renamed from: c */
    public long f5709c;

    /* renamed from: d */
    public long f5710d;

    /* renamed from: e */
    public int f5711e;

    /* renamed from: f */
    public int f5712f;

    /* renamed from: g */
    public long[] f5713g;

    /* renamed from: h */
    public int[] f5714h;

    /* renamed from: i */
    public int[] f5715i;

    /* renamed from: j */
    public int[] f5716j;

    /* renamed from: k */
    public long[] f5717k;

    /* renamed from: l */
    public boolean[] f5718l;

    /* renamed from: m */
    public boolean f5719m;

    /* renamed from: n */
    public boolean[] f5720n;

    /* renamed from: o */
    public C1418m f5721o;

    /* renamed from: p */
    public int f5722p;

    /* renamed from: q */
    public C1184p f5723q;

    /* renamed from: r */
    public boolean f5724r;

    /* renamed from: s */
    public long f5725s;

    /* renamed from: a */
    public long m33368a(int i) {
        return this.f5717k[i] + this.f5716j[i];
    }

    /* renamed from: a */
    public void m33369a() {
        this.f5711e = 0;
        this.f5725s = 0L;
        this.f5719m = false;
        this.f5724r = false;
        this.f5721o = null;
    }

    /* renamed from: a */
    public void m33367a(int i, int i2) {
        this.f5711e = i;
        this.f5712f = i2;
        int[] iArr = this.f5714h;
        if (iArr == null || iArr.length < i) {
            this.f5713g = new long[i];
            this.f5714h = new int[i];
        }
        int[] iArr2 = this.f5715i;
        if (iArr2 == null || iArr2.length < i2) {
            int i3 = (i2 * 125) / 100;
            this.f5715i = new int[i3];
            this.f5716j = new int[i3];
            this.f5717k = new long[i3];
            this.f5718l = new boolean[i3];
            this.f5720n = new boolean[i3];
        }
    }

    /* renamed from: a */
    public void m33366a(C1184p pVar) {
        pVar.m34366a(this.f5723q.f4738a, 0, this.f5722p);
        this.f5723q.m34358e(0);
        this.f5724r = false;
    }

    /* renamed from: a */
    public void m33365a(AbstractC1351h hVar) throws IOException, InterruptedException {
        hVar.readFully(this.f5723q.f4738a, 0, this.f5722p);
        this.f5723q.m34358e(0);
        this.f5724r = false;
    }

    /* renamed from: b */
    public void m33364b(int i) {
        C1184p pVar = this.f5723q;
        if (pVar == null || pVar.m34361d() < i) {
            this.f5723q = new C1184p(i);
        }
        this.f5722p = i;
        this.f5719m = true;
        this.f5724r = true;
    }

    /* renamed from: c */
    public boolean m33363c(int i) {
        return this.f5719m && this.f5720n[i];
    }
}
