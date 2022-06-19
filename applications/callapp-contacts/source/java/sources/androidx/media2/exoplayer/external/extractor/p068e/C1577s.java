package androidx.media2.exoplayer.external.extractor.p068e;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.extractor.C1605m;
import androidx.media2.exoplayer.external.extractor.p068e.AbstractC1548ah;
import androidx.media2.exoplayer.external.util.C2018p;
/* renamed from: androidx.media2.exoplayer.external.extractor.e.s */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/s.class */
public final class C1577s implements AbstractC1566m {

    /* renamed from: a */
    private final C2018p f6208a;

    /* renamed from: b */
    private final C1605m f6209b;

    /* renamed from: c */
    private final String f6210c;

    /* renamed from: d */
    private String f6211d;

    /* renamed from: e */
    private AbstractC1641q f6212e;

    /* renamed from: f */
    private int f6213f;

    /* renamed from: g */
    private int f6214g;

    /* renamed from: h */
    private boolean f6215h;

    /* renamed from: i */
    private boolean f6216i;

    /* renamed from: j */
    private long f6217j;

    /* renamed from: k */
    private int f6218k;

    /* renamed from: l */
    private long f6219l;

    public C1577s() {
        this(null);
    }

    public C1577s(String str) {
        this.f6213f = 0;
        C2018p c2018p = new C2018p(4);
        this.f6208a = c2018p;
        c2018p.f8131a[0] = (byte) (-1);
        this.f6209b = new C1605m();
        this.f6210c = str;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42655a() {
        this.f6213f = 0;
        this.f6214g = 0;
        this.f6216i = false;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42654a(long j, int i) {
        this.f6219l = j;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42653a(AbstractC1601i abstractC1601i, AbstractC1548ah.C1552d c1552d) {
        c1552d.m42708a();
        this.f6211d = c1552d.m42706c();
        this.f6212e = abstractC1601i.mo42213a(c1552d.m42707b(), 1);
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42652a(C2018p c2018p) {
        while (c2018p.m41536b() > 0) {
            int i = this.f6213f;
            if (i == 0) {
                byte[] bArr = c2018p.f8131a;
                int i2 = c2018p.f8132b;
                int i3 = c2018p.f8133c;
                while (true) {
                    if (i2 >= i3) {
                        c2018p.m41533c(i3);
                        break;
                    }
                    boolean z = (bArr[i2] & 255) == 255;
                    boolean z2 = this.f6216i && (bArr[i2] & 224) == 224;
                    this.f6216i = z;
                    if (z2) {
                        c2018p.m41533c(i2 + 1);
                        this.f6216i = false;
                        this.f6208a.f8131a[1] = bArr[i2];
                        this.f6214g = 2;
                        this.f6213f = 1;
                        break;
                    }
                    i2++;
                }
            } else if (i == 1) {
                int min = Math.min(c2018p.m41536b(), 4 - this.f6214g);
                c2018p.m41537a(this.f6208a.f8131a, this.f6214g, min);
                int i4 = this.f6214g + min;
                this.f6214g = i4;
                if (i4 >= 4) {
                    this.f6208a.m41533c(0);
                    if (!C1605m.m42594a(this.f6208a.m41524i(), this.f6209b)) {
                        this.f6214g = 0;
                        this.f6213f = 1;
                    } else {
                        this.f6218k = this.f6209b.f6328c;
                        if (!this.f6215h) {
                            this.f6217j = (this.f6209b.f6332g * 1000000) / this.f6209b.f6329d;
                            this.f6212e.mo42192a(Format.createAudioSampleFormat(this.f6211d, this.f6209b.f6327b, null, -1, 4096, this.f6209b.f6330e, this.f6209b.f6329d, null, null, 0, this.f6210c));
                            this.f6215h = true;
                        }
                        this.f6208a.m41533c(0);
                        this.f6212e.mo42306a(this.f6208a, 4);
                        this.f6213f = 2;
                    }
                }
            } else if (i != 2) {
                throw new IllegalStateException();
            } else {
                int min2 = Math.min(c2018p.m41536b(), this.f6218k - this.f6214g);
                this.f6212e.mo42306a(c2018p, min2);
                int i5 = this.f6214g + min2;
                this.f6214g = i5;
                int i6 = this.f6218k;
                if (i5 >= i6) {
                    this.f6212e.mo42313a(this.f6219l, 1, i6, 0, null);
                    this.f6219l += this.f6217j;
                    this.f6214g = 0;
                    this.f6213f = 0;
                }
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: b */
    public final void mo42651b() {
    }
}
