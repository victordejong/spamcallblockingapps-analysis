package androidx.media2.exoplayer.external.extractor.p068e;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.audio.C1394a;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.extractor.p068e.AbstractC1548ah;
import androidx.media2.exoplayer.external.util.C2017o;
import androidx.media2.exoplayer.external.util.C2018p;
/* renamed from: androidx.media2.exoplayer.external.extractor.e.c */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/c.class */
public final class C1556c implements AbstractC1566m {

    /* renamed from: a */
    long f5999a;

    /* renamed from: b */
    private final C2017o f6000b;

    /* renamed from: c */
    private final C2018p f6001c;

    /* renamed from: d */
    private final String f6002d;

    /* renamed from: e */
    private String f6003e;

    /* renamed from: f */
    private AbstractC1641q f6004f;

    /* renamed from: g */
    private int f6005g;

    /* renamed from: h */
    private int f6006h;

    /* renamed from: i */
    private boolean f6007i;

    /* renamed from: j */
    private long f6008j;

    /* renamed from: k */
    private Format f6009k;

    /* renamed from: l */
    private int f6010l;

    public C1556c() {
        this(null);
    }

    public C1556c(String str) {
        C2017o c2017o = new C2017o(new byte[128]);
        this.f6000b = c2017o;
        this.f6001c = new C2018p(c2017o.f8127a);
        this.f6005g = 0;
        this.f6002d = str;
    }

    /* renamed from: a */
    private boolean m42701a(C2018p c2018p, byte[] bArr) {
        int min = Math.min(c2018p.m41536b(), 128 - this.f6006h);
        c2018p.m41537a(bArr, this.f6006h, min);
        int i = this.f6006h + min;
        this.f6006h = i;
        return i == 128;
    }

    /* renamed from: b */
    private boolean m42700b(C2018p c2018p) {
        while (true) {
            boolean z = false;
            if (c2018p.m41536b() > 0) {
                if (!this.f6007i) {
                    if (c2018p.m41534c() == 11) {
                        z = true;
                    }
                    this.f6007i = z;
                } else {
                    int m41534c = c2018p.m41534c();
                    if (m41534c == 119) {
                        this.f6007i = false;
                        return true;
                    }
                    boolean z2 = false;
                    if (m41534c == 11) {
                        z2 = true;
                    }
                    this.f6007i = z2;
                }
            } else {
                return false;
            }
        }
    }

    /* renamed from: c */
    private void m42699c() {
        this.f6000b.m41554a(0);
        C1394a.C1396a m43033a = C1394a.m43033a(this.f6000b);
        if (this.f6009k == null || m43033a.f5289d != this.f6009k.channelCount || m43033a.f5288c != this.f6009k.sampleRate || m43033a.f5286a != this.f6009k.sampleMimeType) {
            Format createAudioSampleFormat = Format.createAudioSampleFormat(this.f6003e, m43033a.f5286a, null, -1, -1, m43033a.f5289d, m43033a.f5288c, null, null, 0, this.f6002d);
            this.f6009k = createAudioSampleFormat;
            this.f6004f.mo42192a(createAudioSampleFormat);
        }
        this.f6010l = m43033a.f5290e;
        this.f6008j = (m43033a.f5291f * 1000000) / this.f6009k.sampleRate;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42655a() {
        this.f6005g = 0;
        this.f6006h = 0;
        this.f6007i = false;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42654a(long j, int i) {
        this.f5999a = j;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42653a(AbstractC1601i abstractC1601i, AbstractC1548ah.C1552d c1552d) {
        c1552d.m42708a();
        this.f6003e = c1552d.m42706c();
        this.f6004f = abstractC1601i.mo42213a(c1552d.m42707b(), 1);
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42652a(C2018p c2018p) {
        while (c2018p.m41536b() > 0) {
            int i = this.f6005g;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int min = Math.min(c2018p.m41536b(), this.f6010l - this.f6006h);
                        this.f6004f.mo42306a(c2018p, min);
                        int i2 = this.f6006h + min;
                        this.f6006h = i2;
                        int i3 = this.f6010l;
                        if (i2 == i3) {
                            this.f6004f.mo42313a(this.f5999a, 1, i3, 0, null);
                            this.f5999a += this.f6008j;
                            this.f6005g = 0;
                        }
                    }
                } else if (m42701a(c2018p, this.f6001c.f8131a)) {
                    m42699c();
                    this.f6001c.m41533c(0);
                    this.f6004f.mo42306a(this.f6001c, 128);
                    this.f6005g = 2;
                }
            } else if (m42700b(c2018p)) {
                this.f6005g = 1;
                this.f6001c.f8131a[0] = (byte) 11;
                this.f6001c.f8131a[1] = (byte) 119;
                this.f6006h = 2;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: b */
    public final void mo42651b() {
    }
}
