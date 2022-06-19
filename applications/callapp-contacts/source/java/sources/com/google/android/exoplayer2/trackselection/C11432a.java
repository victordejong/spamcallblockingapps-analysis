package com.google.android.exoplayer2.trackselection;

import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.p336a.AbstractC11268b;
import com.google.android.exoplayer2.trackselection.AbstractC11436c;
import com.google.android.exoplayer2.upstream.AbstractC11534c;
import com.google.android.exoplayer2.util.AbstractC11603c;
import com.google.common.base.C15391m;
import com.google.common.collect.AbstractC15407ac;
import com.google.common.collect.AbstractC15457ai;
import com.google.common.collect.AbstractC15470an;
import com.google.common.collect.AbstractC15549v;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* renamed from: com.google.android.exoplayer2.trackselection.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/a.class */
public final class C11432a extends AbstractC11435b {

    /* renamed from: d */
    private final AbstractC11534c f37787d;

    /* renamed from: e */
    private final long f37788e;

    /* renamed from: f */
    private final long f37789f;

    /* renamed from: g */
    private final long f37790g;

    /* renamed from: h */
    private final float f37791h;

    /* renamed from: i */
    private final float f37792i;

    /* renamed from: j */
    private final AbstractC15549v<C11433a> f37793j;

    /* renamed from: k */
    private final AbstractC11603c f37794k;

    /* renamed from: l */
    private float f37795l;

    /* renamed from: m */
    private int f37796m;

    /* renamed from: n */
    private int f37797n;

    /* renamed from: o */
    private long f37798o;

    /* renamed from: p */
    private AbstractC11268b f37799p;

    /* renamed from: com.google.android.exoplayer2.trackselection.a$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/a$a.class */
    public static final class C11433a {

        /* renamed from: a */
        public final long f37800a;

        /* renamed from: b */
        public final long f37801b;

