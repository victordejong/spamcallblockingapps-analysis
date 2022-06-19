package com.google.android.exoplayer2.trackselection;

import android.util.Pair;
import com.google.android.exoplayer2.AbstractC5315t0;
import com.google.android.exoplayer2.AbstractC5585y0;
import com.google.android.exoplayer2.C5191s0;
import com.google.android.exoplayer2.C5416u0;
import com.google.android.exoplayer2.source.AbstractC5294v;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5529r;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.trackselection.d */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/d.class */
public abstract class AbstractC5405d extends AbstractC5412h {

    /* renamed from: c */
    private C5406a f17372c;

    /* renamed from: com.google.android.exoplayer2.trackselection.d$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/d$a.class */
    public static final class C5406a {
        @Deprecated

        /* renamed from: a */
        public final int f17373a;

        /* renamed from: b */
        private final int f17374b;

        /* renamed from: c */
        private final int[] f17375c;

        /* renamed from: d */
        private final TrackGroupArray[] f17376d;

        /* renamed from: e */
        private final int[] f17377e;

        /* renamed from: f */
        private final int[][][] f17378f;

        /* renamed from: g */
        private final TrackGroupArray f17379g;

        C5406a(int[] iArr, TrackGroupArray[] trackGroupArrayArr, int[] iArr2, int[][][] iArr3, TrackGroupArray trackGroupArray) {
            this.f17375c = iArr;
            this.f17376d = trackGroupArrayArr;
            this.f17378f = iArr3;
            this.f17377e = iArr2;
            this.f17379g = trackGroupArray;
            int length = iArr.length;
            this.f17374b = length;
            this.f17373a = length;
        }

        /* renamed from: a */
        public int m19302a(int i, int i2, boolean z) {
            int i3;
            int i4 = this.f17376d[i].m20155a(i2).f16304d;
            int[] iArr = new int[i4];
            int i5 = 0;
            int i6 = 0;
            while (true) {
                int i7 = i6;
                if (i5 < i4) {
                    int m19297f = m19297f(i, i2, i5);
                    if (m19297f != 4) {
                        i3 = i7;
                        if (z) {
                            i3 = i7;
                            if (m19297f != 3) {
                            }
                        }
                        i5++;
                        i6 = i3;
                    }
                    iArr[i7] = i5;
                    i3 = i7 + 1;
                    i5++;
                    i6 = i3;
                } else {
                    return m19301b(i, i2, Arrays.copyOf(iArr, i7));
                }
            }
        }

        /* renamed from: b */
        public int m19301b(int i, int i2, int[] iArr) {
            int i3 = 0;
            String str = null;
            boolean z = false;
            int i4 = 0;
            int i5 = 16;
            while (i3 < iArr.length) {
                String str2 = this.f17376d[i].m20155a(i2).m20159a(iArr[i3]).f14461l;
                if (i4 == 0) {
                    str = str2;
                } else {
                    z |= !C5515h0.m18843b(str, str2);
                }
                i5 = Math.min(i5, C5191s0.m20192c(this.f17378f[i][i2][i3]));
                i3++;
                i4++;
            }
            int i6 = i5;
            if (z) {
                i6 = Math.min(i5, this.f17377e[i]);
            }
            return i6;
        }

        /* renamed from: c */
        public int m19300c() {
            return this.f17374b;
        }

        /* renamed from: d */
        public int m19299d(int i) {
            return this.f17375c[i];
        }

        /* renamed from: e */
        public TrackGroupArray m19298e(int i) {
            return this.f17376d[i];
        }

        /* renamed from: f */
        public int m19297f(int i, int i2, int i3) {
            return C5191s0.m20191d(this.f17378f[i][i2][i3]);
        }
    }

    /* renamed from: e */
    private static int m19306e(AbstractC5315t0[] abstractC5315t0Arr, TrackGroup trackGroup, int[] iArr, boolean z) {
        boolean z2;
        int i;
        int i2;
        int length = abstractC5315t0Arr.length;
        int i3 = 0;
        int i4 = 0;
        boolean z3 = true;
        while (true) {
            boolean z4 = z3;
            if (i3 < abstractC5315t0Arr.length) {
                AbstractC5315t0 abstractC5315t0 = abstractC5315t0Arr[i3];
                int i5 = 0;
                for (int i6 = 0; i6 < trackGroup.f16304d; i6++) {
                    i5 = Math.max(i5, C5191s0.m20191d(abstractC5315t0.mo18507b(trackGroup.m20159a(i6))));
                }
                boolean z5 = iArr[i3] == 0;
                if (i5 <= i4) {
                    i2 = length;
                    i = i4;
                    z2 = z4;
                    if (i5 == i4) {
                        i2 = length;
                        i = i4;
                        z2 = z4;
                        if (z) {
                            i2 = length;
                            i = i4;
                            z2 = z4;
                            if (!z4) {
                                i2 = length;
                                i = i4;
                                z2 = z4;
                                if (!z5) {
                                }
                            }
                        }
                    }
                    i3++;
                    length = i2;
                    i4 = i;
                    z3 = z2;
                }
                i2 = i3;
                z2 = z5;
                i = i5;
                i3++;
                length = i2;
                i4 = i;
                z3 = z2;
            } else {
                return length;
            }
        }
    }

