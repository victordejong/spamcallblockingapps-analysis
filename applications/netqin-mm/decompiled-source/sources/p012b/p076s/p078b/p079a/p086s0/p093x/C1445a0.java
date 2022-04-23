package p012b.p076s.p078b.p079a.p086s0.p093x;

import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p080a1.C1196z;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0;
/* renamed from: b.s.b.a.s0.x.a0 */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/a0.class */
public final class C1445a0 implements AbstractC1462h0 {

    /* renamed from: a */
    public final AbstractC1494z f5809a;

    /* renamed from: b */
    public final C1184p f5810b = new C1184p(32);

    /* renamed from: c */
    public int f5811c;

    /* renamed from: d */
    public int f5812d;

    /* renamed from: e */
    public boolean f5813e;

    /* renamed from: f */
    public boolean f5814f;

    public C1445a0(AbstractC1494z zVar) {
        this.f5809a = zVar;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0
    /* renamed from: a */
    public void mo33157a() {
        this.f5814f = true;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0
    /* renamed from: a */
    public void mo33155a(C1184p pVar, int i) {
        boolean z = (i & 1) != 0;
        int c = z ? pVar.m34363c() + pVar.m34344r() : -1;
        if (this.f5814f) {
            if (z) {
                this.f5814f = false;
                pVar.m34358e(c);
                this.f5812d = 0;
            } else {
                return;
            }
        }
        while (pVar.m34372a() > 0) {
            int i2 = this.f5812d;
            if (i2 < 3) {
                if (i2 == 0) {
                    int r = pVar.m34344r();
                    pVar.m34358e(pVar.m34363c() - 1);
                    if (r == 255) {
                        this.f5814f = true;
                        return;
                    }
                }
                int min = Math.min(pVar.m34372a(), 3 - this.f5812d);
                pVar.m34366a(this.f5810b.f4738a, this.f5812d, min);
                int i3 = this.f5812d + min;
                this.f5812d = i3;
                if (i3 == 3) {
                    this.f5810b.m34362c(3);
                    this.f5810b.m34356f(1);
                    int r2 = this.f5810b.m34344r();
                    int r3 = this.f5810b.m34344r();
                    this.f5813e = (r2 & 128) != 0;
                    this.f5811c = (((r2 & 15) << 8) | r3) + 3;
                    int b = this.f5810b.m34365b();
                    int i4 = this.f5811c;
                    if (b < i4) {
                        C1184p pVar2 = this.f5810b;
                        byte[] bArr = pVar2.f4738a;
                        pVar2.m34362c(Math.min(4098, Math.max(i4, bArr.length * 2)));
                        System.arraycopy(bArr, 0, this.f5810b.f4738a, 0, 3);
                    }
                }
            } else {
                int min2 = Math.min(pVar.m34372a(), this.f5811c - this.f5812d);
                pVar.m34366a(this.f5810b.f4738a, this.f5812d, min2);
                int i5 = this.f5812d + min2;
                this.f5812d = i5;
                int i6 = this.f5811c;
                if (i5 != i6) {
                    continue;
                } else {
                    if (!this.f5813e) {
                        this.f5810b.m34362c(i6);
                    } else if (C1167d0.m34467a(this.f5810b.f4738a, 0, i6, -1) != 0) {
                        this.f5814f = true;
                        return;
                    } else {
                        this.f5810b.m34362c(this.f5811c - 4);
                    }
                    this.f5809a.mo33125a(this.f5810b);
                    this.f5812d = 0;
                }
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0
    /* renamed from: a */
    public void mo33153a(C1196z zVar, AbstractC1352i iVar, AbstractC1462h0.C1466d dVar) {
        this.f5809a.mo33124a(zVar, iVar, dVar);
        this.f5814f = true;
    }
}
