package p012b.p076s.p078b.p079a.p086s0.p093x;

import android.util.Pair;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
import java.util.Collections;
import p012b.p076s.p078b.p079a.p080a1.C1164c;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p080a1.C1183o;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
import p012b.p076s.p078b.p079a.p086s0.C1349f;
import p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0;
/* renamed from: b.s.b.a.s0.x.i */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/i.class */
public final class C1467i implements AbstractC1473m {

    /* renamed from: v */
    public static final byte[] f5916v = {73, 68, 51};

    /* renamed from: a */
    public final boolean f5917a;

    /* renamed from: b */
    public final C1183o f5918b;

    /* renamed from: c */
    public final C1184p f5919c;

    /* renamed from: d */
    public final String f5920d;

    /* renamed from: e */
    public String f5921e;

    /* renamed from: f */
    public AbstractC1362q f5922f;

    /* renamed from: g */
    public AbstractC1362q f5923g;

    /* renamed from: h */
    public int f5924h;

    /* renamed from: i */
    public int f5925i;

    /* renamed from: j */
    public int f5926j;

    /* renamed from: k */
    public boolean f5927k;

    /* renamed from: l */
    public boolean f5928l;

    /* renamed from: m */
    public int f5929m;

    /* renamed from: n */
    public int f5930n;

    /* renamed from: o */
    public int f5931o;

    /* renamed from: p */
    public boolean f5932p;

    /* renamed from: q */
    public long f5933q;

    /* renamed from: r */
    public int f5934r;

    /* renamed from: s */
    public long f5935s;

    /* renamed from: t */
    public AbstractC1362q f5936t;

    /* renamed from: u */
    public long f5937u;

    public C1467i(boolean z) {
        this(z, null);
    }

    public C1467i(boolean z, String str) {
        this.f5918b = new C1183o(new byte[7]);
        this.f5919c = new C1184p(Arrays.copyOf(f5916v, 10));
        m33228h();
        this.f5929m = -1;
        this.f5930n = -1;
        this.f5933q = -9223372036854775807L;
        this.f5917a = z;
        this.f5920d = str;
    }

