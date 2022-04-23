package p012b.p076s.p078b.p079a.p086s0.p093x;

import androidx.media2.exoplayer.external.ParserException;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p080a1.C1183o;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p080a1.C1196z;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0;
/* renamed from: b.s.b.a.s0.x.u */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/u.class */
public final class C1486u implements AbstractC1462h0 {

    /* renamed from: a */
    public final AbstractC1473m f6100a;

    /* renamed from: b */
    public final C1183o f6101b = new C1183o(new byte[10]);

    /* renamed from: c */
    public int f6102c = 0;

    /* renamed from: d */
    public int f6103d;

    /* renamed from: e */
    public C1196z f6104e;

    /* renamed from: f */
    public boolean f6105f;

    /* renamed from: g */
    public boolean f6106g;

    /* renamed from: h */
    public boolean f6107h;

    /* renamed from: i */
    public int f6108i;

    /* renamed from: j */
    public int f6109j;

    /* renamed from: k */
    public boolean f6110k;

    /* renamed from: l */
    public long f6111l;

    public C1486u(AbstractC1473m mVar) {
        this.f6100a = mVar;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0
    /* renamed from: a */
    public final void mo33157a() {
        this.f6102c = 0;
        this.f6103d = 0;
        this.f6107h = false;
        this.f6100a.mo33170a();
    }

    /* renamed from: a */
    public final void m33156a(int i) {
        this.f6102c = i;
        this.f6103d = 0;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0
    /* renamed from: a */
    public final void mo33155a(C1184p pVar, int i) throws ParserException {
        int i2 = i;
        if ((i & 1) != 0) {
            int i3 = this.f6102c;
            if (!(i3 == 0 || i3 == 1)) {
                if (i3 == 2) {
                    C1175j.m34414d("PesReader", "Unexpected start indicator reading extended header");
                } else if (i3 == 3) {
                    int i4 = this.f6109j;
                    if (i4 != -1) {
                        StringBuilder sb = new StringBuilder(59);
                        sb.append("Unexpected start indicator: expected ");
                        sb.append(i4);
                        sb.append(" more bytes");
                        C1175j.m34414d("PesReader", sb.toString());
                    }
                    this.f6100a.mo33166b();
                } else {
                    throw new IllegalStateException();
                }
            }
            m33156a(1);
            i2 = i;
        }
        while (pVar.m34372a() > 0) {
            int i5 = this.f6102c;
            if (i5 != 0) {
                int i6 = 0;
                int i7 = 0;
                int i8 = 0;
                if (i5 != 1) {
                    if (i5 == 2) {
                        if (m33154a(pVar, this.f6101b.f4734a, Math.min(10, this.f6108i)) && m33154a(pVar, (byte[]) null, this.f6108i)) {
                            m33151c();
                            if (this.f6110k) {
                                i6 = 4;
                            }
                            i2 |= i6;
                            this.f6100a.mo33169a(this.f6111l, i2);
                            m33156a(3);
                        }
                    } else if (i5 == 3) {
                        int a = pVar.m34372a();
                        int i9 = this.f6109j;
                        if (i9 != -1) {
                            i8 = a - i9;
                        }
                        int i10 = a;
                        if (i8 > 0) {
                            i10 = a - i8;
                            pVar.m34360d(pVar.m34363c() + i10);
                        }
                        this.f6100a.mo33168a(pVar);
                        int i11 = this.f6109j;
                        if (i11 != -1) {
                            int i12 = i11 - i10;
                            this.f6109j = i12;
                            if (i12 == 0) {
                                this.f6100a.mo33166b();
                                m33156a(1);
                            }
                        }
                    } else {
                        throw new IllegalStateException();
                    }
                } else if (m33154a(pVar, this.f6101b.f4734a, 9)) {
                    if (m33152b()) {
                        i7 = 2;
                    }
                    m33156a(i7);
                }
            } else {
                pVar.m34356f(pVar.m34372a());
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0
    /* renamed from: a */
    public void mo33153a(C1196z zVar, AbstractC1352i iVar, AbstractC1462h0.C1466d dVar) {
        this.f6104e = zVar;
        this.f6100a.mo33167a(iVar, dVar);
    }

    /* renamed from: a */
    public final boolean m33154a(C1184p pVar, byte[] bArr, int i) {
        int min = Math.min(pVar.m34372a(), i - this.f6103d);
        boolean z = true;
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            pVar.m34356f(min);
        } else {
            pVar.m34366a(bArr, this.f6103d, min);
        }
        int i2 = this.f6103d + min;
        this.f6103d = i2;
        if (i2 != i) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public final boolean m33152b() {
        this.f6101b.m34378b(0);
        int a = this.f6101b.m34385a(24);
        if (a != 1) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("Unexpected start code prefix: ");
            sb.append(a);
            C1175j.m34414d("PesReader", sb.toString());
            this.f6109j = -1;
            return false;
        }
        this.f6101b.m34376c(8);
        int a2 = this.f6101b.m34385a(16);
        this.f6101b.m34376c(5);
        this.f6110k = this.f6101b.m34374e();
        this.f6101b.m34376c(2);
        this.f6105f = this.f6101b.m34374e();
        this.f6106g = this.f6101b.m34374e();
        this.f6101b.m34376c(6);
        int a3 = this.f6101b.m34385a(8);
        this.f6108i = a3;
        if (a2 == 0) {
            this.f6109j = -1;
            return true;
        }
        this.f6109j = ((a2 + 6) - 9) - a3;
        return true;
    }

    /* renamed from: c */
    public final void m33151c() {
        this.f6101b.m34378b(0);
        this.f6111l = -9223372036854775807L;
        if (this.f6105f) {
            this.f6101b.m34376c(4);
            long a = this.f6101b.m34385a(3);
            this.f6101b.m34376c(1);
            long a2 = this.f6101b.m34385a(15) << 15;
            this.f6101b.m34376c(1);
            long a3 = this.f6101b.m34385a(15);
            this.f6101b.m34376c(1);
            if (!this.f6107h && this.f6106g) {
                this.f6101b.m34376c(4);
                long a4 = this.f6101b.m34385a(3);
                this.f6101b.m34376c(1);
                long a5 = this.f6101b.m34385a(15) << 15;
                this.f6101b.m34376c(1);
                long a6 = this.f6101b.m34385a(15);
                this.f6101b.m34376c(1);
                this.f6104e.m34292b((a4 << 30) | a5 | a6);
                this.f6107h = true;
            }
            this.f6111l = this.f6104e.m34292b((a << 30) | a2 | a3);
        }
    }
}
