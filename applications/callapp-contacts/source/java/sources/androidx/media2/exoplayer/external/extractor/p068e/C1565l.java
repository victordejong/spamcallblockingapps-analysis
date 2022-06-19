package androidx.media2.exoplayer.external.extractor.p068e;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.extractor.p068e.AbstractC1548ah;
import androidx.media2.exoplayer.external.util.C2018p;
import java.util.Collections;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.extractor.e.l */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/l.class */
public final class C1565l implements AbstractC1566m {

    /* renamed from: a */
    private final List<AbstractC1548ah.C1549a> f6078a;

    /* renamed from: b */
    private final AbstractC1641q[] f6079b;

    /* renamed from: c */
    private boolean f6080c;

    /* renamed from: d */
    private int f6081d;

    /* renamed from: e */
    private int f6082e;

    /* renamed from: f */
    private long f6083f;

    public C1565l(List<AbstractC1548ah.C1549a> list) {
        this.f6078a = list;
        this.f6079b = new AbstractC1641q[list.size()];
    }

    /* renamed from: a */
    private boolean m42671a(C2018p c2018p, int i) {
        if (c2018p.m41536b() == 0) {
            return false;
        }
        if (c2018p.m41534c() != i) {
            this.f6080c = false;
        }
        this.f6081d--;
        return this.f6080c;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42655a() {
        this.f6080c = false;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42654a(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.f6080c = true;
        this.f6083f = j;
        this.f6082e = 0;
        this.f6081d = 2;
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42653a(AbstractC1601i abstractC1601i, AbstractC1548ah.C1552d c1552d) {
        for (int i = 0; i < this.f6079b.length; i++) {
            AbstractC1548ah.C1549a c1549a = this.f6078a.get(i);
            c1552d.m42708a();
            AbstractC1641q mo42213a = abstractC1601i.mo42213a(c1552d.m42707b(), 3);
            mo42213a.mo42192a(Format.createImageSampleFormat(c1552d.m42706c(), "application/dvbsubs", null, -1, 0, Collections.singletonList(c1549a.f5986c), c1549a.f5984a, null));
            this.f6079b[i] = mo42213a;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: a */
    public final void mo42652a(C2018p c2018p) {
        AbstractC1641q[] abstractC1641qArr;
        if (this.f6080c) {
            if (this.f6081d == 2 && !m42671a(c2018p, 32)) {
                return;
            }
            if (this.f6081d == 1 && !m42671a(c2018p, 0)) {
                return;
            }
            int i = c2018p.f8132b;
            int m41536b = c2018p.m41536b();
            for (AbstractC1641q abstractC1641q : this.f6079b) {
                c2018p.m41533c(i);
                abstractC1641q.mo42306a(c2018p, m41536b);
            }
            this.f6082e += m41536b;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1566m
    /* renamed from: b */
    public final void mo42651b() {
        if (this.f6080c) {
            for (AbstractC1641q abstractC1641q : this.f6079b) {
                abstractC1641q.mo42313a(this.f6083f, 1, this.f6082e, 0, null);
            }
            this.f6080c = false;
        }
    }
}
