package com.google.android.exoplayer2.extractor.f;

import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.f.a;
import com.google.android.exoplayer2.extractor.h;
import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.r;
import com.google.android.exoplayer2.extractor.v;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.u;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/g.class */
public final class g implements h, v {

    /* renamed from: a  reason: collision with root package name */
    public static final l f21056a = _$$Lambda$g$F9RNb1Ob2Kb87TQr4Aa1FBPMKS4.INSTANCE;

    /* renamed from: b  reason: collision with root package name */
    public j f21057b;

    /* renamed from: c  reason: collision with root package name */
    private final int f21058c;

    /* renamed from: d  reason: collision with root package name */
    private final u f21059d;
    private final u e;
    private final u f;
    private final u g;
    private final ArrayDeque<a.C0427a> h;
    private final i i;
    private final List<Metadata.Entry> j;
    private int k;
    private int l;
    private long m;
    private int n;
    private u o;
    private int p;
    private int q;
    private int r;
    private int s;
    private a[] t;
    private long[][] u;
    private int v;
    private long w;
    private int x;
    private MotionPhotoMetadata y;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/g$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final k f21060a;

        /* renamed from: b  reason: collision with root package name */
        public final n f21061b;

        /* renamed from: c  reason: collision with root package name */
        public final x f21062c;

        /* renamed from: d  reason: collision with root package name */
        public int f21063d;

