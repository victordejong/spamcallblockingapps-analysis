package p012b.p076s.p078b.p079a.p086s0.p093x;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import java.util.List;
import p012b.p076s.p078b.p079a.p080a1.C1183o;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p083p0.C1264a;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
import p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0;
/* renamed from: b.s.b.a.s0.x.c */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/c.class */
public final class C1448c implements AbstractC1473m {

    /* renamed from: a */
    public final C1183o f5821a;

    /* renamed from: b */
    public final C1184p f5822b;

    /* renamed from: c */
    public final String f5823c;

    /* renamed from: d */
    public String f5824d;

    /* renamed from: e */
    public AbstractC1362q f5825e;

    /* renamed from: f */
    public int f5826f;

    /* renamed from: g */
    public int f5827g;

    /* renamed from: h */
    public boolean f5828h;

    /* renamed from: i */
    public long f5829i;

    /* renamed from: j */
    public Format f5830j;

    /* renamed from: k */
    public int f5831k;

    /* renamed from: l */
    public long f5832l;

    public C1448c() {
        this(null);
    }

    public C1448c(String str) {
        C1183o oVar = new C1183o(new byte[128]);
        this.f5821a = oVar;
        this.f5822b = new C1184p(oVar.f4734a);
        this.f5826f = 0;
        this.f5823c = str;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33170a() {
        this.f5826f = 0;
        this.f5827g = 0;
        this.f5828h = false;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33169a(long j, int i) {
        this.f5832l = j;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33168a(C1184p pVar) {
        while (pVar.m34372a() > 0) {
            int i = this.f5826f;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int min = Math.min(pVar.m34372a(), this.f5831k - this.f5827g);
                        this.f5825e.mo32827a(pVar, min);
                        int i2 = this.f5827g + min;
                        this.f5827g = i2;
                        int i3 = this.f5831k;
                        if (i2 == i3) {
                            this.f5825e.mo32832a(this.f5832l, 1, i3, 0, null);
                            this.f5832l += this.f5829i;
                            this.f5826f = 0;
                        }
                    }
                } else if (m33291a(pVar, this.f5822b.f4738a, 128)) {
                    m33289c();
                    this.f5822b.m34358e(0);
                    this.f5825e.mo32827a(this.f5822b, 128);
                    this.f5826f = 2;
                }
            } else if (m33290b(pVar)) {
                this.f5826f = 1;
                byte[] bArr = this.f5822b.f4738a;
                bArr[0] = (byte) 11;
                bArr[1] = (byte) 119;
                this.f5827g = 2;
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33167a(AbstractC1352i iVar, AbstractC1462h0.C1466d dVar) {
        dVar.m33246a();
        this.f5824d = dVar.m33245b();
        this.f5825e = iVar.mo32666a(dVar.m33244c(), 1);
    }

    /* renamed from: a */
    public final boolean m33291a(C1184p pVar, byte[] bArr, int i) {
        int min = Math.min(pVar.m34372a(), i - this.f5827g);
        pVar.m34366a(bArr, this.f5827g, min);
        int i2 = this.f5827g + min;
        this.f5827g = i2;
        return i2 == i;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: b */
    public void mo33166b() {
    }

    /* renamed from: b */
    public final boolean m33290b(C1184p pVar) {
        while (true) {
            boolean z = false;
            boolean z2 = false;
            if (pVar.m34372a() <= 0) {
                return false;
            }
            if (!this.f5828h) {
                if (pVar.m34344r() == 11) {
                    z2 = true;
                }
                this.f5828h = z2;
            } else {
                int r = pVar.m34344r();
                if (r == 119) {
                    this.f5828h = false;
                    return true;
                }
                if (r == 11) {
                    z = true;
                }
                this.f5828h = z;
            }
        }
    }

    /* renamed from: c */
    public final void m33289c() {
        this.f5821a.m34378b(0);
        C1264a.C1266b a = C1264a.m33950a(this.f5821a);
        Format format = this.f5830j;
        if (!(format != null && a.f5054c == format.f1575v && a.f5053b == format.f1576w && a.f5052a == format.f1562i)) {
            Format a2 = Format.m38180a(this.f5824d, a.f5052a, (String) null, -1, -1, a.f5054c, a.f5053b, (List<byte[]>) null, (DrmInitData) null, 0, this.f5823c);
            this.f5830j = a2;
            this.f5825e.mo32623a(a2);
        }
        this.f5831k = a.f5055d;
        this.f5829i = (a.f5056e * 1000000) / this.f5830j.f1576w;
    }
}
