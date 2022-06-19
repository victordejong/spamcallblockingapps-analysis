package com.google.zxing.common.reedsolomon;
/* renamed from: com.google.zxing.common.reedsolomon.b */
/* loaded from: classes-dex2jar.jar:com/google/zxing/common/reedsolomon/b.class */
public final class C5120b {

    /* renamed from: a */
    private final C5119a f21653a;

    /* renamed from: b */
    private final int[] f21654b;

    public C5120b(C5119a c5119a, int[] iArr) {
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.f21653a = c5119a;
        int length = iArr.length;
        if (length <= 1 || iArr[0] != 0) {
            this.f21654b = iArr;
            return;
        }
        int i = 1;
        while (i < length && iArr[i] == 0) {
            i++;
        }
        if (i == length) {
            this.f21654b = new int[]{0};
            return;
        }
        this.f21654b = new int[length - i];
        System.arraycopy(iArr, i, this.f21654b, 0, this.f21654b.length);
    }

    /* renamed from: a */
    int m1444a(int i) {
        return this.f21654b[(this.f21654b.length - 1) - i];
    }

    /* renamed from: a */
    public C5120b m1443a(int i, int i2) {
        C5120b c5120b;
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i2 == 0) {
            c5120b = this.f21653a.m1453a();
        } else {
            int length = this.f21654b.length;
            int[] iArr = new int[length + i];
            for (int i3 = 0; i3 < length; i3++) {
                iArr[i3] = this.f21653a.m1446c(this.f21654b[i3], i2);
            }
            c5120b = new C5120b(this.f21653a, iArr);
        }
        return c5120b;
    }

    /* renamed from: a */
    C5120b m1442a(C5120b c5120b) {
        int[] iArr;
        if (!this.f21653a.equals(c5120b.f21653a)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (!m1439c()) {
            if (c5120b.m1439c()) {
                c5120b = this;
            } else {
                int[] iArr2 = this.f21654b;
                int[] iArr3 = c5120b.f21654b;
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
                    iArr4[i] = C5119a.m1448b(iArr2[i - length], iArr[i]);
                }
                c5120b = new C5120b(this.f21653a, iArr4);
            }
        }
        return c5120b;
    }

    /* renamed from: a */
    public int[] m1445a() {
        return this.f21654b;
    }

    /* renamed from: b */
    int m1441b() {
        return this.f21654b.length - 1;
    }

    /* renamed from: b */
    public C5120b m1440b(C5120b c5120b) {
        C5120b c5120b2;
        if (!this.f21653a.equals(c5120b.f21653a)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (m1439c() || c5120b.m1439c()) {
            c5120b2 = this.f21653a.m1453a();
        } else {
            int[] iArr = this.f21654b;
            int length = iArr.length;
            int[] iArr2 = c5120b.f21654b;
            int length2 = iArr2.length;
            int[] iArr3 = new int[(length + length2) - 1];
            for (int i = 0; i < length; i++) {
                int i2 = iArr[i];
                for (int i3 = 0; i3 < length2; i3++) {
                    iArr3[i + i3] = C5119a.m1448b(iArr3[i + i3], this.f21653a.m1446c(i2, iArr2[i3]));
                }
            }
            c5120b2 = new C5120b(this.f21653a, iArr3);
        }
        return c5120b2;
    }

    /* renamed from: c */
    boolean m1439c() {
        boolean z = false;
        if (this.f21654b[0] == 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    public C5120b[] m1438c(C5120b c5120b) {
        C5120b c5120b2;
        if (!this.f21653a.equals(c5120b.f21653a)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (c5120b.m1439c()) {
            throw new IllegalArgumentException("Divide by 0");
        }
        C5120b m1453a = this.f21653a.m1453a();
        int m1447c = this.f21653a.m1447c(c5120b.m1444a(c5120b.m1441b()));
        C5120b c5120b3 = this;
        while (true) {
            c5120b2 = c5120b3;
            if (c5120b2.m1441b() < c5120b.m1441b() || c5120b2.m1439c()) {
                break;
            }
            int m1441b = c5120b2.m1441b() - c5120b.m1441b();
            int m1446c = this.f21653a.m1446c(c5120b2.m1444a(c5120b2.m1441b()), m1447c);
            C5120b m1443a = c5120b.m1443a(m1441b, m1446c);
            m1453a = m1453a.m1442a(this.f21653a.m1451a(m1441b, m1446c));
            c5120b3 = c5120b2.m1442a(m1443a);
        }
        return new C5120b[]{m1453a, c5120b2};
    }

    public String toString() {
        int i;
        StringBuilder sb = new StringBuilder(m1441b() * 8);
        for (int m1441b = m1441b(); m1441b >= 0; m1441b--) {
            int m1444a = m1444a(m1441b);
            if (m1444a != 0) {
                if (m1444a < 0) {
                    sb.append(" - ");
                    i = -m1444a;
                } else {
                    i = m1444a;
                    if (sb.length() > 0) {
                        sb.append(" + ");
                        i = m1444a;
                    }
                }
                if (m1441b == 0 || i != 1) {
                    int m1449b = this.f21653a.m1449b(i);
                    if (m1449b == 0) {
                        sb.append('1');
                    } else if (m1449b == 1) {
                        sb.append('a');
                    } else {
                        sb.append("a^");
                        sb.append(m1449b);
                    }
                }
                if (m1441b != 0) {
                    if (m1441b == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(m1441b);
                    }
                }
            }
        }
        return sb.toString();
    }
}
