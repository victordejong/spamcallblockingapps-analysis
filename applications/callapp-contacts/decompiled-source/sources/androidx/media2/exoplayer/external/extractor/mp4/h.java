package androidx.media2.exoplayer.external.extractor.mp4;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.g;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.extractor.j;
import androidx.media2.exoplayer.external.extractor.k;
import androidx.media2.exoplayer.external.extractor.mp4.a;
import androidx.media2.exoplayer.external.extractor.o;
import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.util.n;
import androidx.media2.exoplayer.external.util.p;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/h.class */
public final class h implements g, o {

    /* renamed from: a  reason: collision with root package name */
    public static final j f3357a = i.f3365a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3358b;

    /* renamed from: c  reason: collision with root package name */
    private final p f3359c;

    /* renamed from: d  reason: collision with root package name */
    private final p f3360d;
    private final p e;
    private final p f;
    private final ArrayDeque<a.C0081a> g;
    private int h;
    private int i;
    private long j;
    private int k;
    private p l;
    private int m;
    private int n;
    private int o;
    private boolean p;
    private i q;
    private a[] r;
    private long[][] s;
    private int t;
    private long u;
    private boolean v;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/h$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final l f3361a;

        /* renamed from: b  reason: collision with root package name */
        public final o f3362b;

        /* renamed from: c  reason: collision with root package name */
        public final q f3363c;

        /* renamed from: d  reason: collision with root package name */
        public int f3364d;

