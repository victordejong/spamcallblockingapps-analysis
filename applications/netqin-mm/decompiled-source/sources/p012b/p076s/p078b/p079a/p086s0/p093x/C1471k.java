package p012b.p076s.p078b.p079a.p086s0.p093x;

import androidx.media2.exoplayer.external.Format;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p083p0.C1295s;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
import p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0;
/* renamed from: b.s.b.a.s0.x.k */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/k.class */
public final class C1471k implements AbstractC1473m {

    /* renamed from: b */
    public final String f5943b;

    /* renamed from: c */
    public String f5944c;

    /* renamed from: d */
    public AbstractC1362q f5945d;

    /* renamed from: f */
    public int f5947f;

    /* renamed from: g */
    public int f5948g;

    /* renamed from: h */
    public long f5949h;

    /* renamed from: i */
    public Format f5950i;

    /* renamed from: j */
    public int f5951j;

    /* renamed from: k */
    public long f5952k;

    /* renamed from: a */
    public final C1184p f5942a = new C1184p(new byte[18]);

    /* renamed from: e */
    public int f5946e = 0;

    public C1471k(String str) {
        this.f5943b = str;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33170a() {
        this.f5946e = 0;
        this.f5947f = 0;
        this.f5948g = 0;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33169a(long j, int i) {
        this.f5952k = j;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33168a(C1184p pVar) {
        while (pVar.m34372a() > 0) {
            int i = this.f5946e;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int min = Math.min(pVar.m34372a(), this.f5951j - this.f5947f);
                        this.f5945d.mo32827a(pVar, min);
                        int i2 = this.f5947f + min;
                        this.f5947f = i2;
                        int i3 = this.f5951j;
                        if (i2 == i3) {
                            this.f5945d.mo32832a(this.f5952k, 1, i3, 0, null);
                            this.f5952k += this.f5949h;
                            this.f5946e = 0;
                        }
                    } else {
                        throw new IllegalStateException();
                    }
                } else if (m33214a(pVar, this.f5942a.f4738a, 18)) {
                    m33212c();
                    this.f5942a.m34358e(0);
                    this.f5945d.mo32827a(this.f5942a, 18);
                    this.f5946e = 2;
                }
            } else if (m33213b(pVar)) {
                this.f5946e = 1;
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33167a(AbstractC1352i iVar, AbstractC1462h0.C1466d dVar) {
        dVar.m33246a();
        this.f5944c = dVar.m33245b();
        this.f5945d = iVar.mo32666a(dVar.m33244c(), 1);
    }

    /* renamed from: a */
    public final boolean m33214a(C1184p pVar, byte[] bArr, int i) {
        int min = Math.min(pVar.m34372a(), i - this.f5947f);
        pVar.m34366a(bArr, this.f5947f, min);
        int i2 = this.f5947f + min;
        this.f5947f = i2;
        return i2 == i;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: b */
    public void mo33166b() {
    }

    /* renamed from: b */
    public final boolean m33213b(C1184p pVar) {
        while (pVar.m34372a() > 0) {
            int i = this.f5948g << 8;
            this.f5948g = i;
            int r = i | pVar.m34344r();
            this.f5948g = r;
            if (C1295s.m33843a(r)) {
                byte[] bArr = this.f5942a.f4738a;
                int i2 = this.f5948g;
                bArr[0] = (byte) ((i2 >> 24) & 255);
                bArr[1] = (byte) ((i2 >> 16) & 255);
                bArr[2] = (byte) ((i2 >> 8) & 255);
                bArr[3] = (byte) (i2 & 255);
                this.f5947f = 4;
                this.f5948g = 0;
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public final void m33212c() {
        byte[] bArr = this.f5942a.f4738a;
        if (this.f5950i == null) {
            Format a = C1295s.m33840a(bArr, this.f5944c, this.f5943b, null);
            this.f5950i = a;
            this.f5945d.mo32623a(a);
        }
        this.f5951j = C1295s.m33841a(bArr);
        this.f5949h = (int) ((C1295s.m33837d(bArr) * 1000000) / this.f5950i.f1576w);
    }
}
