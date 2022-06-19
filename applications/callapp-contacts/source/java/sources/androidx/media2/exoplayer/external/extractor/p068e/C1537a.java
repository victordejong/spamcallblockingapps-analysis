package androidx.media2.exoplayer.external.extractor.p068e;

import androidx.media2.exoplayer.external.extractor.AbstractC1599g;
import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1602j;
import androidx.media2.exoplayer.external.extractor.AbstractC1637o;
import androidx.media2.exoplayer.external.extractor.C1636n;
import androidx.media2.exoplayer.external.extractor.p068e.AbstractC1548ah;
import androidx.media2.exoplayer.external.util.C2018p;
import java.io.IOException;
/* renamed from: androidx.media2.exoplayer.external.extractor.e.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/a.class */
public final class C1537a implements AbstractC1599g {

    /* renamed from: a */
    public static final AbstractC1602j f5931a = C1555b.f5998a;

    /* renamed from: b */
    private final C1556c f5932b = new C1556c();

    /* renamed from: c */
    private final C2018p f5933c = new C2018p(2786);

    /* renamed from: d */
    private boolean f5934d;

    /* renamed from: a */
    public static final /* synthetic */ AbstractC1599g[] m42729a() {
        return new AbstractC1599g[]{new C1537a()};
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final int mo42187a(AbstractC1600h abstractC1600h, C1636n c1636n) throws IOException, InterruptedException {
        int mo42609a = abstractC1600h.mo42609a(this.f5933c.f8131a, 0, 2786);
        if (mo42609a == -1) {
            return -1;
        }
        this.f5933c.m41533c(0);
        this.f5933c.m41535b(mo42609a);
        if (!this.f5934d) {
            this.f5932b.f5999a = 0L;
            this.f5934d = true;
        }
        this.f5932b.mo42652a(this.f5933c);
        return 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final void mo42189a(long j, long j2) {
        this.f5934d = false;
        this.f5932b.mo42655a();
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final void mo42186a(AbstractC1601i abstractC1601i) {
        this.f5932b.mo42653a(abstractC1601i, new AbstractC1548ah.C1552d(0, 1));
        abstractC1601i.mo42215a();
        abstractC1601i.mo42209a(new AbstractC1637o.C1639b(-9223372036854775807L));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0074, code lost:
        r6.mo42612a();
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0084, code lost:
        if ((r9 - r8) < 8192) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0087, code lost:
        return false;
     */
    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo42188a(androidx.media2.exoplayer.external.extractor.AbstractC1600h r6) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r5 = this;
            androidx.media2.exoplayer.external.util.p r0 = new androidx.media2.exoplayer.external.util.p
            r1 = r0
            r2 = 10
            r1.<init>(r2)
            r7 = r0
            r0 = 0
            r8 = r0
        Lc:
            r0 = r6
            r1 = r7
            byte[] r1 = r1.f8131a
            r2 = 0
            r3 = 10
            r0.mo42601c(r1, r2, r3)
            r0 = r7
            r1 = 0
            r0.m41533c(r1)
            r0 = r7
            int r0 = r0.m41528f()
            r1 = 4801587(0x494433, float:6.728456E-39)
            if (r0 != r1) goto L45
            r0 = r7
            r1 = 3
            r0.m41531d(r1)
            r0 = r7
            int r0 = r0.m41520m()
            r9 = r0
            r0 = r8
            r1 = r9
            r2 = 10
            int r1 = r1 + r2
            int r0 = r0 + r1
            r8 = r0
            r0 = r6
            r1 = r9
            r0.mo42602c(r1)
            goto Lc
        L45:
            r0 = r6
            r0.mo42612a()
            r0 = r6
            r1 = r8
            r0.mo42602c(r1)
            r0 = r8
            r9 = r0
        L55:
            r0 = 0
            r10 = r0
        L58:
            r0 = r6
            r1 = r7
            byte[] r1 = r1.f8131a
            r2 = 0
            r3 = 6
            r0.mo42601c(r1, r2, r3)
            r0 = r7
            r1 = 0
            r0.m41533c(r1)
            r0 = r7
            int r0 = r0.m41532d()
            r1 = 2935(0xb77, float:4.113E-42)
            if (r0 == r1) goto L94
            r0 = r6
            r0.mo42612a()
            int r9 = r9 + 1
            r0 = r9
            r1 = r8
            int r0 = r0 - r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 < r1) goto L89
            r0 = 0
            return r0
        L89:
            r0 = r6
            r1 = r9
            r0.mo42602c(r1)
            goto L55
        L94:
            int r10 = r10 + 1
            r0 = r10
            r1 = 4
            if (r0 < r1) goto L9f
            r0 = 1
            return r0
        L9f:
            r0 = r7
            byte[] r0 = r0.f8131a
            int r0 = androidx.media2.exoplayer.external.audio.C1394a.m43029a(r0)
            r11 = r0
            r0 = r11
            r1 = -1
            if (r0 != r1) goto Lb0
            r0 = 0
            return r0
        Lb0:
            r0 = r6
            r1 = r11
            r2 = 6
            int r1 = r1 - r2
            r0.mo42602c(r1)
            goto L58
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.p068e.C1537a.mo42188a(androidx.media2.exoplayer.external.extractor.h):boolean");
    }
}
