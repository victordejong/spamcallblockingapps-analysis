package p193e.p1545k.p1546a.p1548b.p1549a0;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import p193e.p1545k.p1546a.p1548b.p1552w.C23400f;
/* renamed from: e.k.a.b.a0.n */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/a0/n.class */
public final class C23362n {

    /* renamed from: l */
    public static final char[] f64590l = new char[0];

    /* renamed from: a */
    public final C23346a f64591a;

    /* renamed from: b */
    public char[] f64592b;

    /* renamed from: c */
    public int f64593c;

    /* renamed from: d */
    public int f64594d;

    /* renamed from: e */
    public ArrayList<char[]> f64595e;

    /* renamed from: f */
    public boolean f64596f;

    /* renamed from: g */
    public int f64597g;

    /* renamed from: h */
    public char[] f64598h;

    /* renamed from: i */
    public int f64599i;

    /* renamed from: j */
    public String f64600j;

    /* renamed from: k */
    public char[] f64601k;

    public C23362n(C23346a c23346a) {
        this.f64591a = c23346a;
    }

    public C23362n(C23346a c23346a, char[] cArr) {
        this.f64591a = null;
        this.f64598h = cArr;
        this.f64599i = cArr.length;
        this.f64593c = -1;
    }

    /* renamed from: a */
    public void m7239a(String str, int i, int i2) {
        if (this.f64593c >= 0) {
            m7221s(i2);
        }
        this.f64600j = null;
        this.f64601k = null;
        char[] cArr = this.f64598h;
        int length = cArr.length;
        int i3 = this.f64599i;
        int i4 = length - i3;
        if (i4 >= i2) {
            str.getChars(i, i + i2, cArr, i3);
            this.f64599i += i2;
            return;
        }
        int i5 = i;
        int i6 = i2;
        if (i4 > 0) {
            i5 = i + i4;
            str.getChars(i, i5, cArr, i3);
            i6 = i2 - i4;
        }
        while (true) {
            m7230j();
            int min = Math.min(this.f64598h.length, i6);
            int i7 = i5 + min;
            str.getChars(i5, i7, this.f64598h, 0);
            this.f64599i += min;
            i6 -= min;
            if (i6 <= 0) {
                return;
            }
            i5 = i7;
        }
    }

    /* renamed from: b */
    public void m7238b(char[] cArr, int i, int i2) {
        int i3;
        if (this.f64593c >= 0) {
            m7221s(i2);
        }
        this.f64600j = null;
        this.f64601k = null;
        char[] cArr2 = this.f64598h;
        int length = cArr2.length;
        int i4 = this.f64599i;
        int i5 = length - i4;
        if (i5 >= i2) {
            System.arraycopy(cArr, i, cArr2, i4, i2);
            this.f64599i += i2;
            return;
        }
        int i6 = i;
        int i7 = i2;
        if (i5 > 0) {
            System.arraycopy(cArr, i, cArr2, i4, i5);
            i6 = i + i5;
            i7 = i2 - i5;
        }
        do {
            m7230j();
            int min = Math.min(this.f64598h.length, i7);
            System.arraycopy(cArr, i6, this.f64598h, 0, min);
            this.f64599i += min;
            i6 += min;
            i3 = i7 - min;
            i7 = i3;
        } while (i3 > 0);
    }

    /* renamed from: c */
    public final char[] m7237c(int i) {
        C23346a c23346a = this.f64591a;
        return c23346a != null ? c23346a.m7253b(2, i) : new char[Math.max(i, 500)];
    }

    /* renamed from: d */
    public final void m7236d() {
        this.f64596f = false;
        this.f64595e.clear();
        this.f64597g = 0;
        this.f64599i = 0;
    }

