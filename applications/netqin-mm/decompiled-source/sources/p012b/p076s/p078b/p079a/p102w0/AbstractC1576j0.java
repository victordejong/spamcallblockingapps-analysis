package p012b.p076s.p078b.p079a.p102w0;

import java.util.Arrays;
import java.util.Random;
/* renamed from: b.s.b.a.w0.j0 */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/j0.class */
public interface AbstractC1576j0 {

    /* renamed from: b.s.b.a.w0.j0$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/j0$a.class */
    public static class C1577a implements AbstractC1576j0 {

        /* renamed from: a */
        public final Random f6444a;

        /* renamed from: b */
        public final int[] f6445b;

        /* renamed from: c */
        public final int[] f6446c;

        public C1577a(int i) {
            this(i, new Random());
        }

        public C1577a(int i, Random random) {
            this(m32751a(i, random), random);
        }

        public C1577a(int[] iArr, Random random) {
            this.f6445b = iArr;
            this.f6444a = random;
            this.f6446c = new int[iArr.length];
            for (int i = 0; i < iArr.length; i++) {
                this.f6446c[iArr[i]] = i;
            }
        }

        /* renamed from: a */
        public static int[] m32751a(int i, Random random) {
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

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1576j0
        /* renamed from: a */
        public int mo32754a() {
            return this.f6445b.length;
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1576j0
        /* renamed from: a */
        public int mo32753a(int i) {
            int i2 = this.f6446c[i];
            int i3 = -1;
            int i4 = i2 - 1;
            if (i4 >= 0) {
                i3 = this.f6445b[i4];
            }
            return i3;
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1576j0
        /* renamed from: a */
        public AbstractC1576j0 mo32752a(int i, int i2) {
            int i3 = i2 - i;
            int[] iArr = new int[this.f6445b.length - i3];
            int i4 = 0;
            int i5 = 0;
            while (true) {
                int[] iArr2 = this.f6445b;
                if (i4 >= iArr2.length) {
                    return new C1577a(iArr, new Random(this.f6444a.nextLong()));
                }
                if (iArr2[i4] < i || iArr2[i4] >= i2) {
                    int[] iArr3 = this.f6445b;
                    iArr[i4 - i5] = iArr3[i4] >= i ? iArr3[i4] - i3 : iArr3[i4];
                } else {
                    i5++;
                }
                i4++;
            }
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1576j0
        /* renamed from: b */
        public int mo32750b() {
            int[] iArr = this.f6445b;
            return iArr.length > 0 ? iArr[0] : -1;
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1576j0
        /* renamed from: b */
        public int mo32749b(int i) {
            int i2 = this.f6446c[i] + 1;
            int[] iArr = this.f6445b;
            return i2 < iArr.length ? iArr[i2] : -1;
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1576j0
        /* renamed from: b */
        public AbstractC1576j0 mo32748b(int i, int i2) {
            int[] iArr = new int[i2];
            int[] iArr2 = new int[i2];
            int i3 = 0;
            while (i3 < i2) {
                iArr[i3] = this.f6444a.nextInt(this.f6445b.length + 1);
                int i4 = i3 + 1;
                int nextInt = this.f6444a.nextInt(i4);
                iArr2[i3] = iArr2[nextInt];
                iArr2[nextInt] = i3 + i;
                i3 = i4;
            }
            Arrays.sort(iArr);
            int[] iArr3 = new int[this.f6445b.length + i2];
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < this.f6445b.length + i2; i7++) {
                if (i5 >= i2 || i6 != iArr[i5]) {
                    iArr3[i7] = this.f6445b[i6];
                    if (iArr3[i7] >= i) {
                        iArr3[i7] = iArr3[i7] + i2;
                    }
                    i6++;
                } else {
                    iArr3[i7] = iArr2[i5];
                    i5++;
                }
            }
            return new C1577a(iArr3, new Random(this.f6444a.nextLong()));
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1576j0
        /* renamed from: c */
        public int mo32747c() {
            int[] iArr = this.f6445b;
            return iArr.length > 0 ? iArr[iArr.length - 1] : -1;
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1576j0
        /* renamed from: d */
        public AbstractC1576j0 mo32746d() {
            return new C1577a(0, new Random(this.f6444a.nextLong()));
        }
    }

    /* renamed from: a */
    int mo32754a();

    /* renamed from: a */
    int mo32753a(int i);

    /* renamed from: a */
    AbstractC1576j0 mo32752a(int i, int i2);

    /* renamed from: b */
    int mo32750b();

    /* renamed from: b */
    int mo32749b(int i);

    /* renamed from: b */
    AbstractC1576j0 mo32748b(int i, int i2);

    /* renamed from: c */
    int mo32747c();

    /* renamed from: d */
    AbstractC1576j0 mo32746d();
}