    /* renamed from: f */
    private static int[] m19305f(AbstractC5315t0 abstractC5315t0, TrackGroup trackGroup) {
        int[] iArr = new int[trackGroup.f16304d];
        for (int i = 0; i < trackGroup.f16304d; i++) {
            iArr[i] = abstractC5315t0.mo18507b(trackGroup.m20159a(i));
        }
        return iArr;
    }

    /* renamed from: g */
    private static int[] m19304g(AbstractC5315t0[] abstractC5315t0Arr) {
        int length = abstractC5315t0Arr.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = abstractC5315t0Arr[i].mo19252p();
        }
        return iArr;
    }

    @Override // com.google.android.exoplayer2.trackselection.AbstractC5412h
    /* renamed from: c */
    public final void mo19275c(Object obj) {
        this.f17372c = (C5406a) obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [int[][], int[][][]] */
    @Override // com.google.android.exoplayer2.trackselection.AbstractC5412h
    /* renamed from: d */
    public final C5414i mo19274d(AbstractC5315t0[] abstractC5315t0Arr, TrackGroupArray trackGroupArray, AbstractC5294v.C5295a c5295a, AbstractC5585y0 abstractC5585y0) {
        int[] iArr = new int[abstractC5315t0Arr.length + 1];
        int length = abstractC5315t0Arr.length + 1;
        TrackGroup[] trackGroupArr = new TrackGroup[length];
        ?? r0 = new int[abstractC5315t0Arr.length + 1];
        for (int i = 0; i < length; i++) {
            int i2 = trackGroupArray.f16308e;
            trackGroupArr[i] = new TrackGroup[i2];
            r0[i] = new int[i2];
        }
        int[] m19304g = m19304g(abstractC5315t0Arr);
        for (int i3 = 0; i3 < trackGroupArray.f16308e; i3++) {
            TrackGroup m20155a = trackGroupArray.m20155a(i3);
            int m19306e = m19306e(abstractC5315t0Arr, m20155a, iArr, C5529r.m18729h(m20155a.m20159a(0).f14461l) == 4);
            int[] m19305f = m19306e == abstractC5315t0Arr.length ? new int[m20155a.f16304d] : m19305f(abstractC5315t0Arr[m19306e], m20155a);
            int i4 = iArr[m19306e];
            trackGroupArr[m19306e][i4] = m20155a;
            r0[m19306e][i4] = m19305f;
            iArr[m19306e] = iArr[m19306e] + 1;
        }
        TrackGroupArray[] trackGroupArrayArr = new TrackGroupArray[abstractC5315t0Arr.length];
        int[] iArr2 = new int[abstractC5315t0Arr.length];
        for (int i5 = 0; i5 < abstractC5315t0Arr.length; i5++) {
            int i6 = iArr[i5];
            trackGroupArrayArr[i5] = new TrackGroupArray((TrackGroup[]) C5515h0.m18834f0(trackGroupArr[i5], i6));
            r0[i5] = (int[][]) C5515h0.m18834f0(r0[i5], i6);
            iArr2[i5] = abstractC5315t0Arr[i5].mo19258i();
        }
        C5406a c5406a = new C5406a(iArr2, trackGroupArrayArr, m19304g, r0, new TrackGroupArray((TrackGroup[]) C5515h0.m18834f0(trackGroupArr[abstractC5315t0Arr.length], iArr[abstractC5315t0Arr.length])));
        Pair<C5416u0[], AbstractC5408f[]> mo19303h = mo19303h(c5406a, r0, m19304g);
        return new C5414i((C5416u0[]) mo19303h.first, (AbstractC5408f[]) mo19303h.second, c5406a);
    }

    /* renamed from: h */
    protected abstract Pair<C5416u0[], AbstractC5408f[]> mo19303h(C5406a c5406a, int[][][] iArr, int[] iArr2);
}
