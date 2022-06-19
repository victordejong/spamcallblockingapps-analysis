package androidx.media2.exoplayer.external.extractor.p068e;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.extractor.p068e.AbstractC1548ah;
import androidx.media2.exoplayer.external.util.C2009j;
import androidx.media2.exoplayer.external.util.C2018p;
/* renamed from: androidx.media2.exoplayer.external.extractor.e.q */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/q.class */
public final class C1575q implements AbstractC1566m {

    /* renamed from: a */
    private final C2018p f6182a = new C2018p(10);

    /* renamed from: b */
    private AbstractC1641q f6183b;

    /* renamed from: c */
    private boolean f6184c;

    /* renamed from: d */
    private long f6185d;

    /* renamed from: e */
    private int f6186e;

    /* renamed from: f */
    private int f6187f;

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42655a() {
        this.f6184c = false;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42654a(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.f6184c = true;
        this.f6185d = j;
        this.f6186e = 0;
        this.f6187f = 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42653a(AbstractC1601i abstractC1601i, AbstractC1548ah.C1552d c1552d) {
        c1552d.m42708a();
        AbstractC1641q mo42213a = abstractC1601i.mo42213a(c1552d.m42707b(), 4);
        this.f6183b = mo42213a;
        mo42213a.mo42192a(Format.createSampleFormat(c1552d.m42706c(), "application/id3", null, -1, null));
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42652a(C2018p c2018p) {
        if (!this.f6184c) {
            return;
        }
        int m41536b = c2018p.m41536b();
        int i = this.f6187f;
        if (i < 10) {
            int min = Math.min(m41536b, 10 - i);
            System.arraycopy(c2018p.f8131a, c2018p.f8132b, this.f6182a.f8131a, this.f6187f, min);
            if (this.f6187f + min == 10) {
                this.f6182a.m41533c(0);
                if (73 != this.f6182a.m41534c() || 68 != this.f6182a.m41534c() || 51 != this.f6182a.m41534c()) {
                    C2009j.m41584a("Id3Reader", "Discarding invalid ID3 tag");
                    this.f6184c = false;
                    return;
                }
                this.f6182a.m41531d(3);
                this.f6186e = this.f6182a.m41520m() + 10;
            }
        }
        int min2 = Math.min(m41536b, this.f6186e - this.f6187f);
        this.f6183b.mo42306a(c2018p, min2);
        this.f6187f += min2;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: b */
    public final void mo42651b() {
        int i;
        if (!this.f6184c || (i = this.f6186e) == 0 || this.f6187f != i) {
            return;
        }
        this.f6183b.mo42313a(this.f6185d, 1, i, 0, null);
        this.f6184c = false;
    }
}
