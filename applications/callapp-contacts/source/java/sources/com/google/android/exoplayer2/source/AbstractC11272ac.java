package com.google.android.exoplayer2.source;

import java.util.Arrays;
import java.util.Random;
/* renamed from: com.google.android.exoplayer2.source.ac */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ac.class */
public interface AbstractC11272ac {

    /* renamed from: com.google.android.exoplayer2.source.ac$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/ac$a.class */
    public static final class C11273a implements AbstractC11272ac {

        /* renamed from: a */
        private final Random f36982a;

        /* renamed from: b */
        private final int[] f36983b;

        /* renamed from: c */
        private final int[] f36984c;

        public C11273a(int i) {
            this(i, new Random());
        }

        public C11273a(int i, long j) {
            this(i, new Random(j));
        }

        private C11273a(int i, Random random) {
            this(m21005a(i, random), random);
        }

        public C11273a(int[] iArr, long j) {
            this(Arrays.copyOf(iArr, iArr.length), new Random(j));
        }

        private C11273a(int[] iArr, Random random) {
            this.f36983b = iArr;
            this.f36982a = random;
            this.f36984c = new int[iArr.length];
            for (int i = 0; i < iArr.length; i++) {
                this.f36984c[iArr[i]] = i;
            }
        }

        /* renamed from: a */
        private static int[] m21005a(int i, Random random) {
            int[] iArr = new int[i];
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 < i) {
                    int i4 = i3 + 1;
                    int nextInt = random.nextInt(i4);
                    iArr[i3] = iArr[nextInt];
                    iArr[nextInt] = i3;
                    i2 = i4;
                } else {
                    return iArr;
                }
            }
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11272ac
        /* renamed from: a */
        public final int mo21008a() {
            return this.f36983b.length;
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11272ac
        /* renamed from: a */
        public final int mo21007a(int i) {
            int i2 = this.f36984c[i] + 1;
            int[] iArr = this.f36983b;
            if (i2 < iArr.length) {
                return iArr[i2];
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11272ac
        /* renamed from: a */
        public final AbstractC11272ac mo21006a(int i, int i2) {
            int[] iArr = new int[i2];
            int[] iArr2 = new int[i2];
            int i3 = 0;
            int i4 = 0;
            while (true) {
                int i5 = i4;
                if (i5 >= i2) {
                    break;
                }
                iArr[i5] = this.f36982a.nextInt(this.f36983b.length + 1);
                int i6 = i5 + 1;
                int nextInt = this.f36982a.nextInt(i6);
                iArr2[i5] = iArr2[nextInt];
                iArr2[nextInt] = i5 + 0;
                i4 = i6;
            }
            Arrays.sort(iArr);
            int[] iArr3 = new int[this.f36983b.length + i2];
            int i7 = 0;
            int i8 = 0;
            while (true) {
                int[] iArr4 = this.f36983b;
                if (i3 < iArr4.length + i2) {
                    if (i7 >= i2 || i8 != iArr[i7]) {
                        iArr3[i3] = iArr4[i8];
                        if (iArr3[i3] >= 0) {
                            iArr3[i3] = iArr3[i3] + i2;
                        }
                        i8++;
                    } else {
                        iArr3[i3] = iArr2[i7];
                        i7++;
                    }
                    i3++;
                } else {
                    return new C11273a(iArr3, new Random(this.f36982a.nextLong()));
                }
            }
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11272ac
        /* renamed from: b */
        public final int mo21004b() {
            int[] iArr = this.f36983b;
            if (iArr.length > 0) {
                return iArr[iArr.length - 1];
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11272ac
        /* renamed from: b */
        public final int mo21003b(int i) {
            int i2 = this.f36984c[i] - 1;
            if (i2 >= 0) {
                return this.f36983b[i2];
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11272ac
        /* renamed from: b */
        public final AbstractC11272ac mo21002b(int i, int i2) {
            int i3 = i2 - i;
            int[] iArr = new int[this.f36983b.length - i3];
            int i4 = 0;
            int i5 = 0;
            while (true) {
                int[] iArr2 = this.f36983b;
                if (i4 < iArr2.length) {
                    if (iArr2[i4] < i || iArr2[i4] >= i2) {
                        iArr[i4 - i5] = iArr2[i4] >= i ? iArr2[i4] - i3 : iArr2[i4];
                    } else {
                        i5++;
                    }
                    i4++;
                } else {
                    return new C11273a(iArr, new Random(this.f36982a.nextLong()));
                }
            }
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11272ac
        /* renamed from: c */
        public final int mo21001c() {
            int[] iArr = this.f36983b;
            if (iArr.length > 0) {
                return iArr[0];
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.source.AbstractC11272ac
        /* renamed from: d */
        public final AbstractC11272ac mo21000d() {
            return new C11273a(0, new Random(this.f36982a.nextLong()));
        }
    }

    /* renamed from: a */
    int mo21008a();

    /* renamed from: a */
    int mo21007a(int i);

    /* renamed from: a */
    AbstractC11272ac mo21006a(int i, int i2);

    /* renamed from: b */
    int mo21004b();

    /* renamed from: b */
    int mo21003b(int i);

    /* renamed from: b */
    AbstractC11272ac mo21002b(int i, int i2);

    /* renamed from: c */
    int mo21001c();

    /* renamed from: d */
    AbstractC11272ac mo21000d();
}
