package androidx.media2.exoplayer.external.extractor.p068e;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.extractor.p068e.AbstractC1548ah;
import androidx.media2.exoplayer.external.util.C2018p;
import androidx.media2.exoplayer.external.util.C2030z;
/* renamed from: androidx.media2.exoplayer.external.extractor.e.ac */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/ac.class */
public final class C1540ac implements AbstractC1587z {

    /* renamed from: a */
    private C2030z f5943a;

    /* renamed from: b */
    private AbstractC1641q f5944b;

    /* renamed from: c */
    private boolean f5945c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r1v2 */
    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1587z
    /* renamed from: a */
    public final void mo42632a(C2018p c2018p) {
        ?? r11 = true;
        if (!this.f5945c) {
            if (this.f5943a.m41481a() == -9223372036854775807L) {
                return;
            }
            this.f5944b.mo42192a(Format.createSampleFormat(null, "application/x-scte35", this.f5943a.m41481a()));
            this.f5945c = true;
        }
        int m41536b = c2018p.m41536b();
        this.f5944b.mo42306a(c2018p, m41536b);
        AbstractC1641q abstractC1641q = this.f5944b;
        C2030z c2030z = this.f5943a;
        if (c2030z.f8164c != -9223372036854775807L) {
            r11 = c2030z.f8164c + c2030z.f8163b;
        } else if (c2030z.f8162a != Long.MAX_VALUE) {
            r11 = c2030z.f8162a;
        }
        abstractC1641q.mo42313a(r11 == true ? 1L : 0L, 1, m41536b, 0, null);
    }

    @Override // androidx.media2.exoplayer.external.extractor.p068e.AbstractC1587z
    /* renamed from: a */
    public final void mo42631a(C2030z c2030z, AbstractC1601i abstractC1601i, AbstractC1548ah.C1552d c1552d) {
        this.f5943a = c2030z;
        c1552d.m42708a();
        AbstractC1641q mo42213a = abstractC1601i.mo42213a(c1552d.m42707b(), 4);
        this.f5944b = mo42213a;
        mo42213a.mo42192a(Format.createSampleFormat(c1552d.m42706c(), "application/x-scte35", null, -1, null));
    }
}