        public a(l lVar, o oVar, q qVar) {
            this.f3361a = lVar;
            this.f3362b = oVar;
            this.f3363c = qVar;
        }
    }

    public h() {
        this(0);
    }

    public h(int i) {
        this.f3358b = i;
        this.f = new p(16);
        this.g = new ArrayDeque<>();
        this.f3359c = new p(n.f4151a);
        this.f3360d = new p(4);
        this.e = new p();
        this.m = -1;
    }

    private static int a(o oVar, long j) {
        int a2 = oVar.a(j);
        int i = a2;
        if (a2 == -1) {
            i = oVar.b(j);
        }
        return i;
    }

    private static long a(o oVar, long j, long j2) {
        int a2 = a(oVar, j);
        return a2 == -1 ? j2 : Math.min(oVar.f3384c[a2], j2);
    }

    private ArrayList<o> a(a.C0081a aVar, k kVar, boolean z) throws ParserException {
        l a2;
        ArrayList<o> arrayList = new ArrayList<>();
        for (int i = 0; i < aVar.f3316d.size(); i++) {
            a.C0081a aVar2 = aVar.f3316d.get(i);
            if (aVar2.f3313a == 1953653099 && (a2 = b.a(aVar2, aVar.c(1836476516), -9223372036854775807L, (DrmInitData) null, z, this.v)) != null) {
                o a3 = b.a(a2, aVar2.d(1835297121).d(1835626086).d(1937007212), kVar);
                if (a3.f3383b != 0) {
                    arrayList.add(a3);
                }
            }
        }
        return arrayList;
    }

    private void a(a.C0081a aVar) throws ParserException {
        Metadata metadata;
        Format format;
        ArrayList arrayList = new ArrayList();
        k kVar = new k();
        a.b c2 = aVar.c(1969517665);
        Metadata metadata2 = null;
        if (c2 != null) {
            Metadata a2 = b.a(c2, this.v);
            metadata = a2;
            if (a2 != null) {
                kVar.a(a2);
                metadata = a2;
            }
        } else {
            metadata = null;
        }
        a.C0081a d2 = aVar.d(1835365473);
        if (d2 != null) {
            metadata2 = b.a(d2);
        }
        ArrayList<o> a3 = a(aVar, kVar, (this.f3358b & 1) != 0);
        int size = a3.size();
        long j = -9223372036854775807L;
        int i = -1;
        for (int i2 = 0; i2 < size; i2++) {
            o oVar = a3.get(i2);
            l lVar = oVar.f3382a;
            long j2 = lVar.e != -9223372036854775807L ? lVar.e : oVar.h;
            j = Math.max(j, j2);
            a aVar2 = new a(lVar, oVar, this.q.a(i2, lVar.f3371b));
            Format copyWithMaxInputSize = lVar.f.copyWithMaxInputSize(oVar.e + 30);
            if (lVar.f3371b != 2 || j2 <= 0) {
                format = copyWithMaxInputSize;
            } else {
                format = copyWithMaxInputSize;
                if (oVar.f3383b > 1) {
                    format = copyWithMaxInputSize.copyWithFrameRate(oVar.f3383b / (((float) j2) / 1000000.0f));
                }
            }
            aVar2.f3363c.a(g.a(lVar.f3371b, format, metadata, metadata2, kVar));
            if (lVar.f3371b == 2) {
                i = i;
                if (i == -1) {
                    i = arrayList.size();
                }
            } else {
                i = i;
            }
            arrayList.add(aVar2);
        }
        this.t = i;
        this.u = j;
        a[] aVarArr = (a[]) arrayList.toArray(new a[0]);
        this.r = aVarArr;
        this.s = a(aVarArr);
        this.q.a();
        this.q.a(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long[], long[][]] */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long[]] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Unknown variable types count: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long[][] a(androidx.media2.exoplayer.external.extractor.mp4.h.a[] r5) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.h.a(androidx.media2.exoplayer.external.extractor.mp4.h$a[]):long[][]");
    }

    private void b(long j) throws ParserException {
        while (!this.g.isEmpty() && this.g.peek().f3314b == j) {
            a.C0081a pop = this.g.pop();
            if (pop.f3313a == 1836019574) {
                a(pop);
                this.g.clear();
                this.h = 2;
            } else if (!this.g.isEmpty()) {
                this.g.peek().a(pop);
            }
        }
        if (this.h != 2) {
            d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ g[] c() {
        return new g[]{new h()};
    }

    private void d() {
        this.h = 0;
        this.k = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00f2, code lost:
        if (r0 < r18) goto L_0x00f5;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:216:0x04b3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0773 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0143 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x034a  */
    /* JADX WARN: Type inference failed for: r0v156, types: [long[][]] */
    /* JADX WARN: Type inference failed for: r0v157 */
    /* JADX WARN: Type inference failed for: r0v158, types: [long] */
    /* JADX WARN: Type inference failed for: r0v160, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v337, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v11 */
    /* JADX WARN: Type inference failed for: r18v12, types: [long] */
    /* JADX WARN: Type inference failed for: r18v13 */
    /* JADX WARN: Type inference failed for: r18v15 */
    /* JADX WARN: Type inference failed for: r18v16 */
    /* JADX WARN: Type inference failed for: r18v2, types: [long] */
    /* JADX WARN: Unknown variable types count: 7 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:69:0x0338 -> B:70:0x033b). Please submit an issue!!! */
    @Override // androidx.media2.exoplayer.external.extractor.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(androidx.media2.exoplayer.external.extractor.h r9, androidx.media2.exoplayer.external.extractor.n r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 1920
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.h.a(androidx.media2.exoplayer.external.extractor.h, androidx.media2.exoplayer.external.extractor.n):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v2, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0, types: [long] */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v2, types: [long] */
    /* JADX WARN: Type inference failed for: r20v1, types: [long] */
    /* JADX WARN: Type inference failed for: r20v13 */
    /* JADX WARN: Type inference failed for: r20v14 */
    /* JADX WARN: Type inference failed for: r20v15 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Unknown variable types count: 4 */
    @Override // androidx.media2.exoplayer.external.extractor.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.media2.exoplayer.external.extractor.o.a a(long r11) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.h.a(long):androidx.media2.exoplayer.external.extractor.o$a");
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final void a(long j, long j2) {
        this.g.clear();
        this.k = 0;
        this.m = -1;
        this.n = 0;
        this.o = 0;
        this.p = false;
        if (j == 0) {
            d();
            return;
        }
        a[] aVarArr = this.r;
        if (aVarArr != null) {
            for (a aVar : aVarArr) {
                o oVar = aVar.f3362b;
                int a2 = oVar.a(j2);
                int i = a2;
                if (a2 == -1) {
                    i = oVar.b(j2);
                }
                aVar.f3364d = i;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final void a(i iVar) {
        this.q = iVar;
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final boolean a(androidx.media2.exoplayer.external.extractor.h hVar) throws IOException, InterruptedException {
        return k.b(hVar);
    }

    @Override // androidx.media2.exoplayer.external.extractor.o
    public final long b() {
        return this.u;
    }

    @Override // androidx.media2.exoplayer.external.extractor.o
    public final boolean j_() {
        return true;
    }
}
