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
/* renamed from: androidx.media2.exoplayer.external.extractor.e.d */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/d.class */
public final class C1557d implements AbstractC1599g {

    /* renamed from: a */
    public static final AbstractC1602j f6011a = C1558e.f6015a;

    /* renamed from: b */
    private final C1559f f6012b = new C1559f();

    /* renamed from: c */
    private final C2018p f6013c = new C2018p(16384);

    /* renamed from: d */
    private boolean f6014d;

    /* renamed from: a */
    public static final /* synthetic */ AbstractC1599g[] m42698a() {
        return new AbstractC1599g[]{new C1557d()};
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final int mo42187a(AbstractC1600h abstractC1600h, C1636n c1636n) throws IOException, InterruptedException {
        int mo42609a = abstractC1600h.mo42609a(this.f6013c.f8131a, 0, 16384);
        if (mo42609a == -1) {
            return -1;
        }
        this.f6013c.m41533c(0);
        this.f6013c.m41535b(mo42609a);
        if (!this.f6014d) {
            this.f6012b.f6016a = 0L;
            this.f6014d = true;
        }
        this.f6012b.mo42652a(this.f6013c);
        return 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final void mo42189a(long j, long j2) {
        this.f6014d = false;
        this.f6012b.mo42655a();
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final void mo42186a(AbstractC1601i abstractC1601i) {
        this.f6012b.mo42653a(abstractC1601i, new AbstractC1548ah.C1552d(0, 1));
        abstractC1601i.mo42215a();
        abstractC1601i.mo42209a(new AbstractC1637o.C1639b(-9223372036854775807L));
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x007e, code lost:
        r6.mo42612a();
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x008e, code lost:
        if ((r9 - r8) < 8192) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0091, code lost:
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
            r3 = 7
            r0.mo42601c(r1, r2, r3)
            r0 = r7
            r1 = 0
            r0.m41533c(r1)
            r0 = r7
            int r0 = r0.m41532d()
            r11 = r0
            r0 = r11
            r1 = 44096(0xac40, float:6.1792E-41)
            if (r0 == r1) goto L9e
            r0 = r11
            r1 = 44097(0xac41, float:6.1793E-41)
            if (r0 == r1) goto L9e
            r0 = r6
            r0.mo42612a()
            int r9 = r9 + 1
            r0 = r9
            r1 = r8
            int r0 = r0 - r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 < r1) goto L93
            r0 = 0
            return r0
        L93:
            r0 = r6
            r1 = r9
            r0.mo42602c(r1)
            goto L55
        L9e:
            int r10 = r10 + 1
            r0 = r10
            r1 = 4
            if (r0 < r1) goto La9
            r0 = 1
            return r0
        La9:
            r0 = r7
            byte[] r0 = r0.f8131a
            r1 = r11
            int r0 = androidx.media2.exoplayer.external.audio.C1398b.m43020a(r0, r1)
            r11 = r0
            r0 = r11
            r1 = -1
            if (r0 != r1) goto Lbc
            r0 = 0
            return r0
        Lbc:
            r0 = r6
            r1 = r11
            r2 = 7
            int r1 = r1 - r2
            r0.mo42602c(r1)
            goto L58
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.p068e.C1557d.mo42188a(androidx.media2.exoplayer.external.extractor.h):boolean");
    }
}
