package androidx.media2.exoplayer.external.extractor.mp4;

import android.util.Pair;
import android.util.SparseArray;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.c;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.g;
import androidx.media2.exoplayer.external.extractor.h;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.extractor.j;
import androidx.media2.exoplayer.external.extractor.mp4.a;
import androidx.media2.exoplayer.external.extractor.q;
import androidx.media2.exoplayer.external.util.n;
import androidx.media2.exoplayer.external.util.p;
import androidx.media2.exoplayer.external.util.z;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/e.class */
public final class e implements g {

    /* renamed from: a  reason: collision with root package name */
    public static final j f3345a = f.f3355a;

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f3346b = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};

    /* renamed from: c  reason: collision with root package name */
    private static final Format f3347c = Format.createSampleFormat(null, "application/x-emsg", Long.MAX_VALUE);
    private long A;
    private long B;
    private long C;
    private b D;
    private int E;
    private int F;
    private int G;
    private boolean H;
    private boolean I;
    private i J;
    private q[] K;
    private q[] L;
    private boolean M;

    /* renamed from: d  reason: collision with root package name */
    private final int f3348d;
    private final l e;
    private final List<Format> f;
    private final DrmInitData g;
    private final SparseArray<b> h;
    private final p i;
    private final p j;
    private final p k;
    private final byte[] l;
    private final p m;
    private final z n;
    private final androidx.media2.exoplayer.external.metadata.emsg.b o;
    private final p p;
    private final ArrayDeque<a.C0081a> q;
    private final ArrayDeque<a> r;
    private final q s;
    private int t;
    private int u;
    private long v;
    private int w;
    private p x;
    private long y;
    private int z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/e$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f3349a;

        /* renamed from: b  reason: collision with root package name */
        public final int f3350b;

        public a(long j, int i) {
            this.f3349a = j;
            this.f3350b = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/e$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final q f3351a;

        /* renamed from: c  reason: collision with root package name */
        public l f3353c;

        /* renamed from: d  reason: collision with root package name */
        public c f3354d;
        public int e;
        public int f;
        public int g;
        public int h;

        /* renamed from: b  reason: collision with root package name */
        public final n f3352b = new n();
        final p i = new p(1);
        final p j = new p();

        public b(q qVar) {
            this.f3351a = qVar;
        }

        public final void a() {
            this.f3352b.a();
            this.e = 0;
            this.g = 0;
            this.f = 0;
            this.h = 0;
        }

        public final void a(long j) {
            long a2 = c.a(j);
            for (int i = this.e; i < this.f3352b.f && this.f3352b.b(i) < a2; i++) {
                if (this.f3352b.l[i]) {
                    this.h = i;
                }
            }
        }

        public final void a(DrmInitData drmInitData) {
            m a2 = this.f3353c.a(this.f3352b.f3378a.f3337a);
            this.f3351a.a(this.f3353c.f.copyWithDrmInitData(drmInitData.copyWithSchemeType(a2 != null ? a2.f3375b : null)));
        }

        public final void a(l lVar, c cVar) {
            this.f3353c = (l) androidx.media2.exoplayer.external.util.a.a(lVar);
            this.f3354d = (c) androidx.media2.exoplayer.external.util.a.a(cVar);
            this.f3351a.a(lVar.f);
            a();
        }

        public final boolean b() {
            this.e++;
            int i = this.f + 1;
            this.f = i;
            int[] iArr = this.f3352b.h;
            int i2 = this.g;
            if (i != iArr[i2]) {
                return true;
            }
            this.g = i2 + 1;
            this.f = 0;
            return false;
        }

        final m c() {
            m a2 = this.f3352b.o != null ? this.f3352b.o : this.f3353c.a(this.f3352b.f3378a.f3337a);
            if (a2 == null || !a2.f3374a) {
                return null;
            }
            return a2;
        }
    }

    public e() {
        this(0);
    }

    public e(int i) {
        this(i, null);
    }

    public e(int i, z zVar) {
        this(i, zVar, null, null);
    }

    public e(int i, z zVar, l lVar, DrmInitData drmInitData) {
        this(i, zVar, lVar, drmInitData, Collections.emptyList());
    }

    public e(int i, z zVar, l lVar, DrmInitData drmInitData, List<Format> list) {
        this(i, zVar, lVar, drmInitData, list, null);
    }

    public e(int i, z zVar, l lVar, DrmInitData drmInitData, List<Format> list, q qVar) {
        this.f3348d = i | (lVar != null ? 8 : 0);
        this.n = zVar;
        this.e = lVar;
        this.g = drmInitData;
        this.f = Collections.unmodifiableList(list);
        this.s = qVar;
        this.o = new androidx.media2.exoplayer.external.metadata.emsg.b();
        this.p = new p(16);
        this.i = new p(n.f4151a);
        this.j = new p(5);
        this.k = new p();
        byte[] bArr = new byte[16];
        this.l = bArr;
        this.m = new p(bArr);
        this.q = new ArrayDeque<>();
        this.r = new ArrayDeque<>();
        this.h = new SparseArray<>();
        this.B = -9223372036854775807L;
        this.A = -9223372036854775807L;
        this.C = -9223372036854775807L;
        b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r27v0 */
    /* JADX WARN: Type inference failed for: r27v1, types: [long] */
    /* JADX WARN: Type inference failed for: r27v2 */
    /* JADX WARN: Type inference failed for: r27v3 */
    /* JADX WARN: Type inference failed for: r27v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int a(androidx.media2.exoplayer.external.extractor.mp4.e.b r9, int r10, long r11, int r13, androidx.media2.exoplayer.external.util.p r14, int r15) {
        /*
            Method dump skipped, instructions count: 549
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.e.a(androidx.media2.exoplayer.external.extractor.mp4.e$b, int, long, int, androidx.media2.exoplayer.external.util.p, int):int");
    }

    private static Pair<Integer, c> a(p pVar) {
        pVar.c(12);
        return Pair.create(Integer.valueOf(pVar.i()), new c(pVar.n() - 1, pVar.n(), pVar.n(), pVar.i()));
    }

    private static DrmInitData a(List<a.b> list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            a.b bVar = list.get(i);
            arrayList = arrayList;
            if (bVar.f3313a == 1886614376) {
                arrayList = arrayList;
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArr = bVar.f3317b.f4166a;
                UUID a2 = j.a(bArr);
                if (a2 == null) {
                    androidx.media2.exoplayer.external.util.j.a("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList.add(new DrmInitData.SchemeData(a2, "video/mp4", bArr));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(arrayList);
    }

    private static c a(SparseArray<c> sparseArray, int i) {
        return sparseArray.size() == 1 ? sparseArray.valueAt(0) : (c) androidx.media2.exoplayer.external.util.a.a(sparseArray.get(i));
    }

    private static b a(p pVar, SparseArray<b> sparseArray) {
        pVar.c(8);
        int i = pVar.i() & 16777215;
        b b2 = b(sparseArray, pVar.i());
        if (b2 == null) {
            return null;
        }
        if ((i & 1) != 0) {
            long p = pVar.p();
            b2.f3352b.f3380c = p;
            b2.f3352b.f3381d = p;
        }
        c cVar = b2.f3354d;
        b2.f3352b.f3378a = new c((i & 2) != 0 ? pVar.n() - 1 : cVar.f3337a, (i & 8) != 0 ? pVar.n() : cVar.f3338b, (i & 16) != 0 ? pVar.n() : cVar.f3339c, (i & 32) != 0 ? pVar.n() : cVar.f3340d);
        return b2;
    }

    private void a(long j) throws ParserException {
        while (!this.q.isEmpty() && this.q.peek().f3314b == j) {
            a(this.q.pop());
        }
        b();
    }

    private void a(a.C0081a aVar) throws ParserException {
        if (aVar.f3313a == 1836019574) {
            b(aVar);
        } else if (aVar.f3313a == 1836019558) {
            c(aVar);
        } else if (!this.q.isEmpty()) {
            this.q.peek().a(aVar);
        }
    }

    private static void a(a.C0081a aVar, SparseArray<b> sparseArray, int i, byte[] bArr) throws ParserException {
        int size = aVar.f3316d.size();
        for (int i2 = 0; i2 < size; i2++) {
            a.C0081a aVar2 = aVar.f3316d.get(i2);
            if (aVar2.f3313a == 1953653094) {
                b(aVar2, sparseArray, i, bArr);
            }
        }
    }

    private static void a(a.C0081a aVar, b bVar, long j, int i) {
        List<a.b> list = aVar.f3315c;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            a.b bVar2 = list.get(i4);
            i2 = i2;
            i3 = i3;
            if (bVar2.f3313a == 1953658222) {
                p pVar = bVar2.f3317b;
                pVar.c(12);
                int n = pVar.n();
                i2 = i2;
                i3 = i3;
                if (n > 0) {
                    i3 += n;
                    i2++;
                }
            }
        }
        bVar.g = 0;
        bVar.f = 0;
        bVar.e = 0;
        bVar.f3352b.a(i2, i3);
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            a.b bVar3 = list.get(i7);
            i5 = i5;
            i6 = i6;
            if (bVar3.f3313a == 1953658222) {
                i6 = a(bVar, i5, j, i, bVar3.f3317b, i6);
                i5++;
            }
        }
    }

    private static void a(m mVar, p pVar, n nVar) throws ParserException {
        int i;
        int i2 = mVar.f3377d;
        pVar.c(8);
        boolean z = true;
        if ((pVar.i() & 16777215 & 1) == 1) {
            pVar.d(8);
        }
        int c2 = pVar.c();
        int n = pVar.n();
        if (n == nVar.f) {
            if (c2 == 0) {
                boolean[] zArr = nVar.n;
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    i = i4;
                    if (i3 >= n) {
                        break;
                    }
                    int c3 = pVar.c();
                    i4 += c3;
                    zArr[i3] = c3 > i2;
                    i3++;
                }
            } else {
                if (c2 <= i2) {
                    z = false;
                }
                i = (c2 * n) + 0;
                Arrays.fill(nVar.n, 0, n, z);
            }
            nVar.a(i);
            return;
        }
        int i5 = nVar.f;
        StringBuilder sb = new StringBuilder(41);
        sb.append("Length mismatch: ");
        sb.append(n);
        sb.append(", ");
        sb.append(i5);
        throw new ParserException(sb.toString());
    }

    private static void a(p pVar, int i, n nVar) throws ParserException {
        pVar.c(i + 8);
        int i2 = pVar.i() & 16777215;
        if ((i2 & 1) == 0) {
            boolean z = (i2 & 2) != 0;
            int n = pVar.n();
            if (n == nVar.f) {
                Arrays.fill(nVar.n, 0, n, z);
                nVar.a(pVar.b());
                nVar.a(pVar);
                return;
            }
            int i3 = nVar.f;
            StringBuilder sb = new StringBuilder(41);
            sb.append("Length mismatch: ");
            sb.append(n);
            sb.append(", ");
            sb.append(i3);
            throw new ParserException(sb.toString());
        }
        throw new ParserException("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    private static void a(p pVar, n nVar) throws ParserException {
        pVar.c(8);
        int i = pVar.i();
        if ((16777215 & i & 1) == 1) {
            pVar.d(8);
        }
        int n = pVar.n();
        if (n == 1) {
            nVar.f3381d += androidx.media2.exoplayer.external.extractor.mp4.a.a(i) == 0 ? pVar.g() : pVar.p();
            return;
        }
        StringBuilder sb = new StringBuilder(40);
        sb.append("Unexpected saio entry count: ");
        sb.append(n);
        throw new ParserException(sb.toString());
    }

    private static void a(p pVar, n nVar, byte[] bArr) throws ParserException {
        pVar.c(8);
        pVar.a(bArr, 0, 16);
        if (Arrays.equals(bArr, f3346b)) {
            a(pVar, 16, nVar);
        }
    }

    private static void a(p pVar, p pVar2, String str, n nVar) throws ParserException {
        byte[] bArr;
        pVar.c(8);
        int i = pVar.i();
        if (pVar.i() == 1936025959) {
            if (androidx.media2.exoplayer.external.extractor.mp4.a.a(i) == 1) {
                pVar.d(4);
            }
            if (pVar.i() == 1) {
                pVar2.c(8);
                int i2 = pVar2.i();
                if (pVar2.i() == 1936025959) {
                    int a2 = androidx.media2.exoplayer.external.extractor.mp4.a.a(i2);
                    if (a2 == 1) {
                        if (pVar2.g() == 0) {
                            throw new ParserException("Variable length description in sgpd found (unsupported)");
                        }
                    } else if (a2 >= 2) {
                        pVar2.d(4);
                    }
                    if (pVar2.g() == 1) {
                        pVar2.d(1);
                        int c2 = pVar2.c();
                        if (pVar2.c() == 1) {
                            int c3 = pVar2.c();
                            byte[] bArr2 = new byte[16];
                            pVar2.a(bArr2, 0, 16);
                            if (c3 == 0) {
                                int c4 = pVar2.c();
                                bArr = new byte[c4];
                                pVar2.a(bArr, 0, c4);
                            } else {
                                bArr = null;
                            }
                            nVar.m = true;
                            nVar.o = new m(true, str, c3, bArr2, (c2 & 240) >> 4, c2 & 15, bArr);
                            return;
                        }
                        return;
                    }
                    throw new ParserException("Entry count in sgpd != 1 (unsupported).");
                }
                return;
            }
            throw new ParserException("Entry count in sbgp != 1 (unsupported).");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ g[] a() {
        return new g[]{new e()};
    }

    private static long b(p pVar) {
        pVar.c(8);
        return androidx.media2.exoplayer.external.extractor.mp4.a.a(pVar.i()) == 0 ? pVar.g() : pVar.p();
    }

    private static b b(SparseArray<b> sparseArray, int i) {
        return sparseArray.size() == 1 ? sparseArray.valueAt(0) : sparseArray.get(i);
    }

    private void b() {
        this.t = 0;
        this.w = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(androidx.media2.exoplayer.external.extractor.h r6) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r5 = this;
            r0 = r5
            android.util.SparseArray<androidx.media2.exoplayer.external.extractor.mp4.e$b> r0 = r0.h
            int r0 = r0.size()
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r9 = r0
            r0 = 0
            r11 = r0
        L_0x0012:
            r0 = r11
            r1 = r7
            if (r0 >= r1) goto L_0x006c
            r0 = r5
            android.util.SparseArray<androidx.media2.exoplayer.external.extractor.mp4.e$b> r0 = r0.h
            r1 = r11
            java.lang.Object r0 = r0.valueAt(r1)
            androidx.media2.exoplayer.external.extractor.mp4.e$b r0 = (androidx.media2.exoplayer.external.extractor.mp4.e.b) r0
            androidx.media2.exoplayer.external.extractor.mp4.n r0 = r0.f3352b
            r12 = r0
            r0 = r8
            r13 = r0
            r0 = r9
            r14 = r0
            r0 = r12
            boolean r0 = r0.r
            if (r0 == 0) goto L_0x005f
            r0 = r8
            r13 = r0
            r0 = r9
            r14 = r0
            r0 = r12
            long r0 = r0.f3381d
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x005f
            r0 = r12
            long r0 = r0.f3381d
            r14 = r0
            r0 = r5
            android.util.SparseArray<androidx.media2.exoplayer.external.extractor.mp4.e$b> r0 = r0.h
            r1 = r11
            java.lang.Object r0 = r0.valueAt(r1)
            androidx.media2.exoplayer.external.extractor.mp4.e$b r0 = (androidx.media2.exoplayer.external.extractor.mp4.e.b) r0
            r13 = r0
        L_0x005f:
            int r11 = r11 + 1
            r0 = r13
            r8 = r0
            r0 = r14
            r9 = r0
            goto L_0x0012
        L_0x006c:
            r0 = r8
            if (r0 != 0) goto L_0x0076
            r0 = r5
            r1 = 3
            r0.t = r1
            return
        L_0x0076:
            r0 = r9
            r1 = r6
            long r1 = r1.c()
            long r0 = r0 - r1
            int r0 = (int) r0
            r11 = r0
            r0 = r11
            if (r0 < 0) goto L_0x00b4
            r0 = r6
            r1 = r11
            r0.b(r1)
            r0 = r8
            androidx.media2.exoplayer.external.extractor.mp4.n r0 = r0.f3352b
            r8 = r0
            r0 = r6
            r1 = r8
            androidx.media2.exoplayer.external.util.p r1 = r1.q
            byte[] r1 = r1.f4166a
            r2 = 0
            r3 = r8
            int r3 = r3.p
            r0.b(r1, r2, r3)
            r0 = r8
            androidx.media2.exoplayer.external.util.p r0 = r0.q
            r1 = 0
            r0.c(r1)
            r0 = r8
            r1 = 0
            r0.r = r1
            return
        L_0x00b4:
            androidx.media2.exoplayer.external.ParserException r0 = new androidx.media2.exoplayer.external.ParserException
            r1 = r0
            java.lang.String r2 = "Offset to encryption data was negative."
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.e.b(androidx.media2.exoplayer.external.extractor.h):void");
    }

    private void b(a.C0081a aVar) throws ParserException {
        boolean z = true;
        androidx.media2.exoplayer.external.util.a.b(this.e == null, "Unexpected moov box.");
        DrmInitData drmInitData = this.g;
        if (drmInitData == null) {
            drmInitData = a(aVar.f3315c);
        }
        a.C0081a d2 = aVar.d(1836475768);
        SparseArray sparseArray = new SparseArray();
        int size = d2.f3315c.size();
        long j = -9223372036854775807L;
        for (int i = 0; i < size; i++) {
            a.b bVar = d2.f3315c.get(i);
            if (bVar.f3313a == 1953654136) {
                Pair<Integer, c> a2 = a(bVar.f3317b);
                sparseArray.put(((Integer) a2.first).intValue(), (c) a2.second);
            } else if (bVar.f3313a == 1835362404) {
                j = b(bVar.f3317b);
            }
        }
        SparseArray sparseArray2 = new SparseArray();
        int size2 = aVar.f3316d.size();
        for (int i2 = 0; i2 < size2; i2++) {
            a.C0081a aVar2 = aVar.f3316d.get(i2);
            if (aVar2.f3313a == 1953653099) {
                l a3 = androidx.media2.exoplayer.external.extractor.mp4.b.a(aVar2, aVar.c(1836476516), j, drmInitData, (this.f3348d & 16) != 0, false);
                if (a3 != null) {
                    sparseArray2.put(a3.f3370a, a3);
                }
            }
        }
        int size3 = sparseArray2.size();
        if (this.h.size() == 0) {
            for (int i3 = 0; i3 < size3; i3++) {
                l lVar = (l) sparseArray2.valueAt(i3);
                b bVar2 = new b(this.J.a(i3, lVar.f3371b));
                bVar2.a(lVar, a(sparseArray, lVar.f3370a));
                this.h.put(lVar.f3370a, bVar2);
                this.B = Math.max(this.B, lVar.e);
            }
            c();
            this.J.a();
            return;
        }
        if (this.h.size() != size3) {
            z = false;
        }
        androidx.media2.exoplayer.external.util.a.b(z);
        for (int i4 = 0; i4 < size3; i4++) {
            l lVar2 = (l) sparseArray2.valueAt(i4);
            this.h.get(lVar2.f3370a).a(lVar2, a(sparseArray, lVar2.f3370a));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void b(androidx.media2.exoplayer.external.extractor.mp4.a.C0081a r6, android.util.SparseArray<androidx.media2.exoplayer.external.extractor.mp4.e.b> r7, int r8, byte[] r9) throws androidx.media2.exoplayer.external.ParserException {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.e.b(androidx.media2.exoplayer.external.extractor.mp4.a$a, android.util.SparseArray, int, byte[]):void");
    }

    private static long c(p pVar) {
        pVar.c(8);
        return androidx.media2.exoplayer.external.extractor.mp4.a.a(pVar.i()) == 1 ? pVar.p() : pVar.g();
    }

    private void c() {
        int i;
        if (this.K == null) {
            q[] qVarArr = new q[2];
            this.K = qVarArr;
            q qVar = this.s;
            if (qVar != null) {
                qVarArr[0] = qVar;
                i = 1;
            } else {
                i = 0;
            }
            int i2 = i;
            if ((this.f3348d & 4) != 0) {
                qVarArr[i] = this.J.a(this.h.size(), 4);
                i2 = i + 1;
            }
            q[] qVarArr2 = (q[]) Arrays.copyOf(this.K, i2);
            this.K = qVarArr2;
            for (q qVar2 : qVarArr2) {
                qVar2.a(f3347c);
            }
        }
        if (this.L == null) {
            this.L = new q[this.f.size()];
            for (int i3 = 0; i3 < this.L.length; i3++) {
                q a2 = this.J.a(this.h.size() + 1 + i3, 3);
                a2.a(this.f.get(i3));
                this.L[i3] = a2;
            }
        }
    }

    private void c(a.C0081a aVar) throws ParserException {
        a(aVar, this.h, this.f3348d, this.l);
        DrmInitData a2 = this.g != null ? null : a(aVar.f3315c);
        if (a2 != null) {
            int size = this.h.size();
            for (int i = 0; i < size; i++) {
                this.h.valueAt(i).a(a2);
            }
        }
        if (this.A != -9223372036854775807L) {
            int size2 = this.h.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.h.valueAt(i2).a(this.A);
            }
            this.A = -9223372036854775807L;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [androidx.media2.exoplayer.external.extractor.q] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [androidx.media2.exoplayer.external.util.z] */
    /* JADX WARN: Type inference failed for: r0v282, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v283, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [androidx.media2.exoplayer.external.util.z] */
    /* JADX WARN: Type inference failed for: r0v53, types: [androidx.media2.exoplayer.external.extractor.q[]] */
    /* JADX WARN: Type inference failed for: r0v59, types: [androidx.media2.exoplayer.external.extractor.q] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4, types: [long] */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2, types: [long] */
    /* JADX WARN: Type inference failed for: r17v8 */
    /* JADX WARN: Unknown variable types count: 9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean c(androidx.media2.exoplayer.external.extractor.h r9) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 1462
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.e.c(androidx.media2.exoplayer.external.extractor.h):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:195:0x070d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v149, types: [long] */
    /* JADX WARN: Type inference failed for: r0v310, types: [long] */
    /* JADX WARN: Type inference failed for: r0v61, types: [androidx.media2.exoplayer.external.util.z] */
    /* JADX WARN: Type inference failed for: r0v65, types: [androidx.media2.exoplayer.external.extractor.q[]] */
    /* JADX WARN: Type inference failed for: r0v71, types: [androidx.media2.exoplayer.external.extractor.q] */
    /* JADX WARN: Type inference failed for: r22v0, types: [long] */
    /* JADX WARN: Type inference failed for: r22v16 */
    /* JADX WARN: Type inference failed for: r22v17, types: [long] */
    /* JADX WARN: Type inference failed for: r22v18 */
    /* JADX WARN: Type inference failed for: r22v20 */
    /* JADX WARN: Type inference failed for: r22v22 */
    /* JADX WARN: Type inference failed for: r22v23 */
    /* JADX WARN: Type inference failed for: r22v24 */
    /* JADX WARN: Type inference failed for: r22v7 */
    /* JADX WARN: Type inference failed for: r22v8 */
    /* JADX WARN: Type inference failed for: r24v0 */
    /* JADX WARN: Type inference failed for: r24v1, types: [long] */
    /* JADX WARN: Type inference failed for: r24v13 */
    /* JADX WARN: Unknown variable types count: 7 */
    @Override // androidx.media2.exoplayer.external.extractor.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(androidx.media2.exoplayer.external.extractor.h r11, androidx.media2.exoplayer.external.extractor.n r12) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 1829
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.mp4.e.a(androidx.media2.exoplayer.external.extractor.h, androidx.media2.exoplayer.external.extractor.n):int");
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final void a(long j, long j2) {
        int size = this.h.size();
        for (int i = 0; i < size; i++) {
            this.h.valueAt(i).a();
        }
        this.r.clear();
        this.z = 0;
        this.A = j2;
        this.q.clear();
        this.I = false;
        b();
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final void a(i iVar) {
        this.J = iVar;
        l lVar = this.e;
        if (lVar != null) {
            b bVar = new b(iVar.a(0, lVar.f3371b));
            bVar.a(this.e, new c(0, 0, 0, 0));
            this.h.put(0, bVar);
            c();
            this.J.a();
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final boolean a(h hVar) throws IOException, InterruptedException {
        return k.a(hVar);
    }
}
