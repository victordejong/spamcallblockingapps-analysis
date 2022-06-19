package androidx.media2.exoplayer.external.extractor.p068e;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.audio.C1425s;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.extractor.p068e.AbstractC1548ah;
import androidx.media2.exoplayer.external.util.C2018p;
/* renamed from: androidx.media2.exoplayer.external.extractor.e.k */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/k.class */
public final class C1564k implements AbstractC1566m {

    /* renamed from: b */
    private final String f6068b;

    /* renamed from: c */
    private String f6069c;

    /* renamed from: d */
    private AbstractC1641q f6070d;

    /* renamed from: f */
    private int f6072f;

    /* renamed from: g */
    private int f6073g;

    /* renamed from: h */
    private long f6074h;

    /* renamed from: i */
    private Format f6075i;

    /* renamed from: j */
    private int f6076j;

    /* renamed from: k */
    private long f6077k;

    /* renamed from: a */
    private final C2018p f6067a = new C2018p(new byte[18]);

    /* renamed from: e */
    private int f6071e = 0;

    public C1564k(String str) {
        this.f6068b = str;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42655a() {
        this.f6071e = 0;
        this.f6072f = 0;
        this.f6073g = 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42654a(long j, int i) {
        this.f6077k = j;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42653a(AbstractC1601i abstractC1601i, AbstractC1548ah.C1552d c1552d) {
        c1552d.m42708a();
        this.f6069c = c1552d.m42706c();
        this.f6070d = abstractC1601i.mo42213a(c1552d.m42707b(), 1);
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42652a(C2018p c2018p) {
        boolean z;
        while (c2018p.m41536b() > 0) {
            int i = this.f6071e;
            boolean z2 = true;
            if (i == 0) {
                while (true) {
                    z = false;
                    if (c2018p.m41536b() <= 0) {
                        break;
                    }
                    int i2 = this.f6073g << 8;
                    this.f6073g = i2;
                    int m41534c = i2 | c2018p.m41534c();
                    this.f6073g = m41534c;
                    if (C1425s.m42978a(m41534c)) {
                        this.f6067a.f8131a[0] = (byte) ((this.f6073g >> 24) & 255);
                        this.f6067a.f8131a[1] = (byte) ((this.f6073g >> 16) & 255);
                        this.f6067a.f8131a[2] = (byte) ((this.f6073g >> 8) & 255);
                        this.f6067a.f8131a[3] = (byte) (this.f6073g & 255);
                        this.f6072f = 4;
                        this.f6073g = 0;
                        z = true;
                        break;
                    }
                }
                if (z) {
                    this.f6071e = 1;
                }
            } else if (i == 1) {
                byte[] bArr = this.f6067a.f8131a;
                int min = Math.min(c2018p.m41536b(), 18 - this.f6072f);
                c2018p.m41537a(bArr, this.f6072f, min);
                int i3 = this.f6072f + min;
                this.f6072f = i3;
                if (i3 != 18) {
                    z2 = false;
                }
                if (z2) {
                    byte[] bArr2 = this.f6067a.f8131a;
                    if (this.f6075i == null) {
                        Format m42975a = C1425s.m42975a(bArr2, this.f6069c, this.f6068b);
                        this.f6075i = m42975a;
                        this.f6070d.mo42192a(m42975a);
                    }
                    this.f6076j = C1425s.m42974b(bArr2);
                    this.f6074h = (int) ((C1425s.m42976a(bArr2) * 1000000) / this.f6075i.sampleRate);
                    this.f6067a.m41533c(0);
                    this.f6070d.mo42306a(this.f6067a, 18);
                    this.f6071e = 2;
                }
            } else if (i != 2) {
                throw new IllegalStateException();
            } else {
                int min2 = Math.min(c2018p.m41536b(), this.f6076j - this.f6072f);
                this.f6070d.mo42306a(c2018p, min2);
                int i4 = this.f6072f + min2;
                this.f6072f = i4;
                int i5 = this.f6076j;
                if (i4 == i5) {
                    this.f6070d.mo42313a(this.f6077k, 1, i5, 0, null);
                    this.f6077k += this.f6074h;
                    this.f6071e = 0;
                }
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: b */
    public final void mo42651b() {
    }
}