    /* renamed from: e */
    public char[] m7235e() {
        int i;
        char[] cArr = this.f64601k;
        char[] cArr2 = cArr;
        if (cArr == null) {
            cArr2 = f64590l;
            String str = this.f64600j;
            if (str != null) {
                cArr2 = str.toCharArray();
            } else {
                int i2 = this.f64593c;
                if (i2 >= 0) {
                    int i3 = this.f64594d;
                    if (i3 >= 1) {
                        cArr2 = i2 == 0 ? Arrays.copyOf(this.f64592b, i3) : Arrays.copyOfRange(this.f64592b, i2, i3 + i2);
                    }
                } else {
                    int m7222r = m7222r();
                    if (m7222r >= 1) {
                        cArr2 = new char[m7222r];
                        ArrayList<char[]> arrayList = this.f64595e;
                        if (arrayList != null) {
                            int size = arrayList.size();
                            int i4 = 0;
                            int i5 = 0;
                            while (true) {
                                i = i5;
                                if (i4 >= size) {
                                    break;
                                }
                                char[] cArr3 = this.f64595e.get(i4);
                                int length = cArr3.length;
                                System.arraycopy(cArr3, 0, cArr2, i5, length);
                                i5 += length;
                                i4++;
                            }
                        } else {
                            i = 0;
                        }
                        System.arraycopy(this.f64598h, 0, cArr2, i, this.f64599i);
                    }
                }
            }
            this.f64601k = cArr2;
        }
        return cArr2;
    }

    /* renamed from: f */
    public BigDecimal m7234f() throws NumberFormatException {
        char[] cArr;
        char[] cArr2;
        char[] cArr3 = this.f64601k;
        if (cArr3 != null) {
            String str = C23400f.f64796a;
            return C23400f.m7119d(cArr3, 0, cArr3.length);
        }
        int i = this.f64593c;
        if (i >= 0 && (cArr2 = this.f64592b) != null) {
            return C23400f.m7119d(cArr2, i, this.f64594d);
        }
        if (this.f64597g == 0 && (cArr = this.f64598h) != null) {
            return C23400f.m7119d(cArr, 0, this.f64599i);
        }
        char[] m7235e = m7235e();
        String str2 = C23400f.f64796a;
        return C23400f.m7119d(m7235e, 0, m7235e.length);
    }

    /* renamed from: g */
    public int m7233g(boolean z) {
        char[] cArr;
        int i = this.f64593c;
        return (i < 0 || (cArr = this.f64592b) == null) ? z ? -C23400f.m7116g(this.f64598h, 1, this.f64599i - 1) : C23400f.m7116g(this.f64598h, 0, this.f64599i) : z ? -C23400f.m7116g(cArr, i + 1, this.f64594d - 1) : C23400f.m7116g(cArr, i, this.f64594d);
    }

    /* renamed from: h */
    public String m7232h() {
        if (this.f64600j == null) {
            if (this.f64601k != null) {
                this.f64600j = new String(this.f64601k);
            } else {
                String str = "";
                if (this.f64593c < 0) {
                    int i = this.f64597g;
                    int i2 = this.f64599i;
                    if (i == 0) {
                        if (i2 != 0) {
                            str = new String(this.f64598h, 0, i2);
                        }
                        this.f64600j = str;
                    } else {
                        StringBuilder sb = new StringBuilder(i + i2);
                        ArrayList<char[]> arrayList = this.f64595e;
                        if (arrayList != null) {
                            int size = arrayList.size();
                            for (int i3 = 0; i3 < size; i3++) {
                                char[] cArr = this.f64595e.get(i3);
                                sb.append(cArr, 0, cArr.length);
                            }
                        }
                        sb.append(this.f64598h, 0, this.f64599i);
                        this.f64600j = sb.toString();
                    }
                } else if (this.f64594d < 1) {
                    this.f64600j = "";
                    return "";
                } else {
                    this.f64600j = new String(this.f64592b, this.f64593c, this.f64594d);
                }
            }
        }
        return this.f64600j;
    }

    /* renamed from: i */
    public char[] m7231i() {
        this.f64593c = -1;
        this.f64599i = 0;
        this.f64594d = 0;
        this.f64592b = null;
        this.f64600j = null;
        this.f64601k = null;
        if (this.f64596f) {
            m7236d();
        }
        char[] cArr = this.f64598h;
        char[] cArr2 = cArr;
        if (cArr == null) {
            cArr2 = m7237c(0);
            this.f64598h = cArr2;
        }
        return cArr2;
    }

