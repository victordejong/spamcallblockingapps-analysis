package com.google.zxing.common.reedsolomon;
/* renamed from: com.google.zxing.common.reedsolomon.b */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/common/reedsolomon/b.class */
public final class C16194b {

    /* renamed from: a */
    final C16193a f57176a;

    /* renamed from: b */
    final int[] f57177b;

    public C16194b(C16193a c16193a, int[] iArr) {
        if (iArr.length != 0) {
            this.f57176a = c16193a;
            int length = iArr.length;
            if (length <= 1 || iArr[0] != 0) {
                this.f57177b = iArr;
                return;
            }
            int i = 1;
            while (i < length && iArr[i] == 0) {
                i++;
            }
            if (i == length) {
                this.f57177b = new int[]{0};
                return;
            }
            int[] iArr2 = new int[length - i];
            this.f57177b = iArr2;
            System.arraycopy(iArr, i, iArr2, 0, iArr2.length);
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    private int m7672a(int i) {
        int[] iArr = this.f57177b;
        return iArr[(iArr.length - 1) - i];
    }

    /* renamed from: b */
    private C16194b m7669b(C16194b c16194b) {
        int[] iArr;
        if (this.f57176a.equals(c16194b.f57176a)) {
            if (m7673a()) {
                return c16194b;
            }
            if (c16194b.m7673a()) {
                return this;
            }
            int[] iArr2 = this.f57177b;
            int[] iArr3 = c16194b.f57177b;
            if (iArr2.length > iArr3.length) {
                iArr = iArr2;
                iArr2 = iArr3;
            } else {
                iArr = iArr3;
            }
            int[] iArr4 = new int[iArr.length];
            int length = iArr.length - iArr2.length;
            System.arraycopy(iArr, 0, iArr4, 0, length);
            for (int i = length; i < iArr.length; i++) {
                iArr4[i] = C16193a.m7675a(iArr2[i - length], iArr[i]);
            }
            return new C16194b(this.f57176a, iArr4);
        }
        throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
    }

    /* renamed from: a */
    public final C16194b m7671a(int i, int i2) {
        if (i >= 0) {
            if (i2 == 0) {
                return this.f57176a.f57171k;
            }
            int length = this.f57177b.length;
            int[] iArr = new int[i + length];
            for (int i3 = 0; i3 < length; i3++) {
                iArr[i3] = this.f57176a.m7674b(this.f57177b[i3], i2);
            }
            return new C16194b(this.f57176a, iArr);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public final boolean m7673a() {
        return this.f57177b[0] == 0;
    }

    /* renamed from: a */
    public final C16194b[] m7670a(C16194b c16194b) {
        C16194b c16194b2;
        C16194b c16194b3;
        if (this.f57176a.equals(c16194b.f57176a)) {
            if (c16194b.m7673a()) {
                throw new IllegalArgumentException("Divide by 0");
            }
            C16194b c16194b4 = this.f57176a.f57171k;
            int m7672a = c16194b.m7672a(c16194b.f57177b.length - 1);
            C16193a c16193a = this.f57176a;
            if (m7672a == 0) {
                throw new ArithmeticException();
            }
            int i = c16193a.f57169i[(c16193a.f57172l - c16193a.f57170j[m7672a]) - 1];
            C16194b c16194b5 = this;
            while (true) {
                c16194b2 = c16194b5;
                if (c16194b2.f57177b.length - 1 < c16194b.f57177b.length - 1 || c16194b2.m7673a()) {
                    break;
                }
                int[] iArr = c16194b2.f57177b;
                int length = (iArr.length - 1) - (c16194b.f57177b.length - 1);
                int m7674b = this.f57176a.m7674b(c16194b2.m7672a(iArr.length - 1), i);
                C16194b m7671a = c16194b.m7671a(length, m7674b);
                C16193a c16193a2 = this.f57176a;
                if (length < 0) {
                    throw new IllegalArgumentException();
                }
                if (m7674b == 0) {
                    c16194b3 = c16193a2.f57171k;
                } else {
                    int[] iArr2 = new int[length + 1];
                    iArr2[0] = m7674b;
                    c16194b3 = new C16194b(c16193a2, iArr2);
                }
                c16194b4 = c16194b4.m7669b(c16194b3);
                c16194b5 = c16194b2.m7669b(m7671a);
            }
            return new C16194b[]{c16194b4, c16194b2};
        }
        throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
    }

    public final String toString() {
        int i;
        StringBuilder sb = new StringBuilder((this.f57177b.length - 1) * 8);
        for (int length = this.f57177b.length - 1; length >= 0; length--) {
            int m7672a = m7672a(length);
            if (m7672a != 0) {
                if (m7672a < 0) {
                    sb.append(" - ");
                    i = -m7672a;
                } else {
                    i = m7672a;
                    if (sb.length() > 0) {
                        sb.append(" + ");
                        i = m7672a;
                    }
                }
                if (length == 0 || i != 1) {
                    C16193a c16193a = this.f57176a;
                    if (i == 0) {
                        throw new IllegalArgumentException();
                    }
                    int i2 = c16193a.f57170j[i];
                    if (i2 == 0) {
                        sb.append('1');
                    } else if (i2 == 1) {
                        sb.append('a');
                    } else {
                        sb.append("a^");
                        sb.append(i2);
                    }
                }
                if (length != 0) {
                    if (length == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(length);
                    }
                }
            }
        }
        return sb.toString();
    }
}
