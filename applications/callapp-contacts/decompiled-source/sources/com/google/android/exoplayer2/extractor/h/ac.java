package com.google.android.exoplayer2.extractor.h;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.h;
import com.google.android.exoplayer2.extractor.h.ad;
import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.v;
import com.google.android.exoplayer2.util.ad;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.util.u;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/ac.class */
public final class ac implements h {

    /* renamed from: a  reason: collision with root package name */
    public static final l f21149a = _$$Lambda$ac$j92iK8MWpKkExENsbUAK0jO8p_4.INSTANCE;

    /* renamed from: b  reason: collision with root package name */
    private final int f21150b;

    /* renamed from: c  reason: collision with root package name */
    private final int f21151c;

    /* renamed from: d  reason: collision with root package name */
    private final List<ad> f21152d;
    private final u e;
    private final SparseIntArray f;
    private final ad.c g;
    private final SparseArray<ad> h;
    private final SparseBooleanArray i;
    private final SparseBooleanArray j;
    private final ab k;
    private aa l;
    private j m;
    private int n;
    private boolean o;
    private boolean p;
    private boolean q;
    private ad r;
    private int s;
    private int t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/ac$a.class */
    public final class a implements x {

        /* renamed from: b  reason: collision with root package name */
        private final t f21154b = new t(new byte[4]);

        public a() {
        }

        @Override // com.google.android.exoplayer2.extractor.h.x
        public final void a(com.google.android.exoplayer2.util.ad adVar, j jVar, ad.d dVar) {
        }

