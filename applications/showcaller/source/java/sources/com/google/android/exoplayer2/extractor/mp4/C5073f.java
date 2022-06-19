package com.google.android.exoplayer2.extractor.mp4;

import com.google.android.exoplayer2.util.C5515h0;
/* renamed from: com.google.android.exoplayer2.extractor.mp4.f */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/f.class */
final class C5073f {

    /* renamed from: com.google.android.exoplayer2.extractor.mp4.f$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/extractor/mp4/f$b.class */
    public static final class C5075b {

        /* renamed from: a */
        public final long[] f15797a;

        /* renamed from: b */
        public final int[] f15798b;

        /* renamed from: c */
        public final int f15799c;

        /* renamed from: d */
        public final long[] f15800d;

        /* renamed from: e */
        public final int[] f15801e;

        /* renamed from: f */
        public final long f15802f;

        private C5075b(long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
            this.f15797a = jArr;
            this.f15798b = iArr;
            this.f15799c = i;
            this.f15800d = jArr2;
            this.f15801e = iArr2;
            this.f15802f = j;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r27v0 */
    /* JADX WARN: Type inference failed for: r27v1 */
    /* JADX WARN: Type inference failed for: r27v2 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* renamed from: a */
    public static C5075b m20681a(int i, long[] jArr, int[] iArr, long j) {
        int i2 = 8192 / i;
        int i3 = 0;
        for (int i4 : iArr) {
            i3 += C5515h0.m18829i(i4, i2);
        }
        long[] jArr2 = new long[i3];
        int[] iArr2 = new int[i3];
        long[] jArr3 = new long[i3];
        int[] iArr3 = new int[i3];
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < iArr.length; i8++) {
            int i9 = iArr[i8];
            ?? r27 = jArr[i8];
            while (i9 > 0) {
                int min = Math.min(i2, i9);
                jArr2[i5] = r27 == true ? 1 : 0;
                iArr2[i5] = i * min;
                i6 = Math.max(i6, iArr2[i5]);
                jArr3[i5] = i7 * j;
                iArr3[i5] = 1;
                r27 += iArr2[i5];
                i7 += min;
                i9 -= min;
                i5++;
            }
        }
        return new C5075b(jArr2, iArr2, i6, jArr3, iArr3, j * i7);
    }
}
