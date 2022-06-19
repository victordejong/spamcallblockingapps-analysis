package p193e.p1545k.p1546a.p1548b.p1554y;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23355g;
/* renamed from: e.k.a.b.y.a */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/y/a.class */
public final class C23416a {

    /* renamed from: a */
    public final C23416a f64934a;

    /* renamed from: b */
    public final AtomicReference<C23417a> f64935b;

    /* renamed from: c */
    public final int f64936c;

    /* renamed from: d */
    public boolean f64937d;

    /* renamed from: e */
    public final boolean f64938e;

    /* renamed from: f */
    public int[] f64939f;

    /* renamed from: g */
    public int f64940g;

    /* renamed from: h */
    public int f64941h;

    /* renamed from: i */
    public int f64942i;

    /* renamed from: j */
    public int f64943j;

    /* renamed from: k */
    public int f64944k;

    /* renamed from: l */
    public String[] f64945l;

    /* renamed from: m */
    public int f64946m;

    /* renamed from: n */
    public int f64947n;

    /* renamed from: o */
    public boolean f64948o;

    /* renamed from: e.k.a.b.y.a$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/b/y/a$a.class */
    public static final class C23417a {

        /* renamed from: a */
        public final int f64949a;

        /* renamed from: b */
        public final int f64950b;

        /* renamed from: c */
        public final int f64951c;

        /* renamed from: d */
        public final int[] f64952d;

        /* renamed from: e */
        public final String[] f64953e;

        /* renamed from: f */
        public final int f64954f;

        /* renamed from: g */
        public final int f64955g;

        public C23417a(int i, int i2, int i3, int[] iArr, String[] strArr, int i4, int i5) {
            this.f64949a = i;
            this.f64950b = i2;
            this.f64951c = i3;
            this.f64952d = iArr;
            this.f64953e = strArr;
            this.f64954f = i4;
            this.f64955g = i5;
        }

        public C23417a(C23416a c23416a) {
            this.f64949a = c23416a.f64940g;
            this.f64950b = c23416a.f64944k;
            this.f64951c = c23416a.f64943j;
            this.f64952d = c23416a.f64939f;
            this.f64953e = c23416a.f64945l;
            this.f64954f = c23416a.f64946m;
            this.f64955g = c23416a.f64947n;
        }

        /* renamed from: a */
        public static C23417a m6906a(int i) {
            int i2 = i << 3;
            return new C23417a(i, 0, C23416a.m6921b(i), new int[i2], new String[i << 1], i2 - i, i2);
        }
    }

    public C23416a(int i, boolean z, int i2, boolean z2) {
        int i3;
        this.f64934a = null;
        this.f64936c = i2;
        this.f64937d = z;
        this.f64938e = z2;
        int i4 = 16;
        if (i < 16) {
            i3 = 16;
        } else {
            i3 = i;
            if (((i - 1) & i) != 0) {
                while (true) {
                    i3 = i4;
                    if (i4 >= i) {
                        break;
                    }
                    i4 += i4;
                }
            }
        }
        this.f64935b = new AtomicReference<>(C23417a.m6906a(i3));
    }

    public C23416a(C23416a c23416a, boolean z, int i, boolean z2, C23417a c23417a) {
        this.f64934a = c23416a;
        this.f64936c = i;
        this.f64937d = z;
        this.f64938e = z2;
        this.f64935b = null;
        this.f64944k = c23417a.f64950b;
        int i2 = c23417a.f64949a;
        this.f64940g = i2;
        int i3 = i2 << 2;
        this.f64941h = i3;
        this.f64942i = i3 + (i3 >> 1);
        this.f64943j = c23417a.f64951c;
        this.f64939f = c23417a.f64952d;
        this.f64945l = c23417a.f64953e;
        this.f64946m = c23417a.f64954f;
        this.f64947n = c23417a.f64955g;
        this.f64948o = true;
    }

    /* renamed from: b */
    public static int m6921b(int i) {
        int i2 = i >> 2;
        if (i2 < 64) {
            return 4;
        }
        if (i2 <= 256) {
            return 5;
        }
        return i2 <= 1024 ? 6 : 7;
    }

    /* renamed from: k */
    public static C23416a m6912k() {
        long currentTimeMillis = System.currentTimeMillis();
        return new C23416a(64, true, (((int) currentTimeMillis) + ((int) (currentTimeMillis >>> 32))) | 1, true);
    }