        @Override // com.google.android.exoplayer2.extractor.h.x
        public final void a(u uVar) {
            if (uVar.c() == 0 && (uVar.c() & 128) != 0) {
                uVar.e(6);
                int a2 = uVar.a() / 4;
                for (int i = 0; i < a2; i++) {
                    uVar.a(this.f21154b, 4);
                    int c2 = this.f21154b.c(16);
                    this.f21154b.b(3);
                    if (c2 == 0) {
                        this.f21154b.b(13);
                    } else {
                        int c3 = this.f21154b.c(13);
                        if (ac.this.h.get(c3) == null) {
                            ac.this.h.put(c3, new y(new b(c3)));
                            ac.b(ac.this);
                        }
                    }
                }
                if (ac.this.f21150b != 2) {
                    ac.this.h.remove(0);
                }
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/h/ac$b.class */
    final class b implements x {

        /* renamed from: b  reason: collision with root package name */
        private final t f21156b = new t(new byte[5]);

        /* renamed from: c  reason: collision with root package name */
        private final SparseArray<ad> f21157c = new SparseArray<>();

        /* renamed from: d  reason: collision with root package name */
        private final SparseIntArray f21158d = new SparseIntArray();
        private final int e;

        public b(int i) {
            this.e = i;
        }

        @Override // com.google.android.exoplayer2.extractor.h.x
        public final void a(com.google.android.exoplayer2.util.ad adVar, j jVar, ad.d dVar) {
        }

        /* JADX WARN: Code restructure failed: missing block: B:74:0x0333, code lost:
            if (r0 == 5) goto L_0x0336;
         */
        @Override // com.google.android.exoplayer2.extractor.h.x
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a(com.google.android.exoplayer2.util.u r10) {
            /*
                Method dump skipped, instructions count: 1265
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.h.ac.b.a(com.google.android.exoplayer2.util.u):void");
        }
    }

    public ac() {
        this(0);
    }

    public ac(int i) {
        this(1, i, 112800);
    }

    public ac(int i, int i2, int i3) {
        this(i, new com.google.android.exoplayer2.util.ad(0L), new g(i2), i3);
    }

    public ac(int i, com.google.android.exoplayer2.util.ad adVar, ad.c cVar) {
        this(i, adVar, cVar, 112800);
    }

    public ac(int i, com.google.android.exoplayer2.util.ad adVar, ad.c cVar, int i2) {
        this.g = (ad.c) com.google.android.exoplayer2.util.a.b(cVar);
        this.f21151c = i2;
        this.f21150b = i;
        if (i == 1 || i == 2) {
            this.f21152d = Collections.singletonList(adVar);
        } else {
            ArrayList arrayList = new ArrayList();
            this.f21152d = arrayList;
            arrayList.add(adVar);
        }
        this.e = new u(new byte[9400], 0);
        this.i = new SparseBooleanArray();
        this.j = new SparseBooleanArray();
        this.h = new SparseArray<>();
        this.f = new SparseIntArray();
        this.k = new ab(i2);
        this.t = -1;
        a();
    }

    private void a() {
        this.i.clear();
        this.h.clear();
        SparseArray<ad> a2 = this.g.a();
        int size = a2.size();
        for (int i = 0; i < size; i++) {
            this.h.put(a2.keyAt(i), a2.valueAt(i));
        }
        this.h.put(0, new y(new a()));
        this.r = null;
    }

    static /* synthetic */ int b(ac acVar) {
        int i = acVar.n;
        acVar.n = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h[] b() {
        return new h[]{new ac()};
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final int a(i iVar, com.google.android.exoplayer2.extractor.u uVar) throws IOException {
        boolean z;
        long j;
        long d2 = iVar.d();
        if (this.o) {
            long j2 = -9223372036854775807L;
            if (!((d2 == -1 || this.f21150b == 2) ? false : true) || this.k.f21148d) {
                if (!this.p) {
                    this.p = true;
                    if (this.k.i != -9223372036854775807L) {
                        aa aaVar = new aa(this.k.f21146b, this.k.i, d2, this.t, this.f21151c);
                        this.l = aaVar;
                        this.m.a(aaVar.a());
                    } else {
                        this.m.a(new v.b(this.k.i));
                    }
                }
                if (this.q) {
                    this.q = false;
                    a(0L, 0L);
                    if (iVar.c() != 0) {
                        uVar.f21328a = 0L;
                        return 1;
                    }
                }
                aa aaVar2 = this.l;
                if (aaVar2 != null && aaVar2.b()) {
                    return this.l.a(iVar, uVar);
                }
            } else {
                ab abVar = this.k;
                int i = this.t;
                if (i <= 0) {
                    return abVar.a(iVar);
                }
                if (!abVar.f) {
                    long d3 = iVar.d();
                    int min = (int) Math.min(abVar.f21145a, d3);
                    long j3 = d3 - min;
                    if (iVar.c() != j3) {
                        uVar.f21328a = j3;
                        return 1;
                    }
                    abVar.f21147c.a(min);
                    iVar.a();
                    iVar.d(abVar.f21147c.f22335a, 0, min);
                    u uVar2 = abVar.f21147c;
                    int i2 = uVar2.f22336b;
                    for (int i3 = uVar2.f22337c - 1; i3 >= i2; i3--) {
                        if (uVar2.f22335a[i3] == 71) {
                            j2 = ae.a(uVar2, i3, i);
                            if (j2 != -9223372036854775807L) {
                                break;
                            }
                        }
                    }
                    abVar.h = j2;
                    abVar.f = true;
                    return 0;
                } else if (abVar.h == -9223372036854775807L) {
                    return abVar.a(iVar);
                } else {
                    if (!abVar.e) {
                        int min2 = (int) Math.min(abVar.f21145a, iVar.d());
                        if (iVar.c() != 0) {
                            uVar.f21328a = 0L;
                            return 1;
                        }
                        abVar.f21147c.a(min2);
                        iVar.a();
                        iVar.d(abVar.f21147c.f22335a, 0, min2);
                        u uVar3 = abVar.f21147c;
                        int i4 = uVar3.f22336b;
                        int i5 = uVar3.f22337c;
                        while (true) {
                            if (i4 >= i5) {
                                j = -9223372036854775807L;
                                break;
                            }
                            if (uVar3.f22335a[i4] == 71) {
                                j = ae.a(uVar3, i4, i);
                                if (j != -9223372036854775807L) {
                                    break;
                                }
                            }
                            i4++;
                        }
                        abVar.g = j;
                        abVar.e = true;
                        return 0;
                    } else if (abVar.g == -9223372036854775807L) {
                        return abVar.a(iVar);
                    } else {
                        abVar.i = abVar.f21146b.b(abVar.h) - abVar.f21146b.b(abVar.g);
                        return abVar.a(iVar);
                    }
                }
            }
        }
        byte[] bArr = this.e.f22335a;
        if (9400 - this.e.f22336b < 188) {
            int a2 = this.e.a();
            if (a2 > 0) {
                System.arraycopy(bArr, this.e.f22336b, bArr, 0, a2);
            }
            this.e.a(bArr, a2);
        }
        while (true) {
            if (this.e.a() >= 188) {
                z = true;
                break;
            }
            int i6 = this.e.f22337c;
            int a3 = iVar.a(bArr, i6, 9400 - i6);
            if (a3 == -1) {
                z = false;
                break;
            }
            this.e.c(i6 + a3);
        }
        if (!z) {
            return -1;
        }
        int i7 = this.e.f22336b;
        int i8 = this.e.f22337c;
        int a4 = ae.a(this.e.f22335a, i7, i8);
        this.e.d(a4);
        int i9 = a4 + 188;
        if (i9 > i8) {
            int i10 = this.s + (a4 - i7);
            this.s = i10;
            if (this.f21150b == 2 && i10 > 376) {
                throw new ParserException("Cannot find sync byte. Most likely not a Transport Stream.");
            }
        } else {
            this.s = 0;
        }
        int i11 = this.e.f22337c;
        if (i9 > i11) {
            return 0;
        }
        int j4 = this.e.j();
        if ((8388608 & j4) != 0) {
            this.e.d(i9);
            return 0;
        }
        int i12 = ((4194304 & j4) != 0 ? 1 : 0) | 0;
        int i13 = (2096896 & j4) >> 8;
        boolean z2 = (j4 & 32) != 0;
        ad adVar = (j4 & 16) != 0 ? this.h.get(i13) : null;
        if (adVar == null) {
            this.e.d(i9);
            return 0;
        }
        if (this.f21150b != 2) {
            int i14 = j4 & 15;
            int i15 = this.f.get(i13, i14 - 1);
            this.f.put(i13, i14);
            if (i15 == i14) {
                this.e.d(i9);
                return 0;
            } else if (i14 != ((i15 + 1) & 15)) {
                adVar.a();
            }
        }
        int i16 = i12;
        if (z2) {
            int c2 = this.e.c();
            i16 = i12 | ((this.e.c() & 64) != 0 ? 2 : 0);
            this.e.e(c2 - 1);
        }
        boolean z3 = this.o;
        if (this.f21150b == 2 || z3 || !this.j.get(i13, false)) {
            this.e.c(i9);
            adVar.a(this.e, i16);
            this.e.c(i11);
        }
        if (this.f21150b != 2 && !z3 && this.o && d2 != -1) {
            this.q = true;
        }
        this.e.d(i9);
        return 0;
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final void a(long j, long j2) {
        aa aaVar;
        com.google.android.exoplayer2.util.a.b(this.f21150b != 2);
        int size = this.f21152d.size();
        for (int i = 0; i < size; i++) {
            com.google.android.exoplayer2.util.ad adVar = this.f21152d.get(i);
            if ((adVar.c() == -9223372036854775807L) || !(adVar.c() == 0 || adVar.a() == j2)) {
                adVar.a(j2);
            }
        }
        if (!(j2 == 0 || (aaVar = this.l) == null)) {
            aaVar.a(j2);
        }
        this.e.a(0);
        this.f.clear();
        for (int i2 = 0; i2 < this.h.size(); i2++) {
            this.h.valueAt(i2).a();
        }
        this.s = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final void a(j jVar) {
        this.m = jVar;
    }

    @Override // com.google.android.exoplayer2.extractor.h
    public final boolean a(i iVar) throws IOException {
        boolean z;
        byte[] bArr = this.e.f22335a;
        iVar.d(bArr, 0, 940);
        for (int i = 0; i < 188; i++) {
            int i2 = 0;
            while (true) {
                if (i2 >= 5) {
                    z = true;
                    break;
                } else if (bArr[(i2 * 188) + i] != 71) {
                    z = false;
                    break;
                } else {
                    i2++;
                }
            }
            if (z) {
                iVar.b(i);
                return true;
            }
        }
        return false;
    }
}
