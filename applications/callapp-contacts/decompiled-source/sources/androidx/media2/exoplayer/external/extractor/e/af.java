package androidx.media2.exoplayer.external.extractor.e;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.e.ah;
import androidx.media2.exoplayer.external.extractor.g;
import androidx.media2.exoplayer.external.extractor.h;
import androidx.media2.exoplayer.external.extractor.i;
import androidx.media2.exoplayer.external.extractor.j;
import androidx.media2.exoplayer.external.extractor.n;
import androidx.media2.exoplayer.external.extractor.o;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.o;
import androidx.media2.exoplayer.external.util.p;
import androidx.media2.exoplayer.external.util.z;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/af.class */
public final class af implements g {

    /* renamed from: a  reason: collision with root package name */
    public static final j f3161a = ag.f3171a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3162b;

    /* renamed from: c  reason: collision with root package name */
    private final List<z> f3163c;

    /* renamed from: d  reason: collision with root package name */
    private final p f3164d;
    private final SparseIntArray e;
    private final ah.c f;
    private final SparseArray<ah> g;
    private final SparseBooleanArray h;
    private final SparseBooleanArray i;
    private final ae j;
    private ad k;
    private i l;
    private int m;
    private boolean n;
    private boolean o;
    private boolean p;
    private ah q;
    private int r;
    private int s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/af$a.class */
    public final class a implements z {

        /* renamed from: b  reason: collision with root package name */
        private final o f3166b = new o(new byte[4]);

        public a() {
        }

        @Override // androidx.media2.exoplayer.external.extractor.e.z
        public final void a(p pVar) {
            if (pVar.c() == 0) {
                pVar.d(7);
                int b2 = pVar.b() / 4;
                for (int i = 0; i < b2; i++) {
                    pVar.a(this.f3166b, 4);
                    int c2 = this.f3166b.c(16);
                    this.f3166b.b(3);
                    if (c2 == 0) {
                        this.f3166b.b(13);
                    } else {
                        int c3 = this.f3166b.c(13);
                        af.this.g.put(c3, new aa(new b(c3)));
                        af.b(af.this);
                    }
                }
                if (af.this.f3162b != 2) {
                    af.this.g.remove(0);
                }
            }
        }