        public a(k kVar, n nVar, x xVar) {
            this.f21060a = kVar;
            this.f21061b = nVar;
            this.f21062c = xVar;
        }
    }

    public g() {
        this(0);
    }

    public g(int i) {
        this.f21058c = i;
        this.k = (i & 4) != 0 ? 3 : 0;
        this.i = new i();
        this.j = new ArrayList();
        this.g = new u(16);
        this.h = new ArrayDeque<>();
        this.f21059d = new u(s.f22320a);
        this.e = new u(4);
        this.f = new u();
        this.p = -1;
    }

    private static int a(int i) {
        if (i != 1751476579) {
            return i != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    private static int a(n nVar, long j) {
        int a2 = nVar.a(j);
        int i = a2;
        if (a2 == -1) {
            i = nVar.b(j);
        }
        return i;
    }

    private static long a(n nVar, long j, long j2) {
        int a2 = a(nVar, j);
        return a2 == -1 ? j2 : Math.min(nVar.f21089c[a2], j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ k a(k kVar) {
        return kVar;
    }

    private void a(a.C0427a aVar) throws ParserException {
        Metadata metadata;
        Metadata metadata2;
        ArrayList arrayList = new ArrayList();
        boolean z = this.x == 1;
        r rVar = new r();
        a.b c2 = aVar.c(1969517665);
        if (c2 != null) {
            Pair<Metadata, Metadata> a2 = b.a(c2);
            metadata = (Metadata) a2.first;
            metadata2 = (Metadata) a2.second;
            if (metadata != null) {
                rVar.a(metadata);
            }
        } else {
            metadata2 = null;
            metadata = null;
        }
        a.C0427a d2 = aVar.d(1835365473);
        Metadata a3 = d2 != null ? b.a(d2) : null;
        List<n> a4 = b.a(aVar, rVar, -9223372036854775807L, null, (this.f21058c & 1) != 0, z, _$$Lambda$g$ufc9aTjlFv07_Pl368k76FOyDvs.INSTANCE);
        j jVar = (j) com.google.android.exoplayer2.util.a.b(this.f21057b);
        int size = a4.size();
        int i = -1;
        long j = -9223372036854775807L;
        for (int i2 = 0; i2 < size; i2++) {
            n nVar = a4.get(i2);
            if (nVar.f21088b != 0) {
                k kVar = nVar.f21087a;
                long j2 = kVar.e != -9223372036854775807L ? kVar.e : nVar.h;
                j = Math.max(j, j2);
                a aVar2 = new a(kVar, nVar, jVar.a(i2, kVar.f21076b));
                int i3 = nVar.e;
                Format.a buildUpon = kVar.f.buildUpon();
                buildUpon.l = i3 + 30;
                if (kVar.f21076b == 2 && j2 > 0 && nVar.f21088b > 1) {
                    buildUpon.r = nVar.f21088b / (((float) j2) / 1000000.0f);
                }
                f.a(kVar.f21076b, rVar, buildUpon);
                f.a(kVar.f21076b, metadata, a3, buildUpon, metadata2, this.j.isEmpty() ? null : new Metadata(this.j));
                aVar2.f21062c.a(buildUpon.a());
                if (kVar.f21076b == 2 && i == -1) {
                    i = arrayList.size();
                }
                arrayList.add(aVar2);
            }
        }
        this.v = i;
        this.w = j;
        a[] aVarArr = (a[]) arrayList.toArray(new a[0]);
        this.t = aVarArr;
        this.u = a(aVarArr);
        jVar.a();
        jVar.a(this);
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
    private static long[][] a(com.google.android.exoplayer2.extractor.f.g.a[] r5) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.f.g.a(com.google.android.exoplayer2.extractor.f.g$a[]):long[][]");
    }

    private void b(long j) throws ParserException {
        while (!this.h.isEmpty() && this.h.peek().f21014b == j) {
            a.C0427a pop = this.h.pop();
            if (pop.f21013a == 1836019574) {
                a(pop);
                this.h.clear();
                this.k = 2;
            } else if (!this.h.isEmpty()) {
                this.h.peek().a(pop);
            }
        }
        if (this.k != 2) {
            c();
        }
    }

    private void c() {
        this.k = 0;
        this.n = 0;
    }

    @RequiresNonNull({"tracks"})
    private void c(long j) {
        a[] aVarArr;
        for (a aVar : this.t) {
            n nVar = aVar.f21061b;
            int a2 = nVar.a(j);
            int i = a2;
            if (a2 == -1) {
                i = nVar.b(j);
            }
            aVar.f21063d = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h[] d() {
        return new h[]{new g()};
    }

    /* JADX WARN: Code restructure failed: missing block: B:95:0x038d, code lost:
        if (r0 < r23) goto L_0x0390;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:291:0x075a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0af2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:296:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:297:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:311:0x03e0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x03c4  */
    /* JADX WARN: Type inference failed for: r0v158, types: [long[][]] */
    /* JADX WARN: Type inference failed for: r0v159 */
    /* JADX WARN: Type inference failed for: r0v160, types: [long] */
    /* JADX WARN: Type inference failed for: r0v162, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v462, types: [long] */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v19 */
    /* JADX WARN: Type inference failed for: r23v2, types: [long] */
    /* JADX WARN: Type inference failed for: r23v20, types: [long] */
    /* JADX WARN: Type inference failed for: r23v21 */
    /* JADX WARN: Type inference failed for: r23v23 */
    /* JADX WARN: Type inference failed for: r23v24 */
    /* JADX WARN: Type inference failed for: r34v0 */
    /* JADX WARN: Type inference failed for: r34v1, types: [long] */
    /* JADX WARN: Type inference failed for: r34v3 */
    /* JADX WARN: Unknown variable types count: 7 */
    @Override // com.google.android.exoplayer2.extractor.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(com.google.android.exoplayer2.extractor.i r17, com.google.android.exoplayer2.extractor.u r18) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2815
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.f.g.a(com.google.android.exoplayer2.extractor.i, com.google.android.exoplayer2.extractor.u):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v2, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0, types: [long] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v2, types: [long] */
    /* JADX WARN: Type inference failed for: r20v1, types: [long] */
    /* JADX WARN: Type inference failed for: r20v13 */
    /* JADX WARN: Type inference failed for: r20v14 */
    /* JADX WARN: Type inference failed for: r20v15 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Unknown variable types count: 4 */
    @Override // com.google.android.exoplayer2.extractor.v
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.exoplayer2.extractor.v.a a(long r11) {
        /*
            Method dump skipped, instructions count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.f.g.a(long):com.google.android.exoplayer2.extractor.v$a");
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final void a(long j, long j2) {
        this.h.clear();
        this.n = 0;
        this.p = -1;
        this.q = 0;
        this.r = 0;
        this.s = 0;
        if (j == 0) {
            if (this.k != 3) {
                c();
                return;
            }
            this.i.a();
            this.j.clear();
        } else if (this.t != null) {
            c(j2);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final void a(j jVar) {
        this.f21057b = jVar;
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final boolean a() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final boolean a(i iVar) throws IOException {
        return j.a(iVar, (this.f21058c & 2) != 0);
    }

    @Override // com.google.android.exoplayer2.extractor.v
    public final long b() {
        return this.w;
    }
}
