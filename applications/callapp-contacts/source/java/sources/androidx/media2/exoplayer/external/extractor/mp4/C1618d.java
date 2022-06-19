package androidx.media2.exoplayer.external.extractor.mp4;

import androidx.media2.exoplayer.external.util.C1996ac;
import io.objectbox.model.PropertyFlags;
/* renamed from: androidx.media2.exoplayer.external.extractor.mp4.d */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/d.class */
final class C1618d {

    /* renamed from: androidx.media2.exoplayer.external.extractor.mp4.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/d$a.class */
    public static final class C1620a {

        /* renamed from: a */
        public final long[] f6367a;

        /* renamed from: b */
        public final int[] f6368b;

        /* renamed from: c */
        public final int f6369c;

        /* renamed from: d */
        public final long[] f6370d;

        /* renamed from: e */
        public final int[] f6371e;

        /* renamed from: f */
        public final long f6372f;

        private C1620a(long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
            this.f6367a = jArr;
            this.f6368b = iArr;
            this.f6369c = i;
            this.f6370d = jArr2;
            this.f6371e = iArr2;
            this.f6372f = j;
        }
    }

    private C1618d() {
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
    public static C1620a m42569a(int i, long[] jArr, int[] iArr, long j) {
        int i2 = PropertyFlags.UNSIGNED / i;
        int i3 = 0;
        for (int i4 : iArr) {
            i3 += C1996ac.m41675a(i4, i2);
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
        return new C1620a(jArr2, iArr2, i6, jArr3, iArr3, j * i7);
    }
}
