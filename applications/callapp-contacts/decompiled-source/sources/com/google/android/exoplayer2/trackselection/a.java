package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.trackselection.c;
import com.google.android.exoplayer2.upstream.c;
import com.google.common.base.m;
import com.google.common.collect.ac;
import com.google.common.collect.ai;
import com.google.common.collect.an;
import com.google.common.collect.v;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/a.class */
public final class a extends com.google.android.exoplayer2.trackselection.b {

    /* renamed from: d  reason: collision with root package name */
    private final c f21920d;
    private final long e;
    private final long f;
    private final long g;
    private final float h;
    private final float i;
    private final v<C0443a> j;
    private final com.google.android.exoplayer2.util.c k;
    private float l;
    private int m;
    private int n;
    private long o;
    private com.google.android.exoplayer2.source.a.b p;

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: com.google.android.exoplayer2.trackselection.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/a$a.class */
    public static final class C0443a {

        /* renamed from: a  reason: collision with root package name */
        public final long f21921a;

        /* renamed from: b  reason: collision with root package name */
        public final long f21922b;

        public C0443a(long j, long j2) {
            this.f21921a = j;
            this.f21922b = j2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0443a)) {
                return false;
            }
            C0443a aVar = (C0443a) obj;
            return this.f21921a == aVar.f21921a && this.f21922b == aVar.f21922b;
        }

        public final int hashCode() {
            return (((int) this.f21921a) * 31) + ((int) this.f21922b);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/a$b.class */
    public static final class b implements c.b {

        /* renamed from: a  reason: collision with root package name */
        private final int f21923a;

        /* renamed from: b  reason: collision with root package name */
        private final int f21924b;

        /* renamed from: c  reason: collision with root package name */
        private final int f21925c;

        /* renamed from: d  reason: collision with root package name */
        private final float f21926d;
        private final float e;
        private final com.google.android.exoplayer2.util.c f;

        public b() {
            this(10000, 25000, 25000, 0.7f, 0.75f, com.google.android.exoplayer2.util.c.f22283a);
        }

        public b(int i, int i2, int i3, float f) {
            this(i, i2, i3, f, 0.75f, com.google.android.exoplayer2.util.c.f22283a);
        }

        public b(int i, int i2, int i3, float f, float f2, com.google.android.exoplayer2.util.c cVar) {
            this.f21923a = i;
            this.f21924b = i2;
            this.f21925c = i3;
            this.f21926d = f;
            this.e = f2;
            this.f = cVar;
        }

        @Override // com.google.android.exoplayer2.trackselection.c.b
        public final c[] a(c.a[] aVarArr, com.google.android.exoplayer2.upstream.c cVar) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < aVarArr.length; i++) {
                if (aVarArr[i] == null || aVarArr[i].f21932b.length <= 1) {
                    arrayList.add(null);
                } else {
                    v.a i2 = v.i();
                    i2.b(new C0443a(0L, 0L));
                    arrayList.add(i2);
                }
            }
            long[][] a2 = a.a(aVarArr);
            int[] iArr = new int[a2.length];
            long[] jArr = new long[a2.length];
            for (int i3 = 0; i3 < a2.length; i3++) {
                jArr[i3] = a2[i3].length == 0 ? 0L : a2[i3][0];
            }
            a.a(arrayList, jArr);
            v<Integer> a3 = a.a(a2);
            for (int i4 = 0; i4 < a3.size(); i4++) {
                int intValue = a3.get(i4).intValue();
                int i5 = iArr[intValue] + 1;
                iArr[intValue] = i5;
                jArr[intValue] = a2[intValue][i5];
                a.a(arrayList, jArr);
            }
            for (int i6 = 0; i6 < aVarArr.length; i6++) {
                if (arrayList.get(i6) != null) {
                    jArr[i6] = jArr[i6] * 2;
                }
            }
            a.a(arrayList, jArr);
            v.a i7 = v.i();
            for (int i8 = 0; i8 < arrayList.size(); i8++) {
                v.a aVar = (v.a) arrayList.get(i8);
                i7.b(aVar == null ? v.g() : aVar.a());
            }
            v a4 = i7.a();
            c[] cVarArr = new c[aVarArr.length];
            for (int i9 = 0; i9 < aVarArr.length; i9++) {
                c.a aVar2 = aVarArr[i9];
                if (!(aVar2 == null || aVar2.f21932b.length == 0)) {
                    cVarArr[i9] = aVar2.f21932b.length == 1 ? new d(aVar2.f21931a, aVar2.f21932b[0], aVar2.f21933c, aVar2.f21934d) : new a(aVar2.f21931a, aVar2.f21932b, cVar, this.f21923a, this.f21924b, this.f21925c, this.f21926d, this.e, (v) a4.get(i9), this.f);
                }
            }
            return cVarArr;
        }
    }

    public a(TrackGroup trackGroup, int[] iArr, com.google.android.exoplayer2.upstream.c cVar) {
        this(trackGroup, iArr, cVar, 10000L, 25000L, 25000L, 0.7f, 0.75f, v.g(), com.google.android.exoplayer2.util.c.f22283a);
    }

    protected a(TrackGroup trackGroup, int[] iArr, com.google.android.exoplayer2.upstream.c cVar, long j, long j2, long j3, float f, float f2, List<C0443a> list, com.google.android.exoplayer2.util.c cVar2) {
        super(trackGroup, iArr);
        this.f21920d = cVar;
        this.e = j * 1000;
        this.f = j2 * 1000;
        this.g = j3 * 1000;
        this.h = f;
        this.i = f2;
        this.j = v.a((Collection) list);
        this.k = cVar2;
        this.l = 1.0f;
        this.n = 0;
        this.o = -9223372036854775807L;
    }

    static v<Integer> a(long[][] jArr) {
        final an b2 = an.b();
        m.a(b2);
        ac a2 = new ai.c<K0>() { // from class: com.google.common.collect.ai.2
            @Override // com.google.common.collect.ai.c
            final <K extends K0, V> Map<K, Collection<V>> a() {
                return new TreeMap(b2);
            }
        }.b().a();
        for (int i = 0; i < jArr.length; i++) {
            if (jArr[i].length > 1) {
                int length = jArr[i].length;
                double[] dArr = new double[length];
                int i2 = 0;
                while (true) {
                    double d2 = 0.0d;
                    if (i2 >= jArr[i].length) {
                        break;
                    }
                    if (jArr[i][i2] != -1) {
                        d2 = Math.log(jArr[i][i2]);
                    }
                    dArr[i2] = d2;
                    i2++;
                }
                int i3 = length - 1;
                double d3 = dArr[i3] - dArr[0];
                int i4 = 0;
                while (i4 < i3) {
                    double d4 = dArr[i4];
                    i4++;
                    a2.a(Double.valueOf(d3 == 0.0d ? 1.0d : (((d4 + dArr[i4]) * 0.5d) - dArr[0]) / d3), Integer.valueOf(i));
                }
            }
        }
        return v.a((Collection) a2.i());
    }

    static void a(List<v.a<C0443a>> list, long[] jArr) {
        long j = 0;
        for (long j2 : jArr) {
            j += j2;
        }
        for (int i = 0; i < list.size(); i++) {
            v.a<C0443a> aVar = list.get(i);
            if (aVar != null) {
                aVar.b(new C0443a(j, jArr[i]));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long[], long[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static long[][] a(com.google.android.exoplayer2.trackselection.c.a[] r6) {
        /*
            r0 = r6
            int r0 = r0.length
            long[] r0 = new long[r0]
            r7 = r0
            r0 = 0
            r8 = r0
        L_0x0008:
            r0 = r8
            r1 = r6
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0060
            r0 = r6
            r1 = r8
            r0 = r0[r1]
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L_0x001f
            r0 = r7
            r1 = r8
            r2 = 0
            long[] r2 = new long[r2]
            r0[r1] = r2
            goto L_0x005a
        L_0x001f:
            r0 = r7
            r1 = r8
            r2 = r9
            int[] r2 = r2.f21932b
            int r2 = r2.length
            long[] r2 = new long[r2]
            r0[r1] = r2
            r0 = 0
            r10 = r0
        L_0x002c:
            r0 = r10
            r1 = r9
            int[] r1 = r1.f21932b
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0054
            r0 = r7
            r1 = r8
            r0 = r0[r1]
            r1 = r10
            r2 = r9
            com.google.android.exoplayer2.source.TrackGroup r2 = r2.f21931a
            r3 = r9
            int[] r3 = r3.f21932b
            r4 = r10
            r3 = r3[r4]
            com.google.android.exoplayer2.Format r2 = r2.getFormat(r3)
            int r2 = r2.bitrate
            long r2 = (long) r2
            r0[r1] = r2
            int r10 = r10 + 1
            goto L_0x002c
        L_0x0054:
            r0 = r7
            r1 = r8
            r0 = r0[r1]
            java.util.Arrays.sort(r0)
        L_0x005a:
            int r8 = r8 + 1
            goto L_0x0008
        L_0x0060:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.trackselection.a.a(com.google.android.exoplayer2.trackselection.c$a[]):long[][]");
    }

    @Override // com.google.android.exoplayer2.trackselection.c
    public final int a() {
        return this.m;
    }

    @Override // com.google.android.exoplayer2.trackselection.b, com.google.android.exoplayer2.trackselection.c
    public final void a(float f) {
        this.l = f;
    }

    @Override // com.google.android.exoplayer2.trackselection.b, com.google.android.exoplayer2.trackselection.c
    public final void b() {
        this.o = -9223372036854775807L;
        this.p = null;
    }

    @Override // com.google.android.exoplayer2.trackselection.b, com.google.android.exoplayer2.trackselection.c
    public final void c() {
        this.p = null;
    }
}