    /* renamed from: j */
    public final void m7230j() {
        int i;
        if (this.f64595e == null) {
            this.f64595e = new ArrayList<>();
        }
        char[] cArr = this.f64598h;
        this.f64596f = true;
        this.f64595e.add(cArr);
        this.f64597g += cArr.length;
        this.f64599i = 0;
        int length = cArr.length;
        int i2 = length + (length >> 1);
        if (i2 < 500) {
            i = 500;
        } else {
            i = i2;
            if (i2 > 65536) {
                i = 65536;
            }
        }
        this.f64598h = new char[i];
    }

    /* renamed from: k */
    public char[] m7229k() {
        char[] cArr = this.f64598h;
        int length = cArr.length;
        int i = (length >> 1) + length;
        int i2 = i;
        if (i > 65536) {
            i2 = (length >> 2) + length;
        }
        char[] copyOf = Arrays.copyOf(cArr, i2);
        this.f64598h = copyOf;
        return copyOf;
    }

    /* renamed from: l */
    public char[] m7228l() {
        int i;
        if (this.f64595e == null) {
            this.f64595e = new ArrayList<>();
        }
        this.f64596f = true;
        this.f64595e.add(this.f64598h);
        int length = this.f64598h.length;
        this.f64597g += length;
        this.f64599i = 0;
        int i2 = length + (length >> 1);
        if (i2 < 500) {
            i = 500;
        } else {
            i = i2;
            if (i2 > 65536) {
                i = 65536;
            }
        }
        char[] cArr = new char[i];
        this.f64598h = cArr;
        return cArr;
    }

    /* renamed from: m */
    public char[] m7227m() {
        if (this.f64593c >= 0) {
            m7221s(1);
        } else {
            char[] cArr = this.f64598h;
            if (cArr == null) {
                this.f64598h = m7237c(0);
            } else if (this.f64599i >= cArr.length) {
                m7230j();
            }
        }
        return this.f64598h;
    }

    /* renamed from: n */
    public char[] m7226n() {
        if (this.f64593c >= 0) {
            return this.f64592b;
        }
        char[] cArr = this.f64601k;
        if (cArr != null) {
            return cArr;
        }
        String str = this.f64600j;
        if (str != null) {
            char[] charArray = str.toCharArray();
            this.f64601k = charArray;
            return charArray;
        } else if (this.f64596f) {
            return m7235e();
        } else {
            char[] cArr2 = this.f64598h;
            char[] cArr3 = cArr2;
            if (cArr2 == null) {
                cArr3 = f64590l;
            }
            return cArr3;
        }
    }

    /* renamed from: o */
    public int m7225o() {
        int i = this.f64593c;
        if (i < 0) {
            i = 0;
        }
        return i;
    }

    /* renamed from: p */
    public void m7224p() {
        char[] cArr;
        this.f64593c = -1;
        this.f64599i = 0;
        this.f64594d = 0;
        this.f64592b = null;
        this.f64601k = null;
        if (this.f64596f) {
            m7236d();
        }
        C23346a c23346a = this.f64591a;
        if (c23346a == null || (cArr = this.f64598h) == null) {
            return;
        }
        this.f64598h = null;
        c23346a.f64564b.set(2, cArr);
    }

    /* renamed from: q */
    public void m7223q(char[] cArr, int i, int i2) {
        this.f64600j = null;
        this.f64601k = null;
        this.f64592b = cArr;
        this.f64593c = i;
        this.f64594d = i2;
        if (this.f64596f) {
            m7236d();
        }
    }

    /* renamed from: r */
    public int m7222r() {
        if (this.f64593c >= 0) {
            return this.f64594d;
        }
        char[] cArr = this.f64601k;
        if (cArr != null) {
            return cArr.length;
        }
        String str = this.f64600j;
        return str != null ? str.length() : this.f64597g + this.f64599i;
    }

    /* renamed from: s */
    public final void m7221s(int i) {
        int i2 = this.f64594d;
        this.f64594d = 0;
        char[] cArr = this.f64592b;
        this.f64592b = null;
        int i3 = this.f64593c;
        this.f64593c = -1;
        int i4 = i + i2;
        char[] cArr2 = this.f64598h;
        if (cArr2 == null || i4 > cArr2.length) {
            this.f64598h = m7237c(i4);
        }
        if (i2 > 0) {
            System.arraycopy(cArr, i3, this.f64598h, 0, i2);
        }
        this.f64597g = 0;
        this.f64599i = i2;
    }

    public String toString() {
        return m7232h();
    }
}