    /* renamed from: a */
    public final int m6922a(int i) {
        return (i & (this.f64940g - 1)) << 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006a  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m6920c(int r8) {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1554y.C23416a.m6920c(int):int");
    }

    /* renamed from: d */
    public final int m6919d(int i) {
        int[] iArr;
        this.f64948o = false;
        int[] iArr2 = this.f64939f;
        String[] strArr = this.f64945l;
        int i2 = this.f64940g;
        int i3 = this.f64944k;
        int i4 = i2 + i2;
        int i5 = this.f64946m;
        if (i4 > 65536) {
            m6907p(true);
        } else {
            this.f64939f = new int[iArr2.length + (i2 << 3)];
            this.f64940g = i4;
            int i6 = i4 << 2;
            this.f64941h = i6;
            this.f64942i = i6 + (i6 >> 1);
            this.f64943j = m6921b(i4);
            this.f64945l = new String[strArr.length << 1];
            m6907p(false);
            int[] iArr3 = new int[16];
            int i7 = 0;
            int i8 = 0;
            while (i7 < i5) {
                int i9 = iArr2[i7 + 3];
                if (i9 == 0) {
                    iArr = iArr3;
                } else {
                    i8++;
                    String str = strArr[i7 >> 2];
                    if (i9 == 1) {
                        iArr3[0] = iArr2[i7];
                        m6916g(str, iArr3, 1);
                        iArr = iArr3;
                    } else if (i9 == 2) {
                        iArr3[0] = iArr2[i7];
                        iArr3[1] = iArr2[i7 + 1];
                        m6916g(str, iArr3, 2);
                        iArr = iArr3;
                    } else if (i9 != 3) {
                        iArr = iArr3;
                        if (i9 > iArr3.length) {
                            iArr = new int[i9];
                        }
                        System.arraycopy(iArr2, iArr2[i7 + 1], iArr, 0, i9);
                        m6916g(str, iArr, i9);
                    } else {
                        iArr3[0] = iArr2[i7];
                        iArr3[1] = iArr2[i7 + 1];
                        iArr3[2] = iArr2[i7 + 2];
                        m6916g(str, iArr3, 3);
                        iArr = iArr3;
                    }
                }
                i7 += 4;
                iArr3 = iArr;
            }
            if (i8 != i3) {
                throw new IllegalStateException(C22128a.m8595m2("Failed rehash(): old count=", i3, ", copyCount=", i8));
            }
        }
        int i10 = (i & (this.f64940g - 1)) << 2;
        int[] iArr4 = this.f64939f;
        if (iArr4[i10 + 3] == 0) {
            return i10;
        }
        int i11 = this.f64941h + ((i10 >> 3) << 2);
        if (iArr4[i11 + 3] == 0) {
            return i11;
        }
        int i12 = this.f64942i;
        int i13 = this.f64943j;
        int i14 = i12 + ((i10 >> (i13 + 2)) << i13);
        for (int i15 = i14; i15 < (1 << i13) + i14; i15 += 4) {
            if (iArr4[i15 + 3] == 0) {
                return i15;
            }
        }
        int i16 = this.f64946m;
        this.f64946m = i16 + 4;
        return i16;
    }

    /* renamed from: e */
    public final int m6918e() {
        int i = this.f64940g;
        return (i << 3) - i;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0054 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0070 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b2  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m6917f(int[] r6, int r7, int r8) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1554y.C23416a.m6917f(int[], int, int):boolean");
    }

    /* renamed from: g */
    public String m6916g(String str, int[] iArr, int i) {
        int i2;
        if (this.f64948o) {
            int[] iArr2 = this.f64939f;
            this.f64939f = Arrays.copyOf(iArr2, iArr2.length);
            String[] strArr = this.f64945l;
            this.f64945l = (String[]) Arrays.copyOf(strArr, strArr.length);
            this.f64948o = false;
        }
        String str2 = str;
        if (this.f64937d) {
            str2 = C23355g.f64580b.m7244c(str);
        }
        if (i == 1) {
            int i3 = iArr[0] ^ this.f64936c;
            int i4 = i3 + (i3 >>> 16);
            int i5 = i4 ^ (i4 << 3);
            i2 = m6920c(i5 + (i5 >>> 12));
            int[] iArr3 = this.f64939f;
            iArr3[i2] = iArr[0];
            iArr3[i2 + 3] = 1;
        } else if (i == 2) {
            i2 = m6920c(m6915h(iArr[0], iArr[1]));
            int[] iArr4 = this.f64939f;
            iArr4[i2] = iArr[0];
            iArr4[i2 + 1] = iArr[1];
            iArr4[i2 + 3] = 2;
        } else if (i != 3) {
            int m6913j = m6913j(iArr, i);
            int m6920c = m6920c(m6913j);
            int[] iArr5 = this.f64939f;
            iArr5[m6920c] = m6913j;
            int i6 = this.f64947n;
            int i7 = i6 + i;
            if (i7 > iArr5.length) {
                int length = iArr5.length;
                int min = Math.min(4096, this.f64940g);
                this.f64939f = Arrays.copyOf(this.f64939f, Math.max(i7 - length, min) + this.f64939f.length);
            }
            System.arraycopy(iArr, 0, this.f64939f, i6, i);
            this.f64947n += i;
            int[] iArr6 = this.f64939f;
            iArr6[m6920c + 1] = i6;
            iArr6[m6920c + 3] = i;
            i2 = m6920c;
        } else {
            i2 = m6920c(m6914i(iArr[0], iArr[1], iArr[2]));
            int[] iArr7 = this.f64939f;
            iArr7[i2] = iArr[0];
            iArr7[i2 + 1] = iArr[1];
            iArr7[i2 + 2] = iArr[2];
            iArr7[i2 + 3] = 3;
        }
        this.f64945l[i2 >> 2] = str2;
        this.f64944k++;
        return str2;
    }

    /* renamed from: h */
    public int m6915h(int i, int i2) {
        int i3 = i + (i >>> 15);
        int i4 = this.f64936c ^ ((i2 * 33) + (i3 ^ (i3 >>> 9)));
        int i5 = i4 + (i4 >>> 16);
        int i6 = i5 ^ (i5 >>> 4);
        return i6 + (i6 << 3);
    }

    /* renamed from: i */
    public int m6914i(int i, int i2, int i3) {
        int i4 = i ^ this.f64936c;
        int i5 = (((i4 + (i4 >>> 9)) * 31) + i2) * 33;
        int i6 = (i5 + (i5 >>> 15)) ^ i3;
        int i7 = i6 + (i6 >>> 4);
        int i8 = i7 + (i7 >>> 15);
        return i8 ^ (i8 << 9);
    }

    /* renamed from: j */
    public int m6913j(int[] iArr, int i) {
        if (i >= 4) {
            int i2 = iArr[0] ^ this.f64936c;
            int i3 = i2 + (i2 >>> 9) + iArr[1];
            int i4 = ((i3 + (i3 >>> 15)) * 33) ^ iArr[2];
            int i5 = i4 + (i4 >>> 4);
            for (int i6 = 3; i6 < i; i6++) {
                int i7 = iArr[i6];
                i5 += i7 ^ (i7 >> 21);
            }
            int i8 = i5 * 65599;
            int i9 = i8 + (i8 >>> 19);
            return (i9 << 5) ^ i9;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: l */
    public String m6911l(int i) {
        String str;
        int i2 = this.f64936c ^ i;
        int i3 = i2 + (i2 >>> 16);
        int i4 = i3 ^ (i3 << 3);
        int m6922a = m6922a(i4 + (i4 >>> 12));
        int[] iArr = this.f64939f;
        int i5 = iArr[m6922a + 3];
        if (i5 == 1) {
            if (iArr[m6922a] == i) {
                return this.f64945l[m6922a >> 2];
            }
        } else if (i5 == 0) {
            return null;
        }
        int i6 = this.f64941h + ((m6922a >> 3) << 2);
        int i7 = iArr[i6 + 3];
        if (i7 == 1) {
            if (iArr[i6] == i) {
                return this.f64945l[i6 >> 2];
            }
        } else if (i7 == 0) {
            return null;
        }
        int i8 = this.f64942i;
        int i9 = this.f64943j;
        int i10 = i8 + ((m6922a >> (i9 + 2)) << i9);
        int i11 = i10;
        while (true) {
            if (i11 >= (1 << i9) + i10) {
                int m6918e = m6918e();
                while (true) {
                    str = null;
                    if (m6918e < this.f64946m) {
                        if (i == iArr[m6918e] && 1 == iArr[m6918e + 3]) {
                            str = this.f64945l[m6918e >> 2];
                            break;
                        }
                        m6918e += 4;
                    } else {
                        break;
                    }
                }
            } else {
                int i12 = iArr[i11 + 3];
                if (i == iArr[i11] && 1 == i12) {
                    str = this.f64945l[i11 >> 2];
                    break;
                } else if (i12 == 0) {
                    str = null;
                    break;
                } else {
                    i11 += 4;
                }
            }
        }
        return str;
    }

    /* renamed from: m */
    public String m6910m(int i, int i2) {
        String str;
        int m6922a = m6922a(m6915h(i, i2));
        int[] iArr = this.f64939f;
        int i3 = iArr[m6922a + 3];
        if (i3 == 2) {
            if (i == iArr[m6922a] && i2 == iArr[m6922a + 1]) {
                return this.f64945l[m6922a >> 2];
            }
        } else if (i3 == 0) {
            return null;
        }
        int i4 = this.f64941h + ((m6922a >> 3) << 2);
        int i5 = iArr[i4 + 3];
        if (i5 == 2) {
            if (i == iArr[i4] && i2 == iArr[i4 + 1]) {
                return this.f64945l[i4 >> 2];
            }
        } else if (i5 == 0) {
            return null;
        }
        int i6 = this.f64942i;
        int i7 = this.f64943j;
        int i8 = i6 + ((m6922a >> (i7 + 2)) << i7);
        int i9 = i8;
        while (true) {
            if (i9 >= (1 << i7) + i8) {
                int m6918e = m6918e();
                while (true) {
                    str = null;
                    if (m6918e < this.f64946m) {
                        if (i == iArr[m6918e] && i2 == iArr[m6918e + 1] && 2 == iArr[m6918e + 3]) {
                            str = this.f64945l[m6918e >> 2];
                            break;
                        }
                        m6918e += 4;
                    } else {
                        break;
                    }
                }
            } else {
                int i10 = iArr[i9 + 3];
                if (i == iArr[i9] && i2 == iArr[i9 + 1] && 2 == i10) {
                    str = this.f64945l[i9 >> 2];
                    break;
                } else if (i10 == 0) {
                    str = null;
                    break;
                } else {
                    i9 += 4;
                }
            }
        }
        return str;
    }

    /* renamed from: n */
    public String m6909n(int i, int i2, int i3) {
        String str;
        int m6922a = m6922a(m6914i(i, i2, i3));
        int[] iArr = this.f64939f;
        int i4 = iArr[m6922a + 3];
        if (i4 == 3) {
            if (i == iArr[m6922a] && iArr[m6922a + 1] == i2 && iArr[m6922a + 2] == i3) {
                return this.f64945l[m6922a >> 2];
            }
        } else if (i4 == 0) {
            return null;
        }
        int i5 = this.f64941h + ((m6922a >> 3) << 2);
        int i6 = iArr[i5 + 3];
        if (i6 == 3) {
            if (i == iArr[i5] && iArr[i5 + 1] == i2 && iArr[i5 + 2] == i3) {
                return this.f64945l[i5 >> 2];
            }
        } else if (i6 == 0) {
            return null;
        }
        int i7 = this.f64942i;
        int i8 = this.f64943j;
        int i9 = i7 + ((m6922a >> (i8 + 2)) << i8);
        int i10 = i9;
        while (true) {
            if (i10 >= (1 << i8) + i9) {
                int m6918e = m6918e();
                while (true) {
                    str = null;
                    if (m6918e < this.f64946m) {
                        if (i == iArr[m6918e] && i2 == iArr[m6918e + 1] && i3 == iArr[m6918e + 2] && 3 == iArr[m6918e + 3]) {
                            str = this.f64945l[m6918e >> 2];
                            break;
                        }
                        m6918e += 4;
                    } else {
                        break;
                    }
                }
            } else {
                int i11 = iArr[i10 + 3];
                if (i == iArr[i10] && i2 == iArr[i10 + 1] && i3 == iArr[i10 + 2] && 3 == i11) {
                    str = this.f64945l[i10 >> 2];
                    break;
                } else if (i11 == 0) {
                    str = null;
                    break;
                } else {
                    i10 += 4;
                }
            }
        }
        return str;
    }

    /* renamed from: o */
    public String m6908o(int[] iArr, int i) {
        String str;
        if (i < 4) {
            return i != 1 ? i != 2 ? i != 3 ? "" : m6909n(iArr[0], iArr[1], iArr[2]) : m6910m(iArr[0], iArr[1]) : m6911l(iArr[0]);
        }
        int m6913j = m6913j(iArr, i);
        int m6922a = m6922a(m6913j);
        int[] iArr2 = this.f64939f;
        int i2 = iArr2[m6922a + 3];
        if (m6913j == iArr2[m6922a] && i2 == i && m6917f(iArr, i, iArr2[m6922a + 1])) {
            return this.f64945l[m6922a >> 2];
        }
        if (i2 == 0) {
            return null;
        }
        int i3 = this.f64941h + ((m6922a >> 3) << 2);
        int i4 = iArr2[i3 + 3];
        if (m6913j == iArr2[i3] && i4 == i && m6917f(iArr, i, iArr2[i3 + 1])) {
            return this.f64945l[i3 >> 2];
        }
        int i5 = this.f64942i;
        int i6 = this.f64943j;
        int i7 = i5 + ((m6922a >> (i6 + 2)) << i6);
        int[] iArr3 = this.f64939f;
        int i8 = i7;
        while (true) {
            if (i8 >= (1 << i6) + i7) {
                int m6918e = m6918e();
                while (true) {
                    str = null;
                    if (m6918e < this.f64946m) {
                        if (m6913j == iArr3[m6918e] && i == iArr3[m6918e + 3] && m6917f(iArr, i, iArr3[m6918e + 1])) {
                            str = this.f64945l[m6918e >> 2];
                            break;
                        }
                        m6918e += 4;
                    } else {
                        break;
                    }
                }
            } else {
                int i9 = iArr3[i8 + 3];
                if (m6913j == iArr3[i8] && i == i9 && m6917f(iArr, i, iArr3[i8 + 1])) {
                    str = this.f64945l[i8 >> 2];
                    break;
                } else if (i9 == 0) {
                    str = null;
                    break;
                } else {
                    i8 += 4;
                }
            }
        }
        return str;
    }

    /* renamed from: p */
    public final void m6907p(boolean z) {
        this.f64944k = 0;
        this.f64946m = m6918e();
        this.f64947n = this.f64940g << 3;
        if (z) {
            Arrays.fill(this.f64939f, 0);
            Arrays.fill(this.f64945l, (Object) null);
        }
    }

    public String toString() {
        int i;
        int i2;
        int i3 = this.f64941h;
        int i4 = 3;
        int i5 = 0;
        while (true) {
            i = i5;
            if (i4 >= i3) {
                break;
            }
            int i6 = i;
            if (this.f64939f[i4] != 0) {
                i6 = i + 1;
            }
            i4 += 4;
            i5 = i6;
        }
        int i7 = this.f64941h + 3;
        int i8 = this.f64942i;
        int i9 = 0;
        while (true) {
            i2 = i9;
            if (i7 >= i8) {
                break;
            }
            int i10 = i2;
            if (this.f64939f[i7] != 0) {
                i10 = i2 + 1;
            }
            i7 += 4;
            i9 = i10;
        }
        int i11 = this.f64942i + 3;
        int i12 = this.f64940g;
        int i13 = 0;
        int i14 = i11;
        while (i14 < i12 + i11) {
            int i15 = i13;
            if (this.f64939f[i14] != 0) {
                i15 = i13 + 1;
            }
            i14 += 4;
            i13 = i15;
        }
        int m6918e = (this.f64946m - m6918e()) >> 2;
        int i16 = this.f64940g;
        int i17 = 3;
        int i18 = 0;
        while (true) {
            int i19 = i18;
            if (i17 < (i16 << 3)) {
                int i20 = i19;
                if (this.f64939f[i17] != 0) {
                    i20 = i19 + 1;
                }
                i17 += 4;
                i18 = i20;
            } else {
                return String.format("[%s: size=%d, hashSize=%d, %d/%d/%d/%d pri/sec/ter/spill (=%s), total:%d]", C23416a.class.getName(), Integer.valueOf(this.f64944k), Integer.valueOf(this.f64940g), Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i13), Integer.valueOf(m6918e), Integer.valueOf(i + i2 + i13 + m6918e), Integer.valueOf(i19));
            }
        }
    }
}
