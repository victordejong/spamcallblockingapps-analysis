package androidx.media2.exoplayer.external.extractor.mp4;

import androidx.media2.exoplayer.external.util.ac;
import io.objectbox.model.PropertyFlags;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/d.class */
final class d {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/d$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long[] f3341a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f3342b;

        /* renamed from: c  reason: collision with root package name */
        public final int f3343c;

        /* renamed from: d  reason: collision with root package name */
        public final long[] f3344d;
        public final int[] e;
        public final long f;

        private a(long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
            this.f3341a = jArr;
            this.f3342b = iArr;
            this.f3343c = i;
            this.f3344d = jArr2;
            this.e = iArr2;
            this.f = j;
        }
    }

    private d() {
    }

    public static a a(int i, long[] jArr, int[] iArr, long j) {
        int i2 = PropertyFlags.UNSIGNED / i;
        int i3 = 0;
        for (int i4 : iArr) {
            i3 += ac.a(i4, i2);
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
            long j2 = jArr[i8];
            while (i9 > 0) {
                int min = Math.min(i2, i9);
                jArr2[i6] = j2;
                iArr2[i6] = i * min;
                i7 = Math.max(i7, iArr2[i6]);
                jArr3[i6] = i5 * j;
                iArr3[i6] = 1;
                j2 += iArr2[i6];
                i5 += min;
                i9 -= min;
                i6++;
            }
        }
        return new a(jArr2, iArr2, i7, jArr3, iArr3, j * i5);
    }
}
