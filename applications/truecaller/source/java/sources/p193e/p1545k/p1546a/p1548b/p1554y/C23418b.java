package p193e.p1545k.p1546a.p1548b.p1554y;

import java.util.Arrays;
import java.util.BitSet;
import java.util.concurrent.atomic.AtomicReference;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.C23369e;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23355g;
/* renamed from: e.k.a.b.y.b */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/y/b.class */
public final class C23418b {

    /* renamed from: a */
    public final C23418b f64956a;

    /* renamed from: b */
    public final AtomicReference<C23420b> f64957b;

    /* renamed from: c */
    public final int f64958c;

    /* renamed from: d */
    public final int f64959d;

    /* renamed from: e */
    public boolean f64960e;

    /* renamed from: f */
    public String[] f64961f;

    /* renamed from: g */
    public C23419a[] f64962g;

    /* renamed from: h */
    public int f64963h;

    /* renamed from: i */
    public int f64964i;

    /* renamed from: j */
    public int f64965j;

    /* renamed from: k */
    public int f64966k;

    /* renamed from: l */
    public boolean f64967l;

    /* renamed from: m */
    public BitSet f64968m;

    /* renamed from: e.k.a.b.y.b$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/b/y/b$a.class */
    public static final class C23419a {

        /* renamed from: a */
        public final String f64969a;

        /* renamed from: b */
        public final C23419a f64970b;

        /* renamed from: c */
        public final int f64971c;

        public C23419a(String str, C23419a c23419a) {
            this.f64969a = str;
            this.f64970b = c23419a;
            this.f64971c = c23419a != null ? 1 + c23419a.f64971c : 1;
        }

        /* renamed from: a */
        public String m6900a(char[] cArr, int i, int i2) {
            if (this.f64969a.length() != i2) {
                return null;
            }
            int i3 = 0;
            while (this.f64969a.charAt(i3) == cArr[i + i3]) {
                int i4 = i3 + 1;
                i3 = i4;
                if (i4 >= i2) {
                    return this.f64969a;
                }
            }
            return null;
        }
    }

    /* renamed from: e.k.a.b.y.b$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/b/y/b$b.class */
    public static final class C23420b {

        /* renamed from: a */
        public final int f64972a;

        /* renamed from: b */
        public final int f64973b;

        /* renamed from: c */
        public final String[] f64974c;

        /* renamed from: d */
        public final C23419a[] f64975d;

        public C23420b(int i, int i2, String[] strArr, C23419a[] c23419aArr) {
            this.f64972a = i;
            this.f64973b = i2;
            this.f64974c = strArr;
            this.f64975d = c23419aArr;
        }

        public C23420b(C23418b c23418b) {
            this.f64972a = c23418b.f64963h;
            this.f64973b = c23418b.f64966k;
            this.f64974c = c23418b.f64961f;
            this.f64975d = c23418b.f64962g;
        }
    }

    public C23418b(int i) {
        this.f64956a = null;
        this.f64958c = i;
        this.f64960e = true;
        this.f64959d = -1;
        this.f64967l = false;
        this.f64966k = 0;
        this.f64957b = new AtomicReference<>(new C23420b(0, 0, new String[64], new C23419a[32]));
    }

    public C23418b(C23418b c23418b, int i, int i2, C23420b c23420b) {
        this.f64956a = c23418b;
        this.f64958c = i2;
        this.f64957b = null;
        this.f64959d = i;
        this.f64960e = C23369e.EnumC23370a.CANONICALIZE_FIELD_NAMES.m7211d(i);
        String[] strArr = c23420b.f64974c;
        this.f64961f = strArr;
        this.f64962g = c23420b.f64975d;
        this.f64963h = c23420b.f64972a;
        this.f64966k = c23420b.f64973b;
        int length = strArr.length;
        this.f64964i = length - (length >> 2);
        this.f64965j = length - 1;
        this.f64967l = true;
    }

