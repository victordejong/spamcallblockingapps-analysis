package androidx.media2.exoplayer.external.extractor.e;

import androidx.media2.exoplayer.external.extractor.e.ah;
import androidx.media2.exoplayer.external.extractor.h;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.extractor.j;
import androidx.media2.exoplayer.external.util.o;
import androidx.media2.exoplayer.external.util.p;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/g.class */
public final class g implements androidx.media2.exoplayer.external.extractor.g {

    /* renamed from: a  reason: collision with root package name */
    public static final j f3199a = h.f3203a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3200b;

    /* renamed from: c  reason: collision with root package name */
    private final i f3201c;

    /* renamed from: d  reason: collision with root package name */
    private final p f3202d;
    private final p e;
    private final o f;
    private i g;
    private long h;
    private long i;
    private int j;
    private boolean k;
    private boolean l;
    private boolean m;

    public g() {
        this(0);
    }

    public g(int i) {
        this.f3200b = i;
        this.f3201c = new i(true);
        this.f3202d = new p(2048);
        this.j = -1;
        this.i = -1L;
        p pVar = new p(10);
        this.e = pVar;
        this.f = new o(pVar.f4166a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ androidx.media2.exoplayer.external.extractor.g[] a() {
        return new androidx.media2.exoplayer.external.extractor.g[]{new g()};
    }

    private int b(h hVar) throws IOException, InterruptedException {
        int i = 0;
        while (true) {
            hVar.c(this.e.f4166a, 0, 10);
            this.e.c(0);
            if (this.e.f() != 4801587) {
                break;
            }
            this.e.d(3);
            int m = this.e.m();
            i += m + 10;
            hVar.c(m);
        }
        hVar.a();
        hVar.c(i);
        if (this.i == -1) {
            this.i = i;
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v101, types: [long] */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2, types: [long] */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // androidx.media2.exoplayer.external.extractor.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(androidx.media2.exoplayer.external.extractor.h r11, androidx.media2.exoplayer.external.extractor.n r12) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 564
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.e.g.a(androidx.media2.exoplayer.external.extractor.h, androidx.media2.exoplayer.external.extractor.n):int");
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final void a(long j, long j2) {
        this.l = false;
        this.f3201c.c();
        this.h = j2;
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final void a(i iVar) {
        this.g = iVar;
        this.f3201c.a(iVar, new ah.d(0, 1));
        iVar.a();
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
    @Override // androidx.media2.exoplayer.external.extractor.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(androidx.media2.exoplayer.external.extractor.h r6) throws java.io.IOException, java.lang.InterruptedException {
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
            androidx.media2.exoplayer.external.util.p r1 = r1.e
            byte[] r1 = r1.f4166a
            r2 = 0
            r3 = 2
            r0.c(r1, r2, r3)
            r0 = r5
            androidx.media2.exoplayer.external.util.p r0 = r0.e
            r1 = 0
            r0.c(r1)
            r0 = r5
            androidx.media2.exoplayer.external.util.p r0 = r0.e
            int r0 = r0.d()
            boolean r0 = androidx.media2.exoplayer.external.extractor.e.i.a(r0)
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
            androidx.media2.exoplayer.external.util.p r1 = r1.e
            byte[] r1 = r1.f4166a
            r2 = 0
            r3 = 4
            r0.c(r1, r2, r3)
            r0 = r5
            androidx.media2.exoplayer.external.util.o r0 = r0.f
            r1 = 14
            r0.a(r1)
            r0 = r5
            androidx.media2.exoplayer.external.util.o r0 = r0.f
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
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.e.g.a(androidx.media2.exoplayer.external.extractor.h):boolean");
    }
}
