package com.google.android.exoplayer2.extractor.p334h;

import com.google.android.exoplayer2.extractor.AbstractC11071h;
import com.google.android.exoplayer2.extractor.AbstractC11121i;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11133l;
import com.google.android.exoplayer2.extractor.p334h.AbstractC11079ad;
import com.google.android.exoplayer2.util.C11627t;
import com.google.android.exoplayer2.util.C11628u;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.extractor.h.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/e.class */
public final class C11089e implements AbstractC11071h {

    /* renamed from: a */
    public static final AbstractC11133l f36155a = _$$Lambda$e$1k6o44M8uk6NMw2epVz6YWhjOzo.INSTANCE;

    /* renamed from: b */
    private final int f36156b;

    /* renamed from: c */
    private final C11090f f36157c;

    /* renamed from: d */
    private final C11628u f36158d;

    /* renamed from: e */
    private final C11628u f36159e;

    /* renamed from: f */
    private final C11627t f36160f;

    /* renamed from: g */
    private AbstractC11130j f36161g;

    /* renamed from: h */
    private long f36162h;

    /* renamed from: i */
    private long f36163i;

    /* renamed from: j */
    private int f36164j;

    /* renamed from: k */
    private boolean f36165k;

    /* renamed from: l */
    private boolean f36166l;

    /* renamed from: m */
    private boolean f36167m;

    public C11089e() {
        this(0);
    }

    public C11089e(int i) {
        this.f36156b = i;
        this.f36157c = new C11090f(true);
        this.f36158d = new C11628u(2048);
        this.f36164j = -1;
        this.f36163i = -1L;
        C11628u c11628u = new C11628u(10);
        this.f36159e = c11628u;
        this.f36160f = new C11627t(c11628u.f38733a);
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC11071h[] m21512a() {
        return new AbstractC11071h[]{new C11089e()};
    }

    /* renamed from: b */
    private int m21511b(AbstractC11121i abstractC11121i) throws IOException {
        int i = 0;
        while (true) {
            abstractC11121i.mo21394d(this.f36159e.f38733a, 0, 10);
            this.f36159e.m19801d(0);
            if (this.f36159e.m19796g() != 4801587) {
                break;
            }
            this.f36159e.m19799e(3);
            int m19788n = this.f36159e.m19788n();
            i += m19788n + 10;
            abstractC11121i.mo21397c(m19788n);
        }
        abstractC11121i.mo21406a();
        abstractC11121i.mo21397c(i);
        if (this.f36163i == -1) {
            this.f36163i = i;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x014b, code lost:
        r10.f36165k = true;
        r0 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0158, code lost:
        r0 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x016c, code lost:
        r21 = r20;
        r16 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0173, code lost:
        throw new com.google.android.exoplayer2.ParserException("Malformed ADTS stream");
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v101 */
    /* JADX WARN: Type inference failed for: r0v105 */
    /* JADX WARN: Type inference failed for: r0v109 */
    /* JADX WARN: Type inference failed for: r0v115 */
    /* JADX WARN: Type inference failed for: r0v118 */
    /* JADX WARN: Type inference failed for: r0v121 */
    /* JADX WARN: Type inference failed for: r0v124 */
    /* JADX WARN: Type inference failed for: r0v126 */
    /* JADX WARN: Type inference failed for: r0v127, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v56 */
    /* JADX WARN: Type inference failed for: r0v74 */
    /* JADX WARN: Type inference failed for: r0v76 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v82 */
    /* JADX WARN: Type inference failed for: r0v87 */
    /* JADX WARN: Type inference failed for: r0v91 */
    /* JADX WARN: Type inference failed for: r0v97 */
    /* JADX WARN: Type inference failed for: r0v99 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v11 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v3 */
    /* JADX WARN: Type inference failed for: r22v4 */
    /* JADX WARN: Type inference failed for: r23v0 */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Type inference failed for: r23v3 */
    /* JADX WARN: Type inference failed for: r23v4 */
    /* JADX WARN: Type inference failed for: r23v5 */
    /* JADX WARN: Type inference failed for: r23v6 */
    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo21437a(com.google.android.exoplayer2.extractor.AbstractC11121i r11, com.google.android.exoplayer2.extractor.C11145u r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 668
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p334h.C11089e.mo21437a(com.google.android.exoplayer2.extractor.i, com.google.android.exoplayer2.extractor.u):int");
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21439a(long j, long j2) {
        this.f36166l = false;
        this.f36157c.m21503c();
        this.f36162h = j2;
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21436a(AbstractC11130j abstractC11130j) {
        this.f36161g = abstractC11130j;
        this.f36157c.mo21465a(abstractC11130j, new AbstractC11079ad.C11083d(0, 1));
        abstractC11130j.mo20907a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0032, code lost:
        r6.mo21406a();
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0041, code lost:
        if ((r8 - r0) < 8192) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0044, code lost:
        return false;
     */
    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo21438a(com.google.android.exoplayer2.extractor.AbstractC11121i r6) throws java.io.IOException {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            int r0 = r0.m21511b(r1)
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
            com.google.android.exoplayer2.util.u r1 = r1.f36159e
            byte[] r1 = r1.f38733a
            r2 = 0
            r3 = 2
            r0.mo21394d(r1, r2, r3)
            r0 = r5
            com.google.android.exoplayer2.util.u r0 = r0.f36159e
            r1 = 0
            r0.m19801d(r1)
            r0 = r5
            com.google.android.exoplayer2.util.u r0 = r0.f36159e
            int r0 = r0.m19802d()
            boolean r0 = com.google.android.exoplayer2.extractor.p334h.C11090f.m21509a(r0)
            if (r0 != 0) goto L50
            r0 = r6
            r0.mo21406a()
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
            r0.mo21397c(r1)
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
            com.google.android.exoplayer2.util.u r1 = r1.f36159e
            byte[] r1 = r1.f38733a
            r2 = 0
            r3 = 4
            r0.mo21394d(r1, r2, r3)
            r0 = r5
            com.google.android.exoplayer2.util.t r0 = r0.f36160f
            r1 = 14
            r0.m19826a(r1)
            r0 = r5
            com.google.android.exoplayer2.util.t r0 = r0.f36160f
            r1 = 13
            int r0 = r0.m19819c(r1)
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
            r0.mo21397c(r1)
            r0 = r10
            r1 = r11
            int r0 = r0 + r1
            r10 = r0
            goto Le
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p334h.C11089e.mo21438a(com.google.android.exoplayer2.extractor.i):boolean");
    }
}