    /* renamed from: c */
    public static C23418b m6903c() {
        long currentTimeMillis = System.currentTimeMillis();
        return new C23418b((((int) currentTimeMillis) + ((int) (currentTimeMillis >>> 32))) | 1);
    }

    /* renamed from: a */
    public int m6905a(int i) {
        int i2 = i + (i >>> 15);
        int i3 = i2 ^ (i2 << 7);
        return (i3 + (i3 >>> 3)) & this.f64965j;
    }

    /* renamed from: b */
    public int m6904b(String str) {
        int length = str.length();
        int i = this.f64958c;
        for (int i2 = 0; i2 < length; i2++) {
            i = (i * 33) + str.charAt(i2);
        }
        int i3 = i;
        if (i == 0) {
            i3 = 1;
        }
        return i3;
    }

    /* renamed from: d */
    public String m6902d(char[] cArr, int i, int i2, int i3) {
        int i4;
        int i5;
        String str;
        if (i2 < 1) {
            return "";
        }
        if (!this.f64960e) {
            return new String(cArr, i, i2);
        }
        int m6905a = m6905a(i3);
        String str2 = this.f64961f[m6905a];
        int i6 = 0;
        if (str2 != null) {
            if (str2.length() == i2) {
                int i7 = 0;
                while (str2.charAt(i7) == cArr[i + i7]) {
                    int i8 = i7 + 1;
                    i7 = i8;
                    if (i8 == i2) {
                        return str2;
                    }
                }
            }
            C23419a c23419a = this.f64962g[m6905a >> 1];
            if (c23419a != null) {
                String m6900a = c23419a.m6900a(cArr, i, i2);
                if (m6900a != null) {
                    return m6900a;
                }
                C23419a c23419a2 = c23419a.f64970b;
                while (true) {
                    C23419a c23419a3 = c23419a2;
                    if (c23419a3 == null) {
                        str = null;
                        break;
                    }
                    String m6900a2 = c23419a3.m6900a(cArr, i, i2);
                    if (m6900a2 != null) {
                        str = m6900a2;
                        break;
                    }
                    c23419a2 = c23419a3.f64970b;
                }
                if (str != null) {
                    return str;
                }
            }
        }
        if (this.f64967l) {
            String[] strArr = this.f64961f;
            this.f64961f = (String[]) Arrays.copyOf(strArr, strArr.length);
            C23419a[] c23419aArr = this.f64962g;
            this.f64962g = (C23419a[]) Arrays.copyOf(c23419aArr, c23419aArr.length);
            this.f64967l = false;
            i4 = m6905a;
        } else {
            i4 = m6905a;
            if (this.f64963h >= this.f64964i) {
                String[] strArr2 = this.f64961f;
                int length = strArr2.length;
                int i9 = length + length;
                if (i9 > 65536) {
                    this.f64963h = 0;
                    this.f64960e = false;
                    this.f64961f = new String[64];
                    this.f64962g = new C23419a[32];
                    this.f64965j = 63;
                    this.f64967l = false;
                } else {
                    C23419a[] c23419aArr2 = this.f64962g;
                    this.f64961f = new String[i9];
                    this.f64962g = new C23419a[i9 >> 1];
                    this.f64965j = i9 - 1;
                    this.f64964i = i9 - (i9 >> 2);
                    int i10 = 0;
                    int i11 = 0;
                    while (true) {
                        i5 = i11;
                        if (i6 >= length) {
                            break;
                        }
                        String str3 = strArr2[i6];
                        int i12 = i10;
                        int i13 = i5;
                        if (str3 != null) {
                            i12 = i10 + 1;
                            int m6905a2 = m6905a(m6904b(str3));
                            String[] strArr3 = this.f64961f;
                            if (strArr3[m6905a2] == null) {
                                strArr3[m6905a2] = str3;
                                i13 = i5;
                            } else {
                                int i14 = m6905a2 >> 1;
                                C23419a[] c23419aArr3 = this.f64962g;
                                C23419a c23419a4 = new C23419a(str3, c23419aArr3[i14]);
                                c23419aArr3[i14] = c23419a4;
                                i13 = Math.max(i5, c23419a4.f64971c);
                            }
                        }
                        i6++;
                        i10 = i12;
                        i11 = i13;
                    }
                    int i15 = i5;
                    int i16 = i10;
                    int i17 = 0;
                    while (i17 < (length >> 1)) {
                        int i18 = i15;
                        int i19 = i16;
                        for (C23419a c23419a5 = c23419aArr2[i17]; c23419a5 != null; c23419a5 = c23419a5.f64970b) {
                            i19++;
                            String str4 = c23419a5.f64969a;
                            int m6905a3 = m6905a(m6904b(str4));
                            String[] strArr4 = this.f64961f;
                            if (strArr4[m6905a3] == null) {
                                strArr4[m6905a3] = str4;
                            } else {
                                int i20 = m6905a3 >> 1;
                                C23419a[] c23419aArr4 = this.f64962g;
                                C23419a c23419a6 = new C23419a(str4, c23419aArr4[i20]);
                                c23419aArr4[i20] = c23419a6;
                                i18 = Math.max(i18, c23419a6.f64971c);
                            }
                        }
                        i17++;
                        i16 = i19;
                        i15 = i18;
                    }
                    this.f64966k = i15;
                    this.f64968m = null;
                    if (i16 != this.f64963h) {
                        throw new IllegalStateException(String.format("Internal error on SymbolTable.rehash(): had %d entries; now have %d", Integer.valueOf(this.f64963h), Integer.valueOf(i16)));
                    }
                }
                int i21 = this.f64958c;
                for (int i22 = i; i22 < i2 + i; i22++) {
                    i21 = (i21 * 33) + cArr[i22];
                }
                int i23 = i21;
                if (i21 == 0) {
                    i23 = 1;
                }
                i4 = m6905a(i23);
            }
        }
        String str5 = new String(cArr, i, i2);
        String str6 = str5;
        if (C23369e.EnumC23370a.INTERN_FIELD_NAMES.m7211d(this.f64959d)) {
            str6 = C23355g.f64580b.m7244c(str5);
        }
        this.f64963h++;
        String[] strArr5 = this.f64961f;
        if (strArr5[i4] == null) {
            strArr5[i4] = str6;
        } else {
            int i24 = i4 >> 1;
            C23419a[] c23419aArr5 = this.f64962g;
            C23419a c23419a7 = new C23419a(str6, c23419aArr5[i24]);
            int i25 = c23419a7.f64971c;
            if (i25 > 100) {
                BitSet bitSet = this.f64968m;
                if (bitSet == null) {
                    BitSet bitSet2 = new BitSet();
                    this.f64968m = bitSet2;
                    bitSet2.set(i24);
                } else if (!bitSet.get(i24)) {
                    this.f64968m.set(i24);
                } else if (C23369e.EnumC23370a.FAIL_ON_SYMBOL_HASH_OVERFLOW.m7211d(this.f64959d)) {
                    StringBuilder m8728C = C22128a.m8728C("Longest collision chain in symbol table (of size ");
                    m8728C.append(this.f64963h);
                    m8728C.append(") now exceeds maximum, ");
                    m8728C.append(100);
                    m8728C.append(" -- suspect a DoS attack based on hash collisions");
                    throw new IllegalStateException(m8728C.toString());
                } else {
                    this.f64960e = false;
                }
                this.f64961f[i4] = c23419a7.f64969a;
                this.f64962g[i24] = null;
                this.f64963h -= c23419a7.f64971c;
                this.f64966k = -1;
            } else {
                c23419aArr5[i24] = c23419a7;
                this.f64966k = Math.max(i25, this.f64966k);
            }
        }
        return str6;
    }

    /* renamed from: e */
    public C23418b m6901e(int i) {
        return new C23418b(this, i, this.f64958c, this.f64957b.get());
    }
}