        @Override // androidx.media2.exoplayer.external.extractor.e.z
        public final void a(z zVar, i iVar, ah.d dVar) {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/e/af$b.class */
    final class b implements z {

        /* renamed from: b  reason: collision with root package name */
        private final o f3168b = new o(new byte[5]);

        /* renamed from: c  reason: collision with root package name */
        private final SparseArray<ah> f3169c = new SparseArray<>();

        /* renamed from: d  reason: collision with root package name */
        private final SparseIntArray f3170d = new SparseIntArray();
        private final int e;

        public b(int i) {
            this.e = i;
        }

        @Override // androidx.media2.exoplayer.external.extractor.e.z
        public final void a(p pVar) {
            z zVar;
            if (pVar.c() == 2) {
                if (af.this.f3162b == 1 || af.this.f3162b == 2 || af.this.m == 1) {
                    zVar = (z) af.this.f3163c.get(0);
                } else {
                    zVar = new z(((z) af.this.f3163c.get(0)).f4191a);
                    af.this.f3163c.add(zVar);
                }
                pVar.d(2);
                int d2 = pVar.d();
                pVar.d(3);
                pVar.a(this.f3168b, 2);
                this.f3168b.b(3);
                af.this.s = this.f3168b.c(13);
                pVar.a(this.f3168b, 2);
                this.f3168b.b(4);
                pVar.d(this.f3168b.c(12));
                if (af.this.f3162b == 2 && af.this.q == null) {
                    ah.b bVar = new ah.b(21, null, null, ac.f);
                    af afVar = af.this;
                    afVar.q = afVar.f.a(21, bVar);
                    af.this.q.a(zVar, af.this.l, new ah.d(d2, 21, PropertyFlags.UNSIGNED));
                }
                this.f3169c.clear();
                this.f3170d.clear();
                int b2 = pVar.b();
                while (b2 > 0) {
                    pVar.a(this.f3168b, 5);
                    int c2 = this.f3168b.c(8);
                    this.f3168b.b(3);
                    int c3 = this.f3168b.c(13);
                    this.f3168b.b(4);
                    int c4 = this.f3168b.c(12);
                    int i = pVar.f4167b;
                    int i2 = i + c4;
                    int i3 = -1;
                    String str = null;
                    ArrayList arrayList = null;
                    while (pVar.f4167b < i2) {
                        int c5 = pVar.c();
                        int c6 = pVar.f4167b + pVar.c();
                        if (c5 == 5) {
                            long g = pVar.g();
                            if (g != 1094921523) {
                                if (g != 1161904947) {
                                    if (g == 1094921524) {
                                        i3 = 172;
                                        pVar.d(c6 - pVar.f4167b);
                                    } else {
                                        str = str;
                                        if (g == 1212503619) {
                                            i3 = 36;
                                            str = str;
                                        }
                                        pVar.d(c6 - pVar.f4167b);
                                    }
                                }
                                i3 = 135;
                                pVar.d(c6 - pVar.f4167b);
                            }
                            i3 = 129;
                            pVar.d(c6 - pVar.f4167b);
                        } else {
                            if (c5 != 106) {
                                if (c5 != 122) {
                                    if (c5 == 127) {
                                        str = str;
                                        if (pVar.c() == 21) {
                                            i3 = 172;
                                            str = str;
                                        }
                                    } else if (c5 == 123) {
                                        i3 = 138;
                                        str = str;
                                    } else if (c5 == 10) {
                                        str = pVar.e(3).trim();
                                    } else {
                                        str = str;
                                        if (c5 == 89) {
                                            arrayList = new ArrayList();
                                            while (pVar.f4167b < c6) {
                                                String trim = pVar.e(3).trim();
                                                int c7 = pVar.c();
                                                byte[] bArr = new byte[4];
                                                pVar.a(bArr, 0, 4);
                                                arrayList.add(new ah.a(trim, c7, bArr));
                                            }
                                            i3 = 89;
                                            pVar.d(c6 - pVar.f4167b);
                                        }
                                    }
                                    pVar.d(c6 - pVar.f4167b);
                                }
                                i3 = 135;
                                pVar.d(c6 - pVar.f4167b);
                            }
                            i3 = 129;
                            pVar.d(c6 - pVar.f4167b);
                        }
                    }
                    pVar.c(i2);
                    ah.b bVar2 = new ah.b(i3, str, arrayList, Arrays.copyOfRange(pVar.f4166a, i, i2));
                    int i4 = c2;
                    if (c2 == 6) {
                        i4 = bVar2.f3175a;
                    }
                    b2 -= c4 + 5;
                    int i5 = af.this.f3162b == 2 ? i4 : c3;
                    if (!af.this.h.get(i5)) {
                        ah a2 = (af.this.f3162b == 2 && i4 == 21) ? af.this.q : af.this.f.a(i4, bVar2);
                        if (af.this.f3162b != 2 || c3 < this.f3170d.get(i5, PropertyFlags.UNSIGNED)) {
                            this.f3170d.put(i5, c3);
                            this.f3169c.put(i5, a2);
                        }
                    }
                }
                int size = this.f3170d.size();
                for (int i6 = 0; i6 < size; i6++) {
                    int keyAt = this.f3170d.keyAt(i6);
                    int valueAt = this.f3170d.valueAt(i6);
                    af.this.h.put(keyAt, true);
                    af.this.i.put(valueAt, true);
                    ah valueAt2 = this.f3169c.valueAt(i6);
                    if (valueAt2 != null) {
                        if (valueAt2 != af.this.q) {
                            valueAt2.a(zVar, af.this.l, new ah.d(d2, keyAt, PropertyFlags.UNSIGNED));
                        }
                        af.this.g.put(valueAt, valueAt2);
                    }
                }
                if (af.this.f3162b != 2) {
                    af.this.g.remove(this.e);
                    af afVar2 = af.this;
                    afVar2.m = afVar2.f3162b == 1 ? 0 : af.this.m - 1;
                    if (af.this.m == 0) {
                        af.this.l.a();
                        af.this.n = true;
                    }
                } else if (!af.this.n) {
                    af.this.l.a();
                    af.this.m = 0;
                    af.this.n = true;
                }
            }
        }

        @Override // androidx.media2.exoplayer.external.extractor.e.z
        public final void a(z zVar, i iVar, ah.d dVar) {
        }
    }

    public af() {
        this(0);
    }

    public af(int i) {
        this(1, i);
    }

    public af(int i, int i2) {
        this(i, new z(0L), new j(i2));
    }

    public af(int i, z zVar, ah.c cVar) {
        this.f = (ah.c) androidx.media2.exoplayer.external.util.a.a(cVar);
        this.f3162b = i;
        if (i == 1 || i == 2) {
            this.f3163c = Collections.singletonList(zVar);
        } else {
            ArrayList arrayList = new ArrayList();
            this.f3163c = arrayList;
            arrayList.add(zVar);
        }
        this.f3164d = new p(new byte[9400], 0);
        this.h = new SparseBooleanArray();
        this.i = new SparseBooleanArray();
        this.g = new SparseArray<>();
        this.e = new SparseIntArray();
        this.j = new ae();
        this.s = -1;
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ g[] a() {
        return new g[]{new af()};
    }

    static /* synthetic */ int b(af afVar) {
        int i = afVar.m;
        afVar.m = i + 1;
        return i;
    }

    private void b() {
        this.h.clear();
        this.g.clear();
        SparseArray<ah> a2 = this.f.a();
        int size = a2.size();
        for (int i = 0; i < size; i++) {
            this.g.put(a2.keyAt(i), a2.valueAt(i));
        }
        this.g.put(0, new aa(new a()));
        this.q = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v3, types: [long] */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v8, types: [long] */
    @Override // androidx.media2.exoplayer.external.extractor.g
    public final int a(h hVar, n nVar) throws IOException, InterruptedException {
        boolean z;
        long j;
        long j2;
        long d2 = hVar.d();
        if (this.n) {
            if (!((d2 == -1 || this.f3162b == 2) ? false : true) || this.j.f3159c) {
                if (!this.o) {
                    this.o = true;
                    if (this.j.h != -9223372036854775807L) {
                        ad adVar = new ad(this.j.f3157a, this.j.h, d2, this.s);
                        this.k = adVar;
                        this.l.a(adVar.a());
                    } else {
                        this.l.a(new o.b(this.j.h));
                    }
                }
                if (this.p) {
                    this.p = false;
                    a(0L, 0L);
                    if (hVar.c() != 0) {
                        nVar.f3386a = 0L;
                        return 1;
                    }
                }
                ad adVar2 = this.k;
                if (adVar2 != null && adVar2.b()) {
                    return this.k.a(hVar, nVar);
                }
            } else {
                ae aeVar = this.j;
                int i = this.s;
                if (i <= 0) {
                    return aeVar.a(hVar);
                }
                if (!aeVar.e) {
                    long d3 = hVar.d();
                    int min = (int) Math.min(112800L, d3);
                    long j3 = d3 - min;
                    if (hVar.c() != j3) {
                        nVar.f3386a = j3;
                        return 1;
                    }
                    aeVar.f3158b.a(min);
                    hVar.a();
                    hVar.c(aeVar.f3158b.f4166a, 0, min);
                    p pVar = aeVar.f3158b;
                    int i2 = pVar.f4167b;
                    int i3 = pVar.f4168c - 1;
                    while (true) {
                        j2 = -9223372036854775807;
                        if (i3 < i2) {
                            break;
                        }
                        if (pVar.f4166a[i3] == 71) {
                            j2 = ai.a(pVar, i3, i);
                            if (j2 != -9223372036854775807L) {
                                break;
                            }
                        }
                        i3--;
                    }
                    aeVar.g = j2;
                    aeVar.e = true;
                    return 0;
                } else if (aeVar.g == -9223372036854775807L) {
                    return aeVar.a(hVar);
                } else {
                    if (!aeVar.f3160d) {
                        int min2 = (int) Math.min(112800L, hVar.d());
                        if (hVar.c() != 0) {
                            nVar.f3386a = 0L;
                            return 1;
                        }
                        aeVar.f3158b.a(min2);
                        hVar.a();
                        hVar.c(aeVar.f3158b.f4166a, 0, min2);
                        p pVar2 = aeVar.f3158b;
                        int i4 = pVar2.f4167b;
                        int i5 = pVar2.f4168c;
                        while (true) {
                            j = -9223372036854775807;
                            if (i4 >= i5) {
                                break;
                            }
                            if (pVar2.f4166a[i4] == 71) {
                                j = ai.a(pVar2, i4, i);
                                if (j != -9223372036854775807L) {
                                    break;
                                }
                            }
                            i4++;
                        }
                        aeVar.f = j;
                        aeVar.f3160d = true;
                        return 0;
                    } else if (aeVar.f == -9223372036854775807L) {
                        return aeVar.a(hVar);
                    } else {
                        aeVar.h = aeVar.f3157a.b(aeVar.g) - aeVar.f3157a.b(aeVar.f);
                        return aeVar.a(hVar);
                    }
                }
            }
        }
        byte[] bArr = this.f3164d.f4166a;
        if (9400 - this.f3164d.f4167b < 188) {
            int b2 = this.f3164d.b();
            if (b2 > 0) {
                System.arraycopy(bArr, this.f3164d.f4167b, bArr, 0, b2);
            }
            this.f3164d.a(bArr, b2);
        }
        while (true) {
            if (this.f3164d.b() >= 188) {
                z = true;
                break;
            }
            int i6 = this.f3164d.f4168c;
            int a2 = hVar.a(bArr, i6, 9400 - i6);
            if (a2 == -1) {
                z = false;
                break;
            }
            this.f3164d.b(i6 + a2);
        }
        if (!z) {
            return -1;
        }
        int i7 = this.f3164d.f4167b;
        int i8 = this.f3164d.f4168c;
        int a3 = ai.a(this.f3164d.f4166a, i7, i8);
        this.f3164d.c(a3);
        int i9 = a3 + 188;
        if (i9 > i8) {
            int i10 = this.r + (a3 - i7);
            this.r = i10;
            if (this.f3162b == 2 && i10 > 376) {
                throw new ParserException("Cannot find sync byte. Most likely not a Transport Stream.");
            }
        } else {
            this.r = 0;
        }
        int i11 = this.f3164d.f4168c;
        if (i9 > i11) {
            return 0;
        }
        int i12 = this.f3164d.i();
        if ((8388608 & i12) != 0) {
            this.f3164d.c(i9);
            return 0;
        }
        int i13 = ((4194304 & i12) != 0 ? 1 : 0) | 0;
        int i14 = (2096896 & i12) >> 8;
        boolean z2 = (i12 & 32) != 0;
        ah ahVar = (i12 & 16) != 0 ? this.g.get(i14) : null;
        if (ahVar == null) {
            this.f3164d.c(i9);
            return 0;
        }
        if (this.f3162b != 2) {
            int i15 = i12 & 15;
            int i16 = this.e.get(i14, i15 - 1);
            this.e.put(i14, i15);
            if (i16 == i15) {
                this.f3164d.c(i9);
                return 0;
            } else if (i15 != ((i16 + 1) & 15)) {
                ahVar.a();
            }
        }
        int i17 = i13;
        if (z2) {
            int c2 = this.f3164d.c();
            i17 = i13 | ((this.f3164d.c() & 64) != 0 ? 2 : 0);
            this.f3164d.d(c2 - 1);
        }
        boolean z3 = this.n;
        if (this.f3162b == 2 || z3 || !this.i.get(i14, false)) {
            this.f3164d.b(i9);
            ahVar.a(this.f3164d, i17);
            this.f3164d.b(i11);
        }
        if (this.f3162b != 2 && !z3 && this.n && d2 != -1) {
            this.p = true;
        }
        this.f3164d.c(i9);
        return 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final void a(long j, long j2) {
        ad adVar;
        androidx.media2.exoplayer.external.util.a.b(this.f3162b != 2);
        int size = this.f3163c.size();
        for (int i = 0; i < size; i++) {
            z zVar = this.f3163c.get(i);
            if ((zVar.a() == -9223372036854775807L) || !(zVar.a() == 0 || zVar.f4191a == j2)) {
                zVar.f4193c = -9223372036854775807L;
                zVar.a(j2);
            }
        }
        if (!(j2 == 0 || (adVar = this.k) == null)) {
            adVar.a(j2);
        }
        this.f3164d.a();
        this.e.clear();
        for (int i2 = 0; i2 < this.g.size(); i2++) {
            this.g.valueAt(i2).a();
        }
        this.r = 0;
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final void a(i iVar) {
        this.l = iVar;
    }

    @Override // androidx.media2.exoplayer.external.extractor.g
    public final boolean a(h hVar) throws IOException, InterruptedException {
        boolean z;
        byte[] bArr = this.f3164d.f4166a;
        hVar.c(bArr, 0, 940);
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
                hVar.b(i);
                return true;
            }
        }
        return false;
    }
}
