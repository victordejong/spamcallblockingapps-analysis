package androidx.media2.exoplayer.external.extractor.p068e;

import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.AbstractC1599g;
import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1602j;
import androidx.media2.exoplayer.external.extractor.AbstractC1637o;
import androidx.media2.exoplayer.external.extractor.C1503c;
import androidx.media2.exoplayer.external.extractor.C1636n;
import androidx.media2.exoplayer.external.extractor.p068e.AbstractC1548ah;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C2017o;
import androidx.media2.exoplayer.external.util.C2018p;
import java.io.IOException;
/* renamed from: androidx.media2.exoplayer.external.extractor.e.g */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/g.class */
public final class C1560g implements AbstractC1599g {

    /* renamed from: a */
    public static final AbstractC1602j f6029a = C1561h.f6042a;

    /* renamed from: b */
    private final int f6030b;

    /* renamed from: c */
    private final C1562i f6031c;

    /* renamed from: d */
    private final C2018p f6032d;

    /* renamed from: e */
    private final C2018p f6033e;

    /* renamed from: f */
    private final C2017o f6034f;

    /* renamed from: g */
    private AbstractC1601i f6035g;

    /* renamed from: h */
    private long f6036h;

    /* renamed from: i */
    private long f6037i;

    /* renamed from: j */
    private int f6038j;

    /* renamed from: k */
    private boolean f6039k;

    /* renamed from: l */
    private boolean f6040l;

    /* renamed from: m */
    private boolean f6041m;

    public C1560g() {
        this(0);
    }

    public C1560g(int i) {
        this.f6030b = i;
        this.f6031c = new C1562i(true);
        this.f6032d = new C2018p(2048);
        this.f6038j = -1;
        this.f6037i = -1L;
        C2018p c2018p = new C2018p(10);
        this.f6033e = c2018p;
        this.f6034f = new C2017o(c2018p.f8131a);
    }

    /* renamed from: a */
    public static final /* synthetic */ AbstractC1599g[] m42694a() {
        return new AbstractC1599g[]{new C1560g()};
    }

