package com.google.android.exoplayer2.extractor.f;

import android.util.Pair;
import android.util.SparseArray;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.f.a;
import com.google.android.exoplayer2.extractor.h;
import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.r;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.util.ad;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.u;
import com.google.common.base.Function;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/e.class */
public final class e implements h {

    /* renamed from: a  reason: collision with root package name */
    public static final l f21045a = _$$Lambda$e$jFlk_laRqVUUJcTmnfBeVwAIvDU.INSTANCE;

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f21046b = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};

    /* renamed from: c  reason: collision with root package name */
    private static final Format f21047c;
    private long A;
    private long B;
    private b C;
    private int D;
    private int E;
    private int F;
    private boolean G;
    private j H;
    private x[] I;
    private x[] J;
    private boolean K;

    /* renamed from: d  reason: collision with root package name */
    private final int f21048d;
    private final k e;
    private final List<Format> f;
    private final SparseArray<b> g;
    private final u h;
    private final u i;
    private final u j;
    private final byte[] k;
    private final u l;
    private final ad m;
    private final com.google.android.exoplayer2.metadata.emsg.b n;
    private final u o;
    private final ArrayDeque<a.C0427a> p;
    private final ArrayDeque<a> q;
    private final x r;
    private int s;
    private int t;
    private long u;
    private int v;
    private u w;
    private long x;
    private int y;
    private long z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/e$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f21049a;

        /* renamed from: b  reason: collision with root package name */
        public final int f21050b;

        public a(long j, int i) {
            this.f21049a = j;
            this.f21050b = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/e$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final x f21051a;

        /* renamed from: d  reason: collision with root package name */
        public n f21054d;
        public c e;
        public int f;
        public int g;
        public int h;
        public int i;
        boolean j;

        /* renamed from: b  reason: collision with root package name */
        public final m f21052b = new m();

        /* renamed from: c  reason: collision with root package name */
        public final u f21053c = new u();
        private final u k = new u(1);
        private final u l = new u();

        public b(x xVar, n nVar, c cVar) {
            this.f21051a = xVar;
            this.f21054d = nVar;
            this.e = cVar;
            a(nVar, cVar);
        }

        public final int a(int i, int i2) {
            int i3;
            u uVar;
            l d2 = d();
            if (d2 == null) {
                return 0;
            }
            if (d2.f21082d != 0) {
                uVar = this.f21052b.p;
                i3 = d2.f21082d;
            } else {
                byte[] bArr = (byte[]) af.a(d2.e);
                this.l.a(bArr, bArr.length);
                uVar = this.l;
                i3 = bArr.length;
            }
            boolean c2 = this.f21052b.c(this.f);
            boolean z = c2 || i2 != 0;
            this.k.f22335a[0] = (byte) ((z ? 128 : 0) | i3);
            this.k.d(0);
            this.f21051a.a(this.k, 1);
            this.f21051a.a(uVar, i3);
            if (!z) {
                return i3 + 1;
            }
            if (!c2) {
                this.f21053c.a(8);
                byte[] bArr2 = this.f21053c.f22335a;
                bArr2[0] = (byte) 0;
                bArr2[1] = (byte) 1;
                bArr2[2] = (byte) ((i2 >> 8) & 255);
                bArr2[3] = (byte) (i2 & 255);
                bArr2[4] = (byte) ((i >> 24) & 255);
                bArr2[5] = (byte) ((i >> 16) & 255);
                bArr2[6] = (byte) ((i >> 8) & 255);
                bArr2[7] = (byte) (i & 255);
                this.f21051a.a(this.f21053c, 8);
                return i3 + 1 + 8;
            }
            u uVar2 = this.f21052b.p;
            int d3 = uVar2.d();
            uVar2.e(-2);
            int i4 = (d3 * 6) + 2;
            u uVar3 = uVar2;
            if (i2 != 0) {
                this.f21053c.a(i4);
                byte[] bArr3 = this.f21053c.f22335a;
                uVar2.a(bArr3, 0, i4);
                int i5 = (((bArr3[2] & 255) << 8) | (bArr3[3] & 255)) + i2;
                bArr3[2] = (byte) ((i5 >> 8) & 255);
                bArr3[3] = (byte) (i5 & 255);
                uVar3 = this.f21053c;
            }
            this.f21051a.a(uVar3, i4);
            return i3 + 1 + i4;
        }

        public final void a() {
            this.f21052b.a();
            this.f = 0;
            this.h = 0;
            this.g = 0;
            this.i = 0;
            this.j = false;
        }

        public final void a(long j) {
            for (int i = this.f; i < this.f21052b.f && this.f21052b.b(i) < j; i++) {
                if (this.f21052b.l[i]) {
                    this.i = i;
                }
            }
        }

        public final void a(DrmInitData drmInitData) {
            l a2 = this.f21054d.f21087a.a(((c) af.a(this.f21052b.f21083a)).f21037a);
            DrmInitData copyWithSchemeType = drmInitData.copyWithSchemeType(a2 != null ? a2.f21080b : null);
            Format.a buildUpon = this.f21054d.f21087a.f.buildUpon();
            buildUpon.n = copyWithSchemeType;
            this.f21051a.a(buildUpon.a());
        }

        public final void a(n nVar, c cVar) {
            this.f21054d = nVar;
            this.e = cVar;
            this.f21051a.a(nVar.f21087a.f);
            a();
        }

        public final long b() {
            return !this.j ? this.f21054d.f21089c[this.f] : this.f21052b.g[this.h];
        }

        public final boolean c() {
            this.f++;
            if (!this.j) {
                return false;
            }
            int i = this.g + 1;
            this.g = i;
            int[] iArr = this.f21052b.h;
            int i2 = this.h;
            if (i != iArr[i2]) {
                return true;
            }
            this.h = i2 + 1;
            this.g = 0;
            return false;
        }

        public final l d() {
            if (!this.j) {
                return null;
            }
            l a2 = this.f21052b.o != null ? this.f21052b.o : this.f21054d.f21087a.a(((c) af.a(this.f21052b.f21083a)).f21037a);
            if (a2 == null || !a2.f21079a) {
                return null;
            }
            return a2;
        }
    }

    static {
        Format.a aVar = new Format.a();
        aVar.k = "application/x-emsg";
        f21047c = aVar.a();
    }

    public e() {
        this(0);
    }

    public e(int i) {
        this(i, null);
    }

    public e(int i, ad adVar) {
        this(i, adVar, null, Collections.emptyList());
    }

    public e(int i, ad adVar, k kVar) {
        this(i, adVar, kVar, Collections.emptyList());
    }

    public e(int i, ad adVar, k kVar, List<Format> list) {
        this(i, adVar, kVar, list, null);
    }

    public e(int i, ad adVar, k kVar, List<Format> list, x xVar) {
        this.f21048d = i;
        this.m = adVar;
        this.e = kVar;
        this.f = Collections.unmodifiableList(list);
        this.r = xVar;
        this.n = new com.google.android.exoplayer2.metadata.emsg.b();
        this.o = new u(16);
        this.h = new u(s.f22320a);
        this.i = new u(5);
        this.j = new u();
        byte[] bArr = new byte[16];
        this.k = bArr;
        this.l = new u(bArr);
        this.p = new ArrayDeque<>();
        this.q = new ArrayDeque<>();
        this.g = new SparseArray<>();
        this.A = -9223372036854775807L;
        this.z = -9223372036854775807L;
        this.B = -9223372036854775807L;
        this.H = j.f21307a;
        this.I = new x[0];
        this.J = new x[0];
    }

    private static int a(int i) throws ParserException {
        if (i >= 0) {
            return i;
        }
        throw new ParserException("Unexpected negative value: ".concat(String.valueOf(i)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r26v0 */
    /* JADX WARN: Type inference failed for: r26v1, types: [long] */
    /* JADX WARN: Type inference failed for: r26v2 */
    /* JADX WARN: Type inference failed for: r26v3 */
    /* JADX WARN: Type inference failed for: r26v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int a(com.google.android.exoplayer2.extractor.f.e.b r9, int r10, int r11, com.google.android.exoplayer2.util.u r12, int r13) throws com.google.android.exoplayer2.ParserException {
        /*
            Method dump skipped, instructions count: 589
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.f.e.a(com.google.android.exoplayer2.extractor.f.e$b, int, int, com.google.android.exoplayer2.util.u, int):int");
    }

    private static Pair<Integer, c> a(u uVar) {
        uVar.d(12);
        return Pair.create(Integer.valueOf(uVar.j()), new c(uVar.j() - 1, uVar.j(), uVar.j(), uVar.j()));
    }

    private static DrmInitData a(List<a.b> list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            a.b bVar = list.get(i);
            arrayList = arrayList;
            if (bVar.f21013a == 1886614376) {
                arrayList = arrayList;
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArr = bVar.f21017b.f22335a;
                UUID a2 = h.a(bArr);
                if (a2 == null) {
                    n.a("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
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
        return sparseArray.size() == 1 ? sparseArray.valueAt(0) : (c) com.google.android.exoplayer2.util.a.b(sparseArray.get(i));
    }

    private static b a(u uVar, SparseArray<b> sparseArray) {
        uVar.d(8);
        int j = uVar.j() & 16777215;
        b b2 = b(sparseArray, uVar.j());
        if (b2 == null) {
            return null;
        }
        if ((j & 1) != 0) {
            long q = uVar.q();
            b2.f21052b.f21085c = q;
            b2.f21052b.f21086d = q;
        }
        c cVar = b2.e;
        b2.f21052b.f21083a = new c((j & 2) != 0 ? uVar.j() - 1 : cVar.f21037a, (j & 8) != 0 ? uVar.j() : cVar.f21038b, (j & 16) != 0 ? uVar.j() : cVar.f21039c, (j & 32) != 0 ? uVar.j() : cVar.f21040d);
        return b2;
    }

    private void a() {
        this.s = 0;
        this.v = 0;
    }

    private void a(long j) throws ParserException {
        while (!this.p.isEmpty() && this.p.peek().f21014b == j) {
            a(this.p.pop());
        }
        a();
    }

    private void a(a.C0427a aVar) throws ParserException {
        if (aVar.f21013a == 1836019574) {
            b(aVar);
        } else if (aVar.f21013a == 1836019558) {
            c(aVar);
        } else if (!this.p.isEmpty()) {
            this.p.peek().a(aVar);
        }
    }

    private static void a(a.C0427a aVar, SparseArray<b> sparseArray, int i, byte[] bArr) throws ParserException {
        int size = aVar.f21016d.size();
        for (int i2 = 0; i2 < size; i2++) {
            a.C0427a aVar2 = aVar.f21016d.get(i2);
            if (aVar2.f21013a == 1953653094) {
                b(aVar2, sparseArray, i, bArr);
            }
        }
    }

    private static void a(a.C0427a aVar, b bVar, int i) throws ParserException {
        List<a.b> list = aVar.f21015c;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            a.b bVar2 = list.get(i4);
            i2 = i2;
            i3 = i3;
            if (bVar2.f21013a == 1953658222) {
                u uVar = bVar2.f21017b;
                uVar.d(12);
                int o = uVar.o();
                i2 = i2;
                i3 = i3;
                if (o > 0) {
                    i3 += o;
                    i2++;
                }
            }
        }
        bVar.h = 0;
        bVar.g = 0;
        bVar.f = 0;
        bVar.f21052b.a(i2, i3);
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            a.b bVar3 = list.get(i7);
            i5 = i5;
            i6 = i6;
            if (bVar3.f21013a == 1953658222) {
                i6 = a(bVar, i5, i, bVar3.f21017b, i6);
                i5++;
            }
        }
    }

    private static void a(a.C0427a aVar, String str, m mVar) throws ParserException {
        byte[] bArr = null;
        u uVar = null;
        u uVar2 = null;
        for (int i = 0; i < aVar.f21015c.size(); i++) {
            a.b bVar = aVar.f21015c.get(i);
            u uVar3 = bVar.f21017b;
            if (bVar.f21013a == 1935828848) {
                uVar3.d(12);
                uVar = uVar;
                uVar2 = uVar2;
                if (uVar3.j() == 1936025959) {
                    uVar = uVar3;
                    uVar2 = uVar2;
                }
            } else {
                uVar = uVar;
                uVar2 = uVar2;
                if (bVar.f21013a == 1936158820) {
                    uVar3.d(12);
                    uVar = uVar;
                    uVar2 = uVar2;
                    if (uVar3.j() == 1936025959) {
                        uVar2 = uVar3;
                        uVar = uVar;
                    }
                }
            }
        }
        if (!(uVar == null || uVar2 == null)) {
            uVar.d(8);
            int a2 = com.google.android.exoplayer2.extractor.f.a.a(uVar.j());
            uVar.e(4);
            if (a2 == 1) {
                uVar.e(4);
            }
            if (uVar.j() == 1) {
                uVar2.d(8);
                int a3 = com.google.android.exoplayer2.extractor.f.a.a(uVar2.j());
                uVar2.e(4);
                if (a3 == 1) {
                    if (uVar2.h() == 0) {
                        throw new ParserException("Variable length description in sgpd found (unsupported)");
                    }
                } else if (a3 >= 2) {
                    uVar2.e(4);
                }
                if (uVar2.h() == 1) {
                    uVar2.e(1);
                    int c2 = uVar2.c();
                    if (uVar2.c() == 1) {
                        int c3 = uVar2.c();
                        byte[] bArr2 = new byte[16];
                        uVar2.a(bArr2, 0, 16);
                        if (c3 == 0) {
                            int c4 = uVar2.c();
                            bArr = new byte[c4];
                            uVar2.a(bArr, 0, c4);
                        }
                        mVar.m = true;
                        mVar.o = new l(true, str, c3, bArr2, (c2 & 240) >> 4, c2 & 15, bArr);
                        return;
                    }
                    return;
                }
                throw new ParserException("Entry count in sgpd != 1 (unsupported).");
            }
            throw new ParserException("Entry count in sbgp != 1 (unsupported).");
        }
    }

    private static void a(l lVar, u uVar, m mVar) throws ParserException {
        int i;
        int i2 = lVar.f21082d;
        uVar.d(8);
        boolean z = true;
        if ((uVar.j() & 16777215 & 1) == 1) {
            uVar.e(8);
        }
        int c2 = uVar.c();
        int o = uVar.o();
        if (o <= mVar.f) {
            if (c2 == 0) {
                boolean[] zArr = mVar.n;
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    i = i4;
                    if (i3 >= o) {
                        break;
                    }
                    int c3 = uVar.c();
                    i4 += c3;
                    zArr[i3] = c3 > i2;
                    i3++;
                }
            } else {
                if (c2 <= i2) {
                    z = false;
                }
                i = (c2 * o) + 0;
                Arrays.fill(mVar.n, 0, o, z);
            }
            Arrays.fill(mVar.n, o, mVar.f, false);
            if (i > 0) {
                mVar.a(i);
                return;
            }
            return;
        }
        throw new ParserException("Saiz sample count " + o + " is greater than fragment sample count" + mVar.f);
    }

    private static void a(u uVar, int i, m mVar) throws ParserException {
        uVar.d(i + 8);
        int j = uVar.j() & 16777215;
        if ((j & 1) == 0) {
            boolean z = (j & 2) != 0;
            int o = uVar.o();
            if (o == 0) {
                Arrays.fill(mVar.n, 0, mVar.f, false);
            } else if (o == mVar.f) {
                Arrays.fill(mVar.n, 0, o, z);
                mVar.a(uVar.a());
                mVar.a(uVar);
            } else {
                throw new ParserException("Senc sample count " + o + " is different from fragment sample count" + mVar.f);
            }
        } else {
            throw new ParserException("Overriding TrackEncryptionBox parameters is unsupported.");
        }
    }

    private static void a(u uVar, m mVar) throws ParserException {
        uVar.d(8);
        int j = uVar.j();
        if ((16777215 & j & 1) == 1) {
            uVar.e(8);
        }
        int o = uVar.o();
        if (o == 1) {
            mVar.f21086d += com.google.android.exoplayer2.extractor.f.a.a(j) == 0 ? uVar.h() : uVar.q();
            return;
        }
        throw new ParserException("Unexpected saio entry count: ".concat(String.valueOf(o)));
    }

    private static void a(u uVar, m mVar, byte[] bArr) throws ParserException {
        uVar.d(8);
        uVar.a(bArr, 0, 16);
        if (Arrays.equals(bArr, f21046b)) {
            a(uVar, 16, mVar);
        }
    }

    private static long b(u uVar) {
        uVar.d(8);
        return com.google.android.exoplayer2.extractor.f.a.a(uVar.j()) == 0 ? uVar.h() : uVar.q();
    }

    private static b b(SparseArray<b> sparseArray, int i) {
        return sparseArray.size() == 1 ? sparseArray.valueAt(0) : sparseArray.get(i);
    }

    private void b(a.C0427a aVar) throws ParserException {
        boolean z = true;
        com.google.android.exoplayer2.util.a.b(this.e == null, "Unexpected moov box.");
        DrmInitData a2 = a(aVar.f21015c);
        a.C0427a aVar2 = (a.C0427a) com.google.android.exoplayer2.util.a.b(aVar.d(1836475768));
        SparseArray sparseArray = new SparseArray();
        int size = aVar2.f21015c.size();
        long j = -9223372036854775807L;
        for (int i = 0; i < size; i++) {
            a.b bVar = aVar2.f21015c.get(i);
            if (bVar.f21013a == 1953654136) {
                Pair<Integer, c> a3 = a(bVar.f21017b);
                sparseArray.put(((Integer) a3.first).intValue(), (c) a3.second);
            } else if (bVar.f21013a == 1835362404) {
                j = b(bVar.f21017b);
            }
        }
        List<n> a4 = com.google.android.exoplayer2.extractor.f.b.a(aVar, new r(), j, a2, (this.f21048d & 16) != 0, false, new Function() { // from class: com.google.android.exoplayer2.extractor.f._$$Lambda$a5uFYaUeVQyW4_Cb1xe4BHO62Ng
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return e.this.a((k) obj);
            }
        });
        int size2 = a4.size();
        if (this.g.size() == 0) {
            for (int i2 = 0; i2 < size2; i2++) {
                n nVar = a4.get(i2);
                k kVar = nVar.f21087a;
                this.g.put(kVar.f21075a, new b(this.H.a(i2, kVar.f21076b), nVar, a(sparseArray, kVar.f21075a)));
                this.A = Math.max(this.A, kVar.e);
            }
            this.H.a();
            return;
        }
        if (this.g.size() != size2) {
            z = false;
        }
        com.google.android.exoplayer2.util.a.b(z);
        for (int i3 = 0; i3 < size2; i3++) {
            n nVar2 = a4.get(i3);
            k kVar2 = nVar2.f21087a;
            this.g.get(kVar2.f21075a).a(nVar2, a(sparseArray, kVar2.f21075a));
        }
    }

    private static void b(a.C0427a aVar, SparseArray<b> sparseArray, int i, byte[] bArr) throws ParserException {
        b a2 = a(((a.b) com.google.android.exoplayer2.util.a.b(aVar.c(1952868452))).f21017b, sparseArray);
        if (a2 != null) {
            m mVar = a2.f21052b;
            long j = mVar.r;
            boolean z = mVar.s;
            a2.a();
            a2.j = true;
            a.b c2 = aVar.c(1952867444);
            if (c2 == null || (i & 2) != 0) {
                mVar.r = j;
                mVar.s = z;
            } else {
                mVar.r = c(c2.f21017b);
                mVar.s = true;
            }
            a(aVar, a2, i);
            l a3 = a2.f21054d.f21087a.a(((c) com.google.android.exoplayer2.util.a.b(mVar.f21083a)).f21037a);
            a.b c3 = aVar.c(1935763834);
            if (c3 != null) {
                a((l) com.google.android.exoplayer2.util.a.b(a3), c3.f21017b, mVar);
            }
            a.b c4 = aVar.c(1935763823);
            if (c4 != null) {
                a(c4.f21017b, mVar);
            }
            a.b c5 = aVar.c(1936027235);
            if (c5 != null) {
                a(c5.f21017b, 0, mVar);
            }
            a(aVar, a3 != null ? a3.f21080b : null, mVar);
            int size = aVar.f21015c.size();
            for (int i2 = 0; i2 < size; i2++) {
                a.b bVar = aVar.f21015c.get(i2);
                if (bVar.f21013a == 1970628964) {
                    a(bVar.f21017b, mVar, bArr);
                }
            }
        }
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
    private void b(com.google.android.exoplayer2.extractor.i r6) throws java.io.IOException {
        /*
            r5 = this;
            r0 = r5
            android.util.SparseArray<com.google.android.exoplayer2.extractor.f.e$b> r0 = r0.g
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
            android.util.SparseArray<com.google.android.exoplayer2.extractor.f.e$b> r0 = r0.g
            r1 = r11
            java.lang.Object r0 = r0.valueAt(r1)
            com.google.android.exoplayer2.extractor.f.e$b r0 = (com.google.android.exoplayer2.extractor.f.e.b) r0
            com.google.android.exoplayer2.extractor.f.m r0 = r0.f21052b
            r12 = r0
            r0 = r8
            r13 = r0
            r0 = r9
            r14 = r0
            r0 = r12
            boolean r0 = r0.q
            if (r0 == 0) goto L_0x005f
            r0 = r8
            r13 = r0
            r0 = r9
            r14 = r0
            r0 = r12
            long r0 = r0.f21086d
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x005f
            r0 = r12
            long r0 = r0.f21086d
            r14 = r0
            r0 = r5
            android.util.SparseArray<com.google.android.exoplayer2.extractor.f.e$b> r0 = r0.g
            r1 = r11
            java.lang.Object r0 = r0.valueAt(r1)
            com.google.android.exoplayer2.extractor.f.e$b r0 = (com.google.android.exoplayer2.extractor.f.e.b) r0
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
            r0.s = r1
            return
        L_0x0076:
            r0 = r9
            r1 = r6
            long r1 = r1.c()
            long r0 = r0 - r1
            int r0 = (int) r0
            r11 = r0
            r0 = r11
            if (r0 < 0) goto L_0x00bc
            r0 = r6
            r1 = r11
            r0.b(r1)
            r0 = r8
            com.google.android.exoplayer2.extractor.f.m r0 = r0.f21052b
            r13 = r0
            r0 = r6
            r1 = r13
            com.google.android.exoplayer2.util.u r1 = r1.p
            byte[] r1 = r1.f22335a
            r2 = 0
            r3 = r13
            com.google.android.exoplayer2.util.u r3 = r3.p
            int r3 = r3.f22337c
            r0.b(r1, r2, r3)
            r0 = r13
            com.google.android.exoplayer2.util.u r0 = r0.p
            r1 = 0
            r0.d(r1)
            r0 = r13
            r1 = 0
            r0.q = r1
            return
        L_0x00bc:
            com.google.android.exoplayer2.ParserException r0 = new com.google.android.exoplayer2.ParserException
            r1 = r0
            java.lang.String r2 = "Offset to encryption data was negative."
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.f.e.b(com.google.android.exoplayer2.extractor.i):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h[] b() {
        return new h[]{new e()};
    }

    private static long c(u uVar) {
        uVar.d(8);
        return com.google.android.exoplayer2.extractor.f.a.a(uVar.j()) == 1 ? uVar.q() : uVar.h();
    }

    private void c(a.C0427a aVar) throws ParserException {
        a(aVar, this.g, this.f21048d, this.k);
        DrmInitData a2 = a(aVar.f21015c);
        if (a2 != null) {
            int size = this.g.size();
            for (int i = 0; i < size; i++) {
                this.g.valueAt(i).a(a2);
            }
        }
        if (this.z != -9223372036854775807L) {
            int size2 = this.g.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.g.valueAt(i2).a(this.z);
            }
            this.z = -9223372036854775807L;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [com.google.android.exoplayer2.extractor.x] */
    /* JADX WARN: Type inference failed for: r0v14, types: [com.google.android.exoplayer2.util.ad] */
    /* JADX WARN: Type inference failed for: r0v239, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [com.google.android.exoplayer2.util.ad] */
    /* JADX WARN: Type inference failed for: r0v48, types: [com.google.android.exoplayer2.extractor.x[]] */
    /* JADX WARN: Type inference failed for: r0v54, types: [com.google.android.exoplayer2.extractor.x] */
    /* JADX WARN: Type inference failed for: r14v0, types: [long] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v2, types: [long] */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v7, types: [long] */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1, types: [long] */
    /* JADX WARN: Type inference failed for: r18v8 */
    /* JADX WARN: Unknown variable types count: 9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean c(com.google.android.exoplayer2.extractor.i r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.f.e.c(com.google.android.exoplayer2.extractor.i):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0734 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0000 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v138, types: [long] */
    /* JADX WARN: Type inference failed for: r0v312, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59, types: [com.google.android.exoplayer2.util.ad] */
    /* JADX WARN: Type inference failed for: r0v63, types: [com.google.android.exoplayer2.extractor.x[]] */
    /* JADX WARN: Type inference failed for: r0v69, types: [com.google.android.exoplayer2.extractor.x] */
    /* JADX WARN: Type inference failed for: r22v0, types: [long] */
    /* JADX WARN: Type inference failed for: r22v15 */
    /* JADX WARN: Type inference failed for: r22v16, types: [long] */
    /* JADX WARN: Type inference failed for: r22v17 */
    /* JADX WARN: Type inference failed for: r22v20 */
    /* JADX WARN: Type inference failed for: r22v21 */
    /* JADX WARN: Type inference failed for: r22v22 */
    /* JADX WARN: Type inference failed for: r24v1 */
    /* JADX WARN: Type inference failed for: r24v10 */
    /* JADX WARN: Type inference failed for: r24v14 */
    /* JADX WARN: Type inference failed for: r24v15 */
    /* JADX WARN: Type inference failed for: r24v2, types: [long] */
    /* JADX WARN: Type inference failed for: r24v9 */
    /* JADX WARN: Unknown variable types count: 7 */
    @Override // com.google.android.exoplayer2.extractor.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(com.google.android.exoplayer2.extractor.i r11, com.google.android.exoplayer2.extractor.u r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1868
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.f.e.a(com.google.android.exoplayer2.extractor.i, com.google.android.exoplayer2.extractor.u):int");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final k a(k kVar) {
        return kVar;
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final void a(long j, long j2) {
        int size = this.g.size();
        for (int i = 0; i < size; i++) {
            this.g.valueAt(i).a();
        }
        this.q.clear();
        this.y = 0;
        this.z = j2;
        this.p.clear();
        a();
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final void a(j jVar) {
        int i;
        this.H = jVar;
        a();
        x[] xVarArr = new x[2];
        this.I = xVarArr;
        x xVar = this.r;
        if (xVar != null) {
            xVarArr[0] = xVar;
            i = 1;
        } else {
            i = 0;
        }
        int i2 = 100;
        int i3 = i;
        if ((this.f21048d & 4) != 0) {
            xVarArr[i] = this.H.a(100, 5);
            i3 = i + 1;
            i2 = 101;
        }
        x[] xVarArr2 = (x[]) af.a(this.I, i3);
        this.I = xVarArr2;
        for (x xVar2 : xVarArr2) {
            xVar2.a(f21047c);
        }
        this.J = new x[this.f.size()];
        int i4 = 0;
        while (i4 < this.J.length) {
            x a2 = this.H.a(i2, 3);
            a2.a(this.f.get(i4));
            this.J[i4] = a2;
            i4++;
            i2++;
        }
        k kVar = this.e;
        if (kVar != null) {
            this.g.put(0, new b(jVar.a(0, kVar.f21076b), new n(this.e, new long[0], new int[0], 0, new long[0], new int[0], 0L), new c(0, 0, 0, 0)));
            this.H.a();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final boolean a(i iVar) throws IOException {
        return j.a(iVar);
    }
}
