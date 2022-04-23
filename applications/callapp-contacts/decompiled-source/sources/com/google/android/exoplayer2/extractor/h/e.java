package com.google.android.exoplayer2.extractor.h;

import com.google.android.exoplayer2.extractor.h;
import com.google.android.exoplayer2.extractor.h.ad;
import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.util.u;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/e.class */
public final class e implements h {

    /* renamed from: a  reason: collision with root package name */
    public static final l f21184a = _$$Lambda$e$1k6o44M8uk6NMw2epVz6YWhjOzo.INSTANCE;

    /* renamed from: b  reason: collision with root package name */
    private final int f21185b;

    /* renamed from: c  reason: collision with root package name */
    private final f f21186c;

    /* renamed from: d  reason: collision with root package name */
    private final u f21187d;
    private final u e;
    private final t f;
    private j g;
    private long h;
    private long i;
    private int j;
    private boolean k;
    private boolean l;
    private boolean m;

    public e() {
        this(0);
    }

    public e(int i) {
        this.f21185b = i;
        this.f21186c = new f(true);
        this.f21187d = new u(2048);
        this.j = -1;
        this.i = -1L;
        u uVar = new u(10);
        this.e = uVar;
        this.f = new t(uVar.f22335a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h[] a() {
        return new h[]{new e()};
    }

    private int b(i iVar) throws IOException {
        int i = 0;
        while (true) {
            iVar.d(this.e.f22335a, 0, 10);
            this.e.d(0);
            if (this.e.g() != 4801587) {
                break;
            }
            this.e.e(3);
            int n = this.e.n();
            i += n + 10;
            iVar.c(n);
        }
        iVar.a();
        iVar.c(i);
        if (this.i == -1) {
            this.i = i;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x014b, code lost:
        r10.k = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x016c, code lost:
        r21 = r20;
        r16 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0173, code lost:
        throw new com.google.android.exoplayer2.ParserException("Malformed ADTS stream");
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v127, types: [long] */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2, types: [long] */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.exoplayer2.extractor.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(com.google.android.exoplayer2.extractor.i r11, com.google.android.exoplayer2.extractor.u r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 668
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.h.e.a(com.google.android.exoplayer2.extractor.i, com.google.android.exoplayer2.extractor.u):int");
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final void a(long j, long j2) {
        this.l = false;
        this.f21186c.c();
        this.h = j2;
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final void a(j jVar) {
        this.g = jVar;
        this.f21186c.a(jVar, new ad.d(0, 1));
        jVar.a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0032, code lost:
        r6.a();
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0041, code lost:
        if ((r8 - r0) < 8192) goto L_0x0046;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0044, code lost:
        return false;
     */
    @Override // com.google.android.exoplayer2.extractor.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(com.google.android.exoplayer2.extractor.i r6) throws java.io.IOException {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            int r0 = r0.b(r1)
            r7 = r0
            r0 = r7
            r8 = r0
        L_0x0008:
            r0 = 0
            r9 = r0
            r0 = 0
            r10 = r0
        L_0x000e:
            r0 = r6
            r1 = r5
            com.google.android.exoplayer2.util.u r1 = r1.e
            byte[] r1 = r1.f22335a
            r2 = 0
            r3 = 2
            r0.d(r1, r2, r3)
            r0 = r5
            com.google.android.exoplayer2.util.u r0 = r0.e
            r1 = 0
            r0.d(r1)
            r0 = r5
            com.google.android.exoplayer2.util.u r0 = r0.e
            int r0 = r0.d()
            boolean r0 = com.google.android.exoplayer2.extractor.h.f.a(r0)
            if (r0 != 0) goto L_0x0050
            r0 = r6
            r0.a()
            int r8 = r8 + 1
            r0 = r8
            r1 = r7
            int r0 = r0 - r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 < r1) goto L_0x0046
            r0 = 0
            return r0
        L_0x0046:
            r0 = r6
            r1 = r8
            r0.c(r1)
            goto L_0x0008
        L_0x0050:
            int r9 = r9 + 1
            r0 = r9
            r1 = 4
            if (r0 < r1) goto L_0x0063
            r0 = r10
            r1 = 188(0xbc, float:2.63E-43)
            if (r0 <= r1) goto L_0x0063
            r0 = 1
            return r0
        L_0x0063:
            r0 = r6
            r1 = r5
            com.google.android.exoplayer2.util.u r1 = r1.e
            byte[] r1 = r1.f22335a
            r2 = 0
            r3 = 4
            r0.d(r1, r2, r3)
            r0 = r5
            com.google.android.exoplayer2.util.t r0 = r0.f
            r1 = 14
            r0.a(r1)
            r0 = r5
            com.google.android.exoplayer2.util.t r0 = r0.f
            r1 = 13
            int r0 = r0.c(r1)
            r11 = r0
            r0 = r11
            r1 = 6
            if (r0 > r1) goto L_0x008f
            r0 = 0
            return r0
        L_0x008f:
            r0 = r6
            r1 = r11
            r2 = 6
            int r1 = r1 - r2
            r0.c(r1)
            r0 = r10
            r1 = r11
            int r0 = r0 + r1
            r10 = r0
            goto L_0x000e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.h.e.a(com.google.android.exoplayer2.extractor.i):boolean");
    }
}