        public C11433a(long j, long j2) {
            this.f37800a = j;
            this.f37801b = j2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C11433a)) {
                return false;
            }
            C11433a c11433a = (C11433a) obj;
            return this.f37800a == c11433a.f37800a && this.f37801b == c11433a.f37801b;
        }

        public final int hashCode() {
            return (((int) this.f37800a) * 31) + ((int) this.f37801b);
        }
    }

    /* renamed from: com.google.android.exoplayer2.trackselection.a$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/trackselection/a$b.class */
    public static final class C11434b implements AbstractC11436c.AbstractC11438b {

        /* renamed from: a */
        private final int f37802a;

        /* renamed from: b */
        private final int f37803b;

        /* renamed from: c */
        private final int f37804c;

        /* renamed from: d */
        private final float f37805d;

        /* renamed from: e */
        private final float f37806e;

        /* renamed from: f */
        private final AbstractC11603c f37807f;

        public C11434b() {
            this(10000, 25000, 25000, 0.7f, 0.75f, AbstractC11603c.f38667a);
        }

        public C11434b(int i, int i2, int i3, float f) {
            this(i, i2, i3, f, 0.75f, AbstractC11603c.f38667a);
        }

        public C11434b(int i, int i2, int i3, float f, float f2, AbstractC11603c abstractC11603c) {
            this.f37802a = i;
            this.f37803b = i2;
            this.f37804c = i3;
            this.f37805d = f;
            this.f37806e = f2;
            this.f37807f = abstractC11603c;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v75 */
        /* JADX WARN: Type inference failed for: r0v77 */
        /* JADX WARN: Type inference failed for: r0v81 */
        /* JADX WARN: Type inference failed for: r0v82 */
        /* JADX WARN: Type inference failed for: r24v0 */
        /* JADX WARN: Type inference failed for: r2v5, types: [long] */
        @Override // com.google.android.exoplayer2.trackselection.AbstractC11436c.AbstractC11438b
        /* renamed from: a */
        public final AbstractC11436c[] mo20566a(AbstractC11436c.C11437a[] c11437aArr, AbstractC11534c abstractC11534c) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < c11437aArr.length; i++) {
                if (c11437aArr[i] == null || c11437aArr[i].f37815b.length <= 1) {
                    arrayList.add(null);
                } else {
                    AbstractC15549v.C15550a m8718i = AbstractC15549v.m8718i();
                    m8718i.m8715b(new C11433a(0L, 0L));
                    arrayList.add(m8718i);
                }
            }
            long[][] m20573a = C11432a.m20573a(c11437aArr);
            int[] iArr = new int[m20573a.length];
            long[] jArr = new long[m20573a.length];
            for (int i2 = 0; i2 < m20573a.length; i2++) {
                jArr[i2] = (m20573a[i2].length == 0 ? 0 : m20573a[i2][0]) == true ? 1 : 0;
            }
            C11432a.m20574a(arrayList, jArr);
            AbstractC15549v<Integer> m20572a = C11432a.m20572a(m20573a);
            for (int i3 = 0; i3 < m20572a.size(); i3++) {
                int intValue = m20572a.get(i3).intValue();
                int i4 = iArr[intValue] + 1;
                iArr[intValue] = i4;
                jArr[intValue] = m20573a[intValue][i4];
                C11432a.m20574a(arrayList, jArr);
            }
            for (int i5 = 0; i5 < c11437aArr.length; i5++) {
                if (arrayList.get(i5) != null) {
                    jArr[i5] = jArr[i5] * 2;
                }
            }
            C11432a.m20574a(arrayList, jArr);
            AbstractC15549v.C15550a m8718i2 = AbstractC15549v.m8718i();
            for (int i6 = 0; i6 < arrayList.size(); i6++) {
                AbstractC15549v.C15550a c15550a = (AbstractC15549v.C15550a) arrayList.get(i6);
                m8718i2.m8715b(c15550a == null ? AbstractC15549v.m8720g() : c15550a.m8717a());
            }
            AbstractC15549v m8717a = m8718i2.m8717a();
            AbstractC11436c[] abstractC11436cArr = new AbstractC11436c[c11437aArr.length];
            for (int i7 = 0; i7 < c11437aArr.length; i7++) {
                AbstractC11436c.C11437a c11437a = c11437aArr[i7];
                if (c11437a != null && c11437a.f37815b.length != 0) {
                    abstractC11436cArr[i7] = c11437a.f37815b.length == 1 ? new C11439d(c11437a.f37814a, c11437a.f37815b[0], c11437a.f37816c, c11437a.f37817d) : new C11432a(c11437a.f37814a, c11437a.f37815b, abstractC11534c, this.f37802a, this.f37803b, this.f37804c, this.f37805d, this.f37806e, (AbstractC15549v) m8717a.get(i7), this.f37807f);
                }
            }
            return abstractC11436cArr;
        }
    }

    public C11432a(TrackGroup trackGroup, int[] iArr, AbstractC11534c abstractC11534c) {
        this(trackGroup, iArr, abstractC11534c, 10000L, 25000L, 25000L, 0.7f, 0.75f, AbstractC15549v.m8720g(), AbstractC11603c.f38667a);
    }

    protected C11432a(TrackGroup trackGroup, int[] iArr, AbstractC11534c abstractC11534c, long j, long j2, long j3, float f, float f2, List<C11433a> list, AbstractC11603c abstractC11603c) {
        super(trackGroup, iArr);
        this.f37787d = abstractC11534c;
        this.f37788e = j * 1000;
        this.f37789f = j2 * 1000;
        this.f37790g = j3 * 1000;
        this.f37791h = f;
        this.f37792i = f2;
        this.f37793j = AbstractC15549v.m8725a((Collection) list);
        this.f37794k = abstractC11603c;
        this.f37795l = 1.0f;
        this.f37797n = 0;
        this.f37798o = -9223372036854775807L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v36 */
    /* JADX WARN: Type inference failed for: r0v43, types: [double] */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r0v54, types: [double] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v2, types: [double] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* renamed from: a */
    static AbstractC15549v<Integer> m20572a(long[][] jArr) {
        final AbstractC15470an m8833b = AbstractC15470an.m8833b();
        C15391m.m8946a(m8833b);
        AbstractC15407ac mo8839a = new AbstractC15457ai.AbstractC15462c<K0>() { // from class: com.google.common.collect.ai.2
            @Override // com.google.common.collect.AbstractC15457ai.AbstractC15462c
            /* renamed from: a */
            final <K extends K0, V> Map<K, Collection<V>> mo8841a() {
                return new TreeMap(m8833b);
            }
        }.m8840b().mo8839a();
        for (int i = 0; i < jArr.length; i++) {
            if (jArr[i].length > 1) {
                int length = jArr[i].length;
                double[] dArr = new double[length];
                int i2 = 0;
                while (true) {
                    ?? r12 = false;
                    if (i2 >= jArr[i].length) {
                        break;
                    }
                    if (jArr[i][i2] != -1) {
                        r12 = Math.log(jArr[i][i2]);
                    }
                    dArr[i2] = r12 == true ? 1 : 0;
                    i2++;
                }
                int i3 = length - 1;
                double d = dArr[i3] - dArr[0];
                int i4 = 0;
                while (i4 < i3) {
                    double d2 = dArr[i4];
                    i4++;
                    mo8839a.mo8689a(Double.valueOf((double) (d == 0.0d ? 4607182418800017408 : (((d2 + dArr[i4]) * 0.5d) - dArr[0]) / d)), Integer.valueOf(i));
                }
            }
        }
        return AbstractC15549v.m8725a(mo8839a.mo8678i());
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* renamed from: a */
    static void m20574a(List<AbstractC15549v.C15550a<C11433a>> list, long[] jArr) {
        int i;
        char c = 0;
        int i2 = 0;
        while (true) {
            if (i2 < jArr.length) {
                c += jArr[i2];
                i2++;
            }
        }
        for (i = 0; i < list.size(); i++) {
            AbstractC15549v.C15550a<C11433a> c15550a = list.get(i);
            if (c15550a != null) {
                c15550a.m8715b(new C11433a(c, jArr[i]));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long[], long[][]] */
    /* renamed from: a */
    static long[][] m20573a(AbstractC11436c.C11437a[] c11437aArr) {
        ?? r0 = new long[c11437aArr.length];
        for (int i = 0; i < c11437aArr.length; i++) {
            AbstractC11436c.C11437a c11437a = c11437aArr[i];
            if (c11437a == null) {
                r0[i] = new long[0];
            } else {
                r0[i] = new long[c11437a.f37815b.length];
                for (int i2 = 0; i2 < c11437a.f37815b.length; i2++) {
                    r0[i][i2] = c11437a.f37814a.getFormat(c11437a.f37815b[i2]).bitrate;
                }
                Arrays.sort(r0[i]);
            }
        }
        return r0;
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC11436c
    /* renamed from: a */
    public final int mo20565a() {
        return this.f37796m;
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC11435b, com.google.android.exoplayer2.trackselection.AbstractC11436c
    /* renamed from: a */
    public final void mo20570a(float f) {
        this.f37795l = f;
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC11435b, com.google.android.exoplayer2.trackselection.AbstractC11436c
    /* renamed from: b */
    public final void mo20569b() {
        this.f37798o = -9223372036854775807L;
        this.f37799p = null;
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC11435b, com.google.android.exoplayer2.trackselection.AbstractC11436c
    /* renamed from: c */
    public final void mo20568c() {
        this.f37799p = null;
    }
}
