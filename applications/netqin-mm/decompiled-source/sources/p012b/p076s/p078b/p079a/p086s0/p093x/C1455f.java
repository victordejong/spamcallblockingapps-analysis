package p012b.p076s.p078b.p079a.p086s0.p093x;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import java.util.List;
import p012b.p076s.p078b.p079a.p080a1.C1183o;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p083p0.C1268b;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
import p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0;
/* renamed from: b.s.b.a.s0.x.f */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/f.class */
public final class C1455f implements AbstractC1473m {

    /* renamed from: a */
    public final C1183o f5852a;

    /* renamed from: b */
    public final C1184p f5853b;

    /* renamed from: c */
    public final String f5854c;

    /* renamed from: d */
    public String f5855d;

    /* renamed from: e */
    public AbstractC1362q f5856e;

    /* renamed from: f */
    public int f5857f;

    /* renamed from: g */
    public int f5858g;

    /* renamed from: h */
    public boolean f5859h;

    /* renamed from: i */
    public boolean f5860i;

    /* renamed from: j */
    public long f5861j;

    /* renamed from: k */
    public Format f5862k;

    /* renamed from: l */
    public int f5863l;

    /* renamed from: m */
    public long f5864m;

    public C1455f() {
        this(null);
    }

    public C1455f(String str) {
        C1183o oVar = new C1183o(new byte[16]);
        this.f5852a = oVar;
        this.f5853b = new C1184p(oVar.f4734a);
        this.f5857f = 0;
        this.f5858g = 0;
        this.f5859h = false;
        this.f5860i = false;
        this.f5854c = str;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33170a() {
        this.f5857f = 0;
        this.f5858g = 0;
        this.f5859h = false;
        this.f5860i = false;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33169a(long j, int i) {
        this.f5864m = j;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33168a(C1184p pVar) {
        while (pVar.m34372a() > 0) {
            int i = this.f5857f;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int min = Math.min(pVar.m34372a(), this.f5863l - this.f5858g);
                        this.f5856e.mo32827a(pVar, min);
                        int i2 = this.f5858g + min;
                        this.f5858g = i2;
                        int i3 = this.f5863l;
                        if (i2 == i3) {
                            this.f5856e.mo32832a(this.f5864m, 1, i3, 0, null);
                            this.f5864m += this.f5861j;
                            this.f5857f = 0;
                        }
                    }
                } else if (m33277a(pVar, this.f5853b.f4738a, 16)) {
                    m33275c();
                    this.f5853b.m34358e(0);
                    this.f5856e.mo32827a(this.f5853b, 16);
                    this.f5857f = 2;
                }
            } else if (m33276b(pVar)) {
                this.f5857f = 1;
                byte[] bArr = this.f5853b.f4738a;
                bArr[0] = (byte) (-84);
                bArr[1] = (byte) (this.f5860i ? 65 : 64);
                this.f5858g = 2;
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33167a(AbstractC1352i iVar, AbstractC1462h0.C1466d dVar) {
        dVar.m33246a();
        this.f5855d = dVar.m33245b();
        this.f5856e = iVar.mo32666a(dVar.m33244c(), 1);
    }

    /* renamed from: a */
    public final boolean m33277a(C1184p pVar, byte[] bArr, int i) {
        int min = Math.min(pVar.m34372a(), i - this.f5858g);
        pVar.m34366a(bArr, this.f5858g, min);
        int i2 = this.f5858g + min;
        this.f5858g = i2;
        return i2 == i;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: b */
    public void mo33166b() {
    }

    /* renamed from: b */
    public final boolean m33276b(C1184p pVar) {
        int r;
        boolean z;
        while (true) {
            z = false;
            boolean z2 = false;
            if (pVar.m34372a() <= 0) {
                return false;
            }
            if (!this.f5859h) {
                if (pVar.m34344r() == 172) {
                    z2 = true;
                }
                this.f5859h = z2;
            } else {
                r = pVar.m34344r();
                this.f5859h = r == 172;
                if (r == 64 || r == 65) {
                    break;
                }
            }
        }
        if (r == 65) {
            z = true;
        }
        this.f5860i = z;
        return true;
    }

    /* renamed from: c */
    public final void m33275c() {
        this.f5852a.m34378b(0);
        C1268b.C1270b a = C1268b.m33940a(this.f5852a);
        Format format = this.f5862k;
        if (format == null || a.f5059b != format.f1575v || a.f5058a != format.f1576w || !"audio/ac4".equals(format.f1562i)) {
            Format a2 = Format.m38180a(this.f5855d, "audio/ac4", (String) null, -1, -1, a.f5059b, a.f5058a, (List<byte[]>) null, (DrmInitData) null, 0, this.f5854c);
            this.f5862k = a2;
            this.f5856e.mo32623a(a2);
        }
        this.f5863l = a.f5060c;
        this.f5861j = (a.f5061d * 1000000) / this.f5862k.f1576w;
    }
}
