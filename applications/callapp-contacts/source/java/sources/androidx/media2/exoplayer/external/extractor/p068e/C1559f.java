package androidx.media2.exoplayer.external.extractor.p068e;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.audio.C1398b;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.extractor.p068e.AbstractC1548ah;
import androidx.media2.exoplayer.external.util.C2017o;
import androidx.media2.exoplayer.external.util.C2018p;
/* renamed from: androidx.media2.exoplayer.external.extractor.e.f */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/f.class */
public final class C1559f implements AbstractC1566m {

    /* renamed from: a */
    long f6016a;

    /* renamed from: b */
    private final C2017o f6017b;

    /* renamed from: c */
    private final C2018p f6018c;

    /* renamed from: d */
    private final String f6019d;

    /* renamed from: e */
    private String f6020e;

    /* renamed from: f */
    private AbstractC1641q f6021f;

    /* renamed from: g */
    private int f6022g;

    /* renamed from: h */
    private int f6023h;

    /* renamed from: i */
    private boolean f6024i;

    /* renamed from: j */
    private boolean f6025j;

    /* renamed from: k */
    private long f6026k;

    /* renamed from: l */
    private Format f6027l;

    /* renamed from: m */
    private int f6028m;

    public C1559f() {
        this(null);
    }

    public C1559f(String str) {
        C2017o c2017o = new C2017o(new byte[16]);
        this.f6017b = c2017o;
        this.f6018c = new C2018p(c2017o.f8127a);
        this.f6022g = 0;
        this.f6023h = 0;
        this.f6024i = false;
        this.f6025j = false;
        this.f6019d = str;
    }

    /* renamed from: a */
    private boolean m42697a(C2018p c2018p, byte[] bArr) {
        int min = Math.min(c2018p.m41536b(), 16 - this.f6023h);
        c2018p.m41537a(bArr, this.f6023h, min);
        int i = this.f6023h + min;
        this.f6023h = i;
        return i == 16;
    }

    /* renamed from: b */
    private boolean m42696b(C2018p c2018p) {
        int m41534c;
        while (true) {
            boolean z = false;
            if (c2018p.m41536b() <= 0) {
                return false;
            }
            if (!this.f6024i) {
                if (c2018p.m41534c() == 172) {
                    z = true;
                }
                this.f6024i = z;
            } else {
                m41534c = c2018p.m41534c();
                this.f6024i = m41534c == 172;
                if (m41534c == 64 || m41534c == 65) {
                    break;
                }
            }
        }
        boolean z2 = false;
        if (m41534c == 65) {
            z2 = true;
        }
        this.f6025j = z2;
        return true;
    }

    /* renamed from: c */
    private void m42695c() {
        this.f6017b.m41554a(0);
        C1398b.C1400a m43023a = C1398b.m43023a(this.f6017b);
        if (this.f6027l == null || m43023a.f5295c != this.f6027l.channelCount || m43023a.f5294b != this.f6027l.sampleRate || !"audio/ac4".equals(this.f6027l.sampleMimeType)) {
            Format createAudioSampleFormat = Format.createAudioSampleFormat(this.f6020e, "audio/ac4", null, -1, -1, m43023a.f5295c, m43023a.f5294b, null, null, 0, this.f6019d);
            this.f6027l = createAudioSampleFormat;
            this.f6021f.mo42192a(createAudioSampleFormat);
        }
        this.f6028m = m43023a.f5296d;
        this.f6026k = (m43023a.f5297e * 1000000) / this.f6027l.sampleRate;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42655a() {
        this.f6022g = 0;
        this.f6023h = 0;
        this.f6024i = false;
        this.f6025j = false;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42654a(long j, int i) {
        this.f6016a = j;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42653a(AbstractC1601i abstractC1601i, AbstractC1548ah.C1552d c1552d) {
        c1552d.m42708a();
        this.f6020e = c1552d.m42706c();
        this.f6021f = abstractC1601i.mo42213a(c1552d.m42707b(), 1);
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42652a(C2018p c2018p) {
        while (c2018p.m41536b() > 0) {
            int i = this.f6022g;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int min = Math.min(c2018p.m41536b(), this.f6028m - this.f6023h);
                        this.f6021f.mo42306a(c2018p, min);
                        int i2 = this.f6023h + min;
                        this.f6023h = i2;
                        int i3 = this.f6028m;
                        if (i2 == i3) {
                            this.f6021f.mo42313a(this.f6016a, 1, i3, 0, null);
                            this.f6016a += this.f6026k;
                            this.f6022g = 0;
                        }
                    }
                } else if (m42697a(c2018p, this.f6018c.f8131a)) {
                    m42695c();
                    this.f6018c.m41533c(0);
                    this.f6021f.mo42306a(this.f6018c, 16);
                    this.f6022g = 2;
                }
            } else if (m42696b(c2018p)) {
                this.f6022g = 1;
                this.f6018c.f8131a[0] = (byte) (-84);
                this.f6018c.f8131a[1] = (byte) (this.f6025j ? 65 : 64);
                this.f6023h = 2;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: b */
    public final void mo42651b() {
    }
}