    /* renamed from: b */
    private int m42693b(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
        int i = 0;
        while (true) {
            abstractC1600h.mo42601c(this.f6033e.f8131a, 0, 10);
            this.f6033e.m41533c(0);
            if (this.f6033e.m41528f() != 4801587) {
                break;
            }
            this.f6033e.m41531d(3);
            int m41520m = this.f6033e.m41520m();
            i += m41520m + 10;
            abstractC1600h.mo42602c(m41520m);
        }
        abstractC1600h.mo42612a();
        abstractC1600h.mo42602c(i);
        if (this.f6037i == -1) {
            this.f6037i = i;
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v100 */
    /* JADX WARN: Type inference failed for: r0v101, types: [long] */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v54 */
    /* JADX WARN: Type inference failed for: r0v72 */
    /* JADX WARN: Type inference failed for: r0v87 */
    /* JADX WARN: Type inference failed for: r0v89 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Type inference failed for: r20v4 */
    /* JADX WARN: Type inference failed for: r21v0 */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* JADX WARN: Type inference failed for: r22v3 */
    /* JADX WARN: Type inference failed for: r22v4 */
    /* JADX WARN: Type inference failed for: r22v5 */
    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final int mo42187a(AbstractC1600h abstractC1600h, C1636n c1636n) throws IOException, InterruptedException {
        int i;
        ?? r22;
        long mo42600d = abstractC1600h.mo42600d();
        ?? r15 = ((this.f6030b & 1) == 0 || mo42600d == -1) ? false : true;
        if (r15 != false && !this.f6039k) {
            this.f6038j = -1;
            abstractC1600h.mo42612a();
            ?? r18 = false;
            if (abstractC1600h.mo42603c() == 0) {
                m42693b(abstractC1600h);
            }
            int i2 = 0;
            while (true) {
                i = i2;
                r22 = r18;
                if (!abstractC1600h.mo42604b(this.f6033e.f8131a, 0, 2, true)) {
                    break;
                }
                this.f6033e.m41533c(0);
                if (C1562i.m42691a(this.f6033e.m41532d())) {
                    i = i2;
                    r22 = r18;
                    if (!abstractC1600h.mo42604b(this.f6033e.f8131a, 0, 4, true)) {
                        break;
                    }
                    this.f6034f.m41554a(14);
                    int m41548c = this.f6034f.m41548c(13);
                    if (m41548c <= 6) {
                        this.f6039k = true;
                        throw new ParserException("Malformed ADTS stream");
                    }
                    ?? r0 = (r18 == true ? 1L : 0L) + m41548c;
                    int i3 = i2 + 1;
                    i = i3;
                    r22 = r0;
                    if (i3 == 1000) {
                        break;
                    }
                    i2 = i3;
                    r18 = r0;
                    if (!abstractC1600h.mo42610a(m41548c - 6, true)) {
                        i = i3;
                        r22 = r0;
                        break;
                    }
                } else {
                    i = 0;
                    r22 = r18;
                    break;
                }
            }
            abstractC1600h.mo42612a();
            if (i > 0) {
                this.f6038j = (int) ((r22 == true ? 1L : 0L) / i);
            } else {
                this.f6038j = -1;
            }
            this.f6039k = true;
        }
        int mo42609a = abstractC1600h.mo42609a(this.f6032d.f8131a, 0, 2048);
        ?? r21 = mo42609a == -1;
        if (!this.f6041m) {
            ?? r20 = r15 == true && this.f6038j > 0;
            if (r20 == false || this.f6031c.f6044a != -9223372036854775807L || r21 != false) {
                AbstractC1601i abstractC1601i = (AbstractC1601i) C1993a.m41690a(this.f6035g);
                if (r20 == false || this.f6031c.f6044a == -9223372036854775807L) {
                    abstractC1601i.mo42209a(new AbstractC1637o.C1639b(-9223372036854775807L));
                } else {
                    int i4 = this.f6038j;
                    abstractC1601i.mo42209a(new C1503c(mo42600d, this.f6037i, (int) (((i4 * 8) * 1000000) / this.f6031c.f6044a), this.f6038j));
                }
                this.f6041m = true;
            }
        }
        if (r21 == true) {
            return -1;
        }
        this.f6032d.m41533c(0);
        this.f6032d.m41535b(mo42609a);
        if (!this.f6040l) {
            this.f6031c.f6045b = this.f6036h;
            this.f6040l = true;
        }
        this.f6031c.mo42652a(this.f6032d);
        return 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final void mo42189a(long j, long j2) {
        this.f6040l = false;
        this.f6031c.m42685c();
        this.f6036h = j2;
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final void mo42186a(AbstractC1601i abstractC1601i) {
        this.f6035g = abstractC1601i;
        this.f6031c.mo42653a(abstractC1601i, new AbstractC1548ah.C1552d(0, 1));
        abstractC1601i.mo42215a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0032, code lost:
        r6.mo42612a();
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0041, code lost:
        if ((r8 - r0) < 8192) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0044, code lost:
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
            r0 = r5
            r1 = r6
            int r0 = r0.m42693b(r1)
            r7 = r0
            r0 = r7
            r8 = r0
        L8:
            r0 = 0
            r9 = r0
            r0 = 0
            r10 = r0
        Le:
            r0 = r6
            r1 = r5
            androidx.media2.exoplayer.external.util.p r1 = r1.f6033e
            byte[] r1 = r1.f8131a
            r2 = 0
            r3 = 2
            r0.mo42601c(r1, r2, r3)
            r0 = r5
            androidx.media2.exoplayer.external.util.p r0 = r0.f6033e
            r1 = 0
            r0.m41533c(r1)
            r0 = r5
            androidx.media2.exoplayer.external.util.p r0 = r0.f6033e
            int r0 = r0.m41532d()
            boolean r0 = androidx.media2.exoplayer.external.extractor.p068e.C1562i.m42691a(r0)
            if (r0 != 0) goto L50
            r0 = r6
            r0.mo42612a()
            int r8 = r8 + 1
            r0 = r8
            r1 = r7
            int r0 = r0 - r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 < r1) goto L46
            r0 = 0
            return r0
        L46:
            r0 = r6
            r1 = r8
            r0.mo42602c(r1)
            goto L8
        L50:
            int r9 = r9 + 1
            r0 = r9
            r1 = 4
            if (r0 < r1) goto L63
            r0 = r10
            r1 = 188(0xbc, float:2.63E-43)
            if (r0 <= r1) goto L63
            r0 = 1
            return r0
        L63:
            r0 = r6
            r1 = r5
            androidx.media2.exoplayer.external.util.p r1 = r1.f6033e
            byte[] r1 = r1.f8131a
            r2 = 0
            r3 = 4
            r0.mo42601c(r1, r2, r3)
            r0 = r5
            androidx.media2.exoplayer.external.util.o r0 = r0.f6034f
            r1 = 14
            r0.m41554a(r1)
            r0 = r5
            androidx.media2.exoplayer.external.util.o r0 = r0.f6034f
            r1 = 13
            int r0 = r0.m41548c(r1)
            r11 = r0
            r0 = r11
            r1 = 6
            if (r0 > r1) goto L8f
            r0 = 0
            return r0
        L8f:
            r0 = r6
            r1 = r11
            r2 = 6
            int r1 = r1 - r2
            r0.mo42602c(r1)
            r0 = r10
            r1 = r11
            int r0 = r0 + r1
            r10 = r0
            goto Le
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.p068e.C1560g.mo42188a(androidx.media2.exoplayer.external.extractor.h):boolean");
    }
}