    /* renamed from: a */
    public static boolean m33241a(int i) {
        return (i & 65526) == 65520;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33170a() {
        m33230f();
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33169a(long j, int i) {
        this.f5935s = j;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33168a(C1184p pVar) throws ParserException {
        while (pVar.m34372a() > 0) {
            int i = this.f5924h;
            if (i == 0) {
                m33234c(pVar);
            } else if (i == 1) {
                m33237b(pVar);
            } else if (i != 2) {
                if (i == 3) {
                    if (m33239a(pVar, this.f5918b.f4734a, this.f5927k ? 7 : 5)) {
                        m33233d();
                    }
                } else if (i == 4) {
                    m33232d(pVar);
                } else {
                    throw new IllegalStateException();
                }
            } else if (m33239a(pVar, this.f5919c.f4738a, 10)) {
                m33231e();
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33167a(AbstractC1352i iVar, AbstractC1462h0.C1466d dVar) {
        dVar.m33246a();
        this.f5921e = dVar.m33245b();
        this.f5922f = iVar.mo32666a(dVar.m33244c(), 1);
        if (this.f5917a) {
            dVar.m33246a();
            AbstractC1362q a = iVar.mo32666a(dVar.m33244c(), 4);
            this.f5923g = a;
            a.mo32623a(Format.m38176a(dVar.m33245b(), "application/id3", (String) null, -1, (DrmInitData) null));
            return;
        }
        this.f5923g = new C1349f();
    }

    /* renamed from: a */
    public final void m33238a(AbstractC1362q qVar, long j, int i, int i2) {
        this.f5924h = 4;
        this.f5925i = i;
        this.f5936t = qVar;
        this.f5937u = j;
        this.f5934r = i2;
    }

    /* renamed from: a */
    public final boolean m33242a(byte b, byte b2) {
        return m33241a(((b & 255) << 8) | (b2 & 255));
    }

    /* renamed from: a */
    public final boolean m33240a(C1184p pVar, int i) {
        boolean z;
        pVar.m34358e(i + 1);
        if (!m33236b(pVar, this.f5918b.f4734a, 1)) {
            return false;
        }
        this.f5918b.m34378b(4);
        int a = this.f5918b.m34385a(1);
        int i2 = this.f5929m;
        if (i2 != -1 && a != i2) {
            return false;
        }
        if (this.f5930n != -1) {
            if (!m33236b(pVar, this.f5918b.f4734a, 1)) {
                return true;
            }
            this.f5918b.m34378b(2);
            if (this.f5918b.m34385a(4) != this.f5930n) {
                return false;
            }
            pVar.m34358e(i + 2);
        }
        if (!m33236b(pVar, this.f5918b.f4734a, 4)) {
            return true;
        }
        this.f5918b.m34378b(14);
        int a2 = this.f5918b.m34385a(13);
        if (a2 <= 6) {
            return false;
        }
        int i3 = i + a2;
        int i4 = i3 + 1;
        if (i4 >= pVar.m34361d()) {
            return true;
        }
        byte[] bArr = pVar.f4738a;
        if (m33242a(bArr[i3], bArr[i4])) {
            z = true;
            if (this.f5929m != -1) {
                if (((pVar.f4738a[i4] & 8) >> 3) == a) {
                    z = true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: a */
    public final boolean m33239a(C1184p pVar, byte[] bArr, int i) {
        int min = Math.min(pVar.m34372a(), i - this.f5925i);
        pVar.m34366a(bArr, this.f5925i, min);
        int i2 = this.f5925i + min;
        this.f5925i = i2;
        return i2 == i;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: b */
    public void mo33166b() {
    }

    /* renamed from: b */
    public final void m33237b(C1184p pVar) {
        if (pVar.m34372a() != 0) {
            this.f5918b.f4734a[0] = pVar.f4738a[pVar.m34363c()];
            this.f5918b.m34378b(2);
            int a = this.f5918b.m34385a(4);
            int i = this.f5930n;
            if (i == -1 || a == i) {
                if (!this.f5928l) {
                    this.f5928l = true;
                    this.f5929m = this.f5931o;
                    this.f5930n = a;
                }
                m33227i();
                return;
            }
            m33230f();
        }
    }

    /* renamed from: b */
    public final boolean m33236b(C1184p pVar, byte[] bArr, int i) {
        if (pVar.m34372a() < i) {
            return false;
        }
        pVar.m34366a(bArr, 0, i);
        return true;
    }

    /* renamed from: c */
    public long m33235c() {
        return this.f5933q;
    }

    /* renamed from: c */
    public final void m33234c(C1184p pVar) {
        byte[] bArr = pVar.f4738a;
        int c = pVar.m34363c();
        int d = pVar.m34361d();
        while (c < d) {
            int i = c + 1;
            int i2 = bArr[c] & 255;
            if (this.f5926j != 512 || !m33242a((byte) -1, (byte) i2) || (!this.f5928l && !m33240a(pVar, i - 2))) {
                int i3 = this.f5926j;
                int i4 = i2 | i3;
                if (i4 == 329) {
                    this.f5926j = 768;
                    c = i;
                } else if (i4 == 511) {
                    this.f5926j = RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN;
                    c = i;
                } else if (i4 == 836) {
                    this.f5926j = 1024;
                    c = i;
                } else if (i4 != 1075) {
                    c = i;
                    if (i3 != 256) {
                        this.f5926j = 256;
                        c = i - 1;
                    }
                } else {
                    m33226j();
                    pVar.m34358e(i);
                    return;
                }
            } else {
                this.f5931o = (i2 & 8) >> 3;
                boolean z = true;
                if ((i2 & 1) != 0) {
                    z = false;
                }
                this.f5927k = z;
                if (!this.f5928l) {
                    m33229g();
                } else {
                    m33227i();
                }
                pVar.m34358e(i);
                return;
            }
        }
        pVar.m34358e(c);
    }

    /* renamed from: d */
    public final void m33233d() throws ParserException {
        this.f5918b.m34378b(0);
        if (!this.f5932p) {
            int a = this.f5918b.m34385a(2) + 1;
            int i = a;
            if (a != 2) {
                StringBuilder sb = new StringBuilder(61);
                sb.append("Detected audio object type: ");
                sb.append(a);
                sb.append(", but assuming AAC LC.");
                C1175j.m34414d("AdtsReader", sb.toString());
                i = 2;
            }
            this.f5918b.m34376c(5);
            byte[] a2 = C1164c.m34508a(i, this.f5930n, this.f5918b.m34385a(3));
            Pair<Integer, Integer> a3 = C1164c.m34504a(a2);
            Format a4 = Format.m38180a(this.f5921e, "audio/mp4a-latm", (String) null, -1, -1, ((Integer) a3.second).intValue(), ((Integer) a3.first).intValue(), Collections.singletonList(a2), (DrmInitData) null, 0, this.f5920d);
            this.f5933q = 1024000000 / a4.f1576w;
            this.f5922f.mo32623a(a4);
            this.f5932p = true;
        } else {
            this.f5918b.m34376c(10);
        }
        this.f5918b.m34376c(4);
        int a5 = (this.f5918b.m34385a(13) - 2) - 5;
        int i2 = a5;
        if (this.f5927k) {
            i2 = a5 - 2;
        }
        m33238a(this.f5922f, this.f5933q, 0, i2);
    }

    /* renamed from: d */
    public final void m33232d(C1184p pVar) {
        int min = Math.min(pVar.m34372a(), this.f5934r - this.f5925i);
        this.f5936t.mo32827a(pVar, min);
        int i = this.f5925i + min;
        this.f5925i = i;
        int i2 = this.f5934r;
        if (i == i2) {
            this.f5936t.mo32832a(this.f5935s, 1, i2, 0, null);
            this.f5935s += this.f5937u;
            m33228h();
        }
    }

    /* renamed from: e */
    public final void m33231e() {
        this.f5923g.mo32827a(this.f5919c, 10);
        this.f5919c.m34358e(6);
        m33238a(this.f5923g, 0L, 10, this.f5919c.m34345q() + 10);
    }

    /* renamed from: f */
    public final void m33230f() {
        this.f5928l = false;
        m33228h();
    }

    /* renamed from: g */
    public final void m33229g() {
        this.f5924h = 1;
        this.f5925i = 0;
    }

    /* renamed from: h */
    public final void m33228h() {
        this.f5924h = 0;
        this.f5925i = 0;
        this.f5926j = 256;
    }

    /* renamed from: i */
    public final void m33227i() {
        this.f5924h = 3;
        this.f5925i = 0;
    }

    /* renamed from: j */
    public final void m33226j() {
        this.f5924h = 2;
        this.f5925i = f5916v.length;
        this.f5934r = 0;
        this.f5919c.m34358e(0);
    }
}
