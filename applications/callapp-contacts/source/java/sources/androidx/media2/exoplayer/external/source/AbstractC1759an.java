package androidx.media2.exoplayer.external.source;

import java.util.Arrays;
import java.util.Random;
/* renamed from: androidx.media2.exoplayer.external.source.an */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/an.class */
public interface AbstractC1759an {

    /* renamed from: androidx.media2.exoplayer.external.source.an$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/an$a.class */
    public static final class C1760a implements AbstractC1759an {

        /* renamed from: a */
        private final Random f6951a;

        /* renamed from: b */
        private final int[] f6952b;

        /* renamed from: c */
        private final int[] f6953c;

        public C1760a(int i) {
            this(i, new Random());
        }

        public C1760a(int i, long j) {
            this(i, new Random(j));
        }

        private C1760a(int i, Random random) {
            this(m42292a(i, random), random);
        }

        public C1760a(int[] iArr, long j) {
            this(Arrays.copyOf(iArr, iArr.length), new Random(j));
        }

        private C1760a(int[] iArr, Random random) {
            this.f6952b = iArr;
            this.f6951a = random;
            this.f6953c = new int[iArr.length];
            for (int i = 0; i < iArr.length; i++) {
                this.f6953c[iArr[i]] = i;
            }
        }

        /* renamed from: a */
        private static int[] m42292a(int i, Random random) {
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

        @Override // androidx.media2.exoplayer.external.source.AbstractC1759an
        /* renamed from: a */
        public final int mo42295a() {
            return this.f6952b.length;
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1759an
        /* renamed from: a */
        public final int mo42294a(int i) {
            int i2 = this.f6953c[i] + 1;
            int[] iArr = this.f6952b;
            if (i2 < iArr.length) {
                return iArr[i2];
            }
            return -1;
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1759an
        /* renamed from: a */
        public final AbstractC1759an mo42293a(int i, int i2) {
            int[] iArr = new int[i2];
            int[] iArr2 = new int[i2];
            int i3 = 0;
            int i4 = 0;
            while (true) {
                int i5 = i4;
                if (i5 >= i2) {
                    break;
                }
                iArr[i5] = this.f6951a.nextInt(this.f6952b.length + 1);
                int i6 = i5 + 1;
                int nextInt = this.f6951a.nextInt(i6);
                iArr2[i5] = iArr2[nextInt];
                iArr2[nextInt] = i5 + i;
                i4 = i6;
            }
            Arrays.sort(iArr);
            int[] iArr3 = new int[this.f6952b.length + i2];
            int i7 = 0;
            int i8 = 0;
            while (true) {
                int[] iArr4 = this.f6952b;
                if (i3 < iArr4.length + i2) {
                    if (i7 >= i2 || i8 != iArr[i7]) {
                        iArr3[i3] = iArr4[i8];
                        if (iArr3[i3] >= i) {
                            iArr3[i3] = iArr3[i3] + i2;
                        }
                        i8++;
                    } else {
                        iArr3[i3] = iArr2[i7];
                        i7++;
                    }
                    i3++;
                } else {
                    return new C1760a(iArr3, new Random(this.f6951a.nextLong()));
                }
            }
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1759an
        /* renamed from: b */
        public final int mo42291b() {
            int[] iArr = this.f6952b;
            if (iArr.length > 0) {
                return iArr[iArr.length - 1];
            }
            return -1;
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1759an
        /* renamed from: b */
        public final int mo42290b(int i) {
            int i2 = this.f6953c[i] - 1;
            if (i2 >= 0) {
                return this.f6952b[i2];
            }
            return -1;
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1759an
        /* renamed from: b */
        public final AbstractC1759an mo42289b(int i, int i2) {
            int i3 = i2 - i;
            int[] iArr = new int[this.f6952b.length - i3];
            int i4 = 0;
            int i5 = 0;
            while (true) {
                int[] iArr2 = this.f6952b;
                if (i4 < iArr2.length) {
                    if (iArr2[i4] < i || iArr2[i4] >= i2) {
                        iArr[i4 - i5] = iArr2[i4] >= i ? iArr2[i4] - i3 : iArr2[i4];
                    } else {
                        i5++;
                    }
                    i4++;
                } else {
                    return new C1760a(iArr, new Random(this.f6951a.nextLong()));
                }
            }
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1759an
        /* renamed from: c */
        public final int mo42288c() {
            int[] iArr = this.f6952b;
            if (iArr.length > 0) {
                return iArr[0];
            }
            return -1;
        }

        @Override // androidx.media2.exoplayer.external.source.AbstractC1759an
        /* renamed from: d */
        public final AbstractC1759an mo42287d() {
            return new C1760a(0, new Random(this.f6951a.nextLong()));
        }
    }

    /* renamed from: a */
    int mo42295a();

    /* renamed from: a */
    int mo42294a(int i);

    /* renamed from: a */
    AbstractC1759an mo42293a(int i, int i2);

    /* renamed from: b */
    int mo42291b();

    /* renamed from: b */
    int mo42290b(int i);

    /* renamed from: b */
    AbstractC1759an mo42289b(int i, int i2);

    /* renamed from: c */
    int mo42288c();

    /* renamed from: d */
    AbstractC1759an mo42287d();
}
