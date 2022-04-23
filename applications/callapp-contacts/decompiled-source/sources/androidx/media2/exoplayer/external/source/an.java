package androidx.media2.exoplayer.external.source;

import java.util.Arrays;
import java.util.Random;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/an.class */
public interface an {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/an$a.class */
    public static final class a implements an {

        /* renamed from: a  reason: collision with root package name */
        private final Random f3586a;

        /* renamed from: b  reason: collision with root package name */
        private final int[] f3587b;

        /* renamed from: c  reason: collision with root package name */
        private final int[] f3588c;

        public a(int i) {
            this(i, new Random());
        }

        public a(int i, long j) {
            this(i, new Random(j));
        }

        private a(int i, Random random) {
            this(a(i, random), random);
        }

        public a(int[] iArr, long j) {
            this(Arrays.copyOf(iArr, iArr.length), new Random(j));
        }

        private a(int[] iArr, Random random) {
            this.f3587b = iArr;
            this.f3586a = random;
            this.f3588c = new int[iArr.length];
            for (int i = 0; i < iArr.length; i++) {
                this.f3588c[iArr[i]] = i;
            }
        }

        private static int[] a(int i, Random random) {
            int[] iArr = new int[i];
            int i2 = 0;
            while (i2 < i) {
                int i3 = i2 + 1;
                int nextInt = random.nextInt(i3);
                iArr[i2] = iArr[nextInt];
                iArr[nextInt] = i2;
                i2 = i3;
            }
            return iArr;
        }

        @Override // androidx.media2.exoplayer.external.source.an
        public final int a() {
            return this.f3587b.length;
        }

        @Override // androidx.media2.exoplayer.external.source.an
        public final int a(int i) {
            int i2 = this.f3588c[i] + 1;
            int[] iArr = this.f3587b;
            if (i2 < iArr.length) {
                return iArr[i2];
            }
            return -1;
        }

        @Override // androidx.media2.exoplayer.external.source.an
        public final an a(int i, int i2) {
            int[] iArr = new int[i2];
            int[] iArr2 = new int[i2];
            int i3 = 0;
            int i4 = 0;
            while (i4 < i2) {
                iArr[i4] = this.f3586a.nextInt(this.f3587b.length + 1);
                int i5 = i4 + 1;
                int nextInt = this.f3586a.nextInt(i5);
                iArr2[i4] = iArr2[nextInt];
                iArr2[nextInt] = i4 + i;
                i4 = i5;
            }
            Arrays.sort(iArr);
            int[] iArr3 = new int[this.f3587b.length + i2];
            int i6 = 0;
            int i7 = 0;
            while (true) {
                int[] iArr4 = this.f3587b;
                if (i3 >= iArr4.length + i2) {
                    return new a(iArr3, new Random(this.f3586a.nextLong()));
                }
                if (i6 >= i2 || i7 != iArr[i6]) {
                    iArr3[i3] = iArr4[i7];
                    if (iArr3[i3] >= i) {
                        iArr3[i3] = iArr3[i3] + i2;
                    }
                    i7++;
                } else {
                    iArr3[i3] = iArr2[i6];
                    i6++;
                }
                i3++;
            }
        }

        @Override // androidx.media2.exoplayer.external.source.an
        public final int b() {
            int[] iArr = this.f3587b;
            if (iArr.length > 0) {
                return iArr[iArr.length - 1];
            }
            return -1;
        }

        @Override // androidx.media2.exoplayer.external.source.an
        public final int b(int i) {
            int i2 = this.f3588c[i] - 1;
            if (i2 >= 0) {
                return this.f3587b[i2];
            }
            return -1;
        }

        @Override // androidx.media2.exoplayer.external.source.an
        public final an b(int i, int i2) {
            int i3 = i2 - i;
            int[] iArr = new int[this.f3587b.length - i3];
            int i4 = 0;
            int i5 = 0;
            while (true) {
                int[] iArr2 = this.f3587b;
                if (i4 >= iArr2.length) {
                    return new a(iArr, new Random(this.f3586a.nextLong()));
                }
                if (iArr2[i4] < i || iArr2[i4] >= i2) {
                    iArr[i4 - i5] = iArr2[i4] >= i ? iArr2[i4] - i3 : iArr2[i4];
                } else {
                    i5++;
                }
                i4++;
            }
        }

        @Override // androidx.media2.exoplayer.external.source.an
        public final int c() {
            int[] iArr = this.f3587b;
            if (iArr.length > 0) {
                return iArr[0];
            }
            return -1;
        }

        @Override // androidx.media2.exoplayer.external.source.an
        public final an d() {
            return new a(0, new Random(this.f3586a.nextLong()));
        }
    }

    int a();

    int a(int i);

    an a(int i, int i2);

    int b();

    int b(int i);

    an b(int i, int i2);

    int c();

    an d();
}
