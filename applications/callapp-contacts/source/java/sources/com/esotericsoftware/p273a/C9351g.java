package com.esotericsoftware.p273a;

import io.objectbox.model.PropertyFlags;
/* renamed from: com.esotericsoftware.a.g */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/g.class */
public final class C9351g extends AbstractC9350f {

    /* renamed from: c */
    static final byte[] f31995c;

    /* renamed from: A */
    private int f31996A;

    /* renamed from: B */
    private int f31997B;

    /* renamed from: C */
    private int[] f31998C;

    /* renamed from: D */
    private int f31999D;

    /* renamed from: E */
    private C9348d f32000E;

    /* renamed from: F */
    private int f32001F;

    /* renamed from: G */
    private int f32002G;

    /* renamed from: H */
    private C9346b f32003H;

    /* renamed from: I */
    private C9346b f32004I;

    /* renamed from: J */
    private C9346b f32005J;

    /* renamed from: K */
    private C9346b f32006K;

    /* renamed from: L */
    private C9347c f32007L;

    /* renamed from: M */
    private int f32008M;

    /* renamed from: N */
    private C9348d f32009N;

    /* renamed from: O */
    private boolean f32010O;

    /* renamed from: P */
    private boolean f32011P;

    /* renamed from: d */
    C9349e f32012d;

    /* renamed from: e */
    int f32013e;

    /* renamed from: f */
    int f32014f;

    /* renamed from: g */
    final C9348d f32015g;

    /* renamed from: h */
    C9359o[] f32016h;

    /* renamed from: i */
    int f32017i;

    /* renamed from: j */
    final C9359o f32018j;

    /* renamed from: k */
    final C9359o f32019k;

    /* renamed from: l */
    final C9359o f32020l;

    /* renamed from: m */
    final C9359o f32021m;

    /* renamed from: n */
    C9359o[] f32022n;

    /* renamed from: o */
    String f32023o;

    /* renamed from: p */
    int f32024p;

    /* renamed from: q */
    C9348d f32025q;

    /* renamed from: r */
    C9355k f32026r;

    /* renamed from: s */
    C9355k f32027s;

    /* renamed from: t */
    C9362r f32028t;

    /* renamed from: u */
    C9362r f32029u;

    /* renamed from: v */
    boolean f32030v;

    /* renamed from: w */
    private short f32031w;

    /* renamed from: x */
    private int f32032x;

    /* renamed from: y */
    private int f32033y;

    /* renamed from: z */
    private int f32034z;

    static {
        byte[] bArr = new byte[220];
        for (int i = 0; i < 220; i++) {
            bArr[i] = (byte) ("AAAAAAAAAAAAAAAABCLMMDDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAADDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANAAAAAAAAAAAAAAAAAAAAJJJJJJJJJJJJJJJJDOPAAAAAAGGGGGGGHIFBFAAFFAARQJJKKJJJJJJJJJJJJJJJJJJ".charAt(i) - 'A');
        }
        f31995c = bArr;
    }

    public C9351g(int i) {
        super(327680);
        this.f32014f = 1;
        this.f32015g = new C9348d();
        C9359o[] c9359oArr = new C9359o[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];
        this.f32016h = c9359oArr;
        this.f32017i = (int) (c9359oArr.length * 0.75d);
        this.f32018j = new C9359o();
        this.f32019k = new C9359o();
        this.f32020l = new C9359o();
        this.f32021m = new C9359o();
        this.f32010O = (i & 1) != 0;
        this.f32011P = (i & 2) != 0;
    }

    public C9351g(C9349e c9349e, int i) {
        this(i);
        int i2;
        boolean z;
        char[] cArr = new char[c9349e.f31991d];
        int length = c9349e.f31989b.length;
        C9359o[] c9359oArr = new C9359o[length];
        int i3 = 1;
        while (i3 < length) {
            int i4 = c9349e.f31989b[i3];
            byte b = c9349e.f31988a[i4 - 1];
            C9359o c9359o = new C9359o(i3);
            if (b == 1) {
                String str = c9349e.f31990c[i3];
                String str2 = str;
                if (str == null) {
                    int i5 = c9349e.f31989b[i3];
                    String[] strArr = c9349e.f31990c;
                    str2 = c9349e.m24640a(i5 + 2, c9349e.m24628b(i5), cArr);
                    strArr[i3] = str2;
                }
                c9359o.m24567a(b, str2, null, null);
            } else if (b == 15) {
                int i6 = c9349e.f31989b[c9349e.m24628b(i4 + 1)];
                int i7 = c9349e.f31989b[c9349e.m24628b(i6 + 2)];
                c9359o.m24567a(c9349e.m24641a(i4) + 20, c9349e.m24627b(i6, cArr), c9349e.m24638a(i7, cArr), c9349e.m24638a(i7 + 2, cArr));
            } else if (b == 18) {
                if (this.f32025q == null) {
                    int m24642a = c9349e.m24642a();
                    int m24628b = c9349e.m24628b(m24642a);
                    while (true) {
                        i2 = 0;
                        if (m24628b <= 0) {
                            z = false;
                        } else if ("BootstrapMethods".equals(c9349e.m24638a(m24642a + 2, cArr))) {
                            z = true;
                        } else {
                            m24642a += c9349e.m24625c(m24642a + 4) + 6;
                            m24628b--;
                        }
                    }
                    if (z) {
                        int m24628b2 = c9349e.m24628b(m24642a + 8);
                        int i8 = m24642a + 10;
                        int i9 = i8;
                        while (true) {
                            int i10 = i9;
                            if (i2 < m24628b2) {
                                int hashCode = c9349e.m24624c(c9349e.m24628b(i10), cArr).hashCode();
                                int i11 = i10;
                                for (int m24628b3 = c9349e.m24628b(i10 + 2); m24628b3 > 0; m24628b3--) {
                                    hashCode ^= c9349e.m24624c(c9349e.m24628b(i11 + 4), cArr).hashCode();
                                    i11 += 2;
                                }
                                i9 = i11 + 4;
                                C9359o c9359o2 = new C9359o(i2);
                                c9359o2.m24568a((i10 - m24642a) - 10, Integer.MAX_VALUE & hashCode);
                                int i12 = c9359o2.f32098h % length;
                                c9359o2.f32099i = c9359oArr[i12];
                                c9359oArr[i12] = c9359o2;
                                i2++;
                            } else {
                                int m24625c = c9349e.m24625c(m24642a + 4);
                                C9348d c9348d = new C9348d(m24625c + 62);
                                c9348d.m24647a(c9349e.f31988a, i8, m24625c - 2);
                                this.f32024p = m24628b2;
                                this.f32025q = c9348d;
                            }
                        }
                    }
                }
                int i13 = c9349e.f31989b[c9349e.m24628b(i4 + 2)];
                c9359o.m24564a(c9349e.m24638a(i13, cArr), c9349e.m24638a(i13 + 2, cArr), c9349e.m24628b(i4));
            } else if (b == 3) {
                c9359o.m24569a(c9349e.m24625c(i4));
            } else if (b != 4) {
                if (b == 5) {
                    c9359o.m24566a(c9349e.m24623d(i4));
                } else if (b != 6) {
                    switch (b) {
                        case 9:
                        case 10:
                        case 11:
                            int i14 = c9349e.f31989b[c9349e.m24628b(i4 + 2)];
                            c9359o.m24567a(b, c9349e.m24627b(i4, cArr), c9349e.m24638a(i14, cArr), c9349e.m24638a(i14 + 2, cArr));
                            continue;
                        case 12:
                            c9359o.m24567a(b, c9349e.m24638a(i4, cArr), c9349e.m24638a(i4 + 2, cArr), null);
                            continue;
                        default:
                            c9359o.m24567a(b, c9349e.m24638a(i4, cArr), null, null);
                            continue;
                    }
                } else {
                    c9359o.m24571a(Double.longBitsToDouble(c9349e.m24623d(i4)));
                }
                i3++;
            } else {
                c9359o.m24570a(Float.intBitsToFloat(c9349e.m24625c(i4)));
            }
            int i15 = c9359o.f32098h % length;
            c9359o.f32099i = c9359oArr[i15];
            c9359oArr[i15] = c9359o;
            i3++;
        }
        int i16 = c9349e.f31989b[1] - 1;
        this.f32015g.m24647a(c9349e.f31988a, i16, c9349e.f31992e - i16);
        this.f32016h = c9359oArr;
        this.f32017i = (int) (length * 0.75d);
        this.f32014f = length;
        this.f32012d = c9349e;
    }

    /* renamed from: a */
    private void m24617a(int i, int i2) {
        this.f32015g.m24651a(15, i).m24646b(i2);
    }

    /* renamed from: b */
    private int m24594b(String str, String str2, String str3, boolean z) {
        return m24601a(str, str2, str3, z).f32091a;
    }

    /* renamed from: b */
    private C9359o m24599b() {
        short s = (short) (this.f32031w + 1);
        this.f32031w = s;
        C9359o c9359o = new C9359o(s, this.f32018j);
        m24598b(c9359o);
        if (this.f32022n == null) {
            this.f32022n = new C9359o[16];
        }
        short s2 = this.f32031w;
        C9359o[] c9359oArr = this.f32022n;
        if (s2 == c9359oArr.length) {
            C9359o[] c9359oArr2 = new C9359o[c9359oArr.length * 2];
            System.arraycopy(c9359oArr, 0, c9359oArr2, 0, c9359oArr.length);
            this.f32022n = c9359oArr2;
        }
        this.f32022n[this.f32031w] = c9359o;
        return c9359o;
    }

    /* renamed from: c */
    private int m24591c(String str, String str2, String str3) {
        return m24595b(str, str2, str3).f32091a;
    }

    /* renamed from: d */
    private C9359o m24589d(String str, String str2) {
        this.f32019k.m24567a(12, str, str2, null);
        C9359o m24608a = m24608a(this.f32019k);
        C9359o c9359o = m24608a;
        if (m24608a == null) {
            m24616a(12, m24606a(str), m24606a(str2));
            int i = this.f32014f;
            this.f32014f = i + 1;
            c9359o = new C9359o(i, this.f32019k);
            m24598b(c9359o);
        }
        return c9359o;
    }

    /* renamed from: e */
    private C9359o m24588e(String str) {
        this.f32019k.m24567a(16, str, null, null);
        C9359o m24608a = m24608a(this.f32019k);
        C9359o c9359o = m24608a;
        if (m24608a == null) {
            this.f32015g.m24645b(16, m24606a(str));
            int i = this.f32014f;
            this.f32014f = i + 1;
            c9359o = new C9359o(i, this.f32019k);
            m24598b(c9359o);
        }
        return c9359o;
    }

    /* renamed from: f */
    private C9359o m24587f(String str) {
        this.f32019k.m24567a(8, str, null, null);
        C9359o m24608a = m24608a(this.f32019k);
        C9359o c9359o = m24608a;
        if (m24608a == null) {
            this.f32015g.m24645b(8, m24606a(str));
            int i = this.f32014f;
            this.f32014f = i + 1;
            c9359o = new C9359o(i, this.f32019k);
            m24598b(c9359o);
        }
        return c9359o;
    }

    /* renamed from: a */
    public final int m24606a(String str) {
        this.f32018j.m24567a(1, str, null, null);
        C9359o m24608a = m24608a(this.f32018j);
        C9359o c9359o = m24608a;
        if (m24608a == null) {
            this.f32015g.m24652a(1).m24649a(str);
            int i = this.f32014f;
            this.f32014f = i + 1;
            c9359o = new C9359o(i, this.f32018j);
            m24598b(c9359o);
        }
        return c9359o.f32091a;
    }

    /* renamed from: a */
    public final int m24605a(String str, int i) {
        this.f32018j.f32092b = 31;
        this.f32018j.f32093c = i;
        this.f32018j.f32095e = str;
        this.f32018j.f32098h = (str.hashCode() + 31 + i) & Integer.MAX_VALUE;
        C9359o m24608a = m24608a(this.f32018j);
        C9359o c9359o = m24608a;
        if (m24608a == null) {
            c9359o = m24599b();
        }
        return c9359o.f32091a;
    }

    @Override // com.esotericsoftware.p273a.AbstractC9350f
    /* renamed from: a */
    public final AbstractC9345a mo24614a(int i, C9365u c9365u, String str, boolean z) {
        C9348d c9348d = new C9348d();
        C9346b.m24665a(i, c9365u, c9348d);
        c9348d.m24646b(m24606a(str)).m24646b(0);
        C9346b c9346b = new C9346b(this, true, c9348d, c9348d, c9348d.f31987b - 2);
        if (z) {
            c9346b.f31975c = this.f32005J;
            this.f32005J = c9346b;
        } else {
            c9346b.f31975c = this.f32006K;
            this.f32006K = c9346b;
        }
        return c9346b;
    }

    @Override // com.esotericsoftware.p273a.AbstractC9350f
    /* renamed from: a */
    public final AbstractC9345a mo24600a(String str, boolean z) {
        C9348d c9348d = new C9348d();
        c9348d.m24646b(m24606a(str)).m24646b(0);
        C9346b c9346b = new C9346b(this, true, c9348d, c9348d, 2);
        if (z) {
            c9346b.f31975c = this.f32003H;
            this.f32003H = c9346b;
        } else {
            c9346b.f31975c = this.f32004I;
            this.f32004I = c9346b;
        }
        return c9346b;
    }

    @Override // com.esotericsoftware.p273a.AbstractC9350f
    /* renamed from: a */
    public final AbstractC9354j mo24613a(int i, String str, String str2, String str3, Object obj) {
        return new C9355k(this, i, str, str2, str3, obj);
    }

    /* renamed from: a */
    public final C9359o m24620a(double d) {
        this.f32018j.m24571a(d);
        C9359o m24608a = m24608a(this.f32018j);
        C9359o c9359o = m24608a;
        if (m24608a == null) {
            this.f32015g.m24652a(6).m24650a(this.f32018j.f32094d);
            c9359o = new C9359o(this.f32014f, this.f32018j);
            this.f32014f += 2;
            m24598b(c9359o);
        }
        return c9359o;
    }

    /* renamed from: a */
    public final C9359o m24619a(float f) {
        this.f32018j.m24570a(f);
        C9359o m24608a = m24608a(this.f32018j);
        C9359o c9359o = m24608a;
        if (m24608a == null) {
            this.f32015g.m24652a(4).m24644c(this.f32018j.f32093c);
            int i = this.f32014f;
            this.f32014f = i + 1;
            c9359o = new C9359o(i, this.f32018j);
            m24598b(c9359o);
        }
        return c9359o;
    }

    /* renamed from: a */
    public final C9359o m24618a(int i) {
        this.f32018j.m24569a(i);
        C9359o m24608a = m24608a(this.f32018j);
        C9359o c9359o = m24608a;
        if (m24608a == null) {
            this.f32015g.m24652a(3).m24644c(i);
            int i2 = this.f32014f;
            this.f32014f = i2 + 1;
            c9359o = new C9359o(i2, this.f32018j);
            m24598b(c9359o);
        }
        return c9359o;
    }

    /* renamed from: a */
    public final C9359o m24612a(int i, String str, String str2, String str3, boolean z) {
        this.f32021m.m24567a(i + 20, str, str2, str3);
        C9359o m24608a = m24608a(this.f32021m);
        C9359o c9359o = m24608a;
        if (m24608a == null) {
            m24617a(i, i <= 4 ? m24591c(str, str2, str3) : m24594b(str, str2, str3, z));
            int i2 = this.f32014f;
            this.f32014f = i2 + 1;
            c9359o = new C9359o(i2, this.f32021m);
            m24598b(c9359o);
        }
        return c9359o;
    }

    /* renamed from: a */
    public final C9359o m24610a(long j) {
        this.f32018j.m24566a(j);
        C9359o m24608a = m24608a(this.f32018j);
        C9359o c9359o = m24608a;
        if (m24608a == null) {
            this.f32015g.m24652a(5).m24650a(j);
            c9359o = new C9359o(this.f32014f, this.f32018j);
            this.f32014f += 2;
            m24598b(c9359o);
        }
        return c9359o;
    }

    /* renamed from: a */
    public final C9359o m24608a(C9359o c9359o) {
        C9359o c9359o2;
        C9359o c9359o3 = this.f32016h[c9359o.f32098h % this.f32016h.length];
        while (true) {
            c9359o2 = c9359o3;
            if (c9359o2 == null || (c9359o2.f32092b == c9359o.f32092b && c9359o.m24565a(c9359o2))) {
                break;
            }
            c9359o3 = c9359o2.f32099i;
        }
        return c9359o2;
    }

    /* renamed from: a */
    public final C9359o m24607a(Object obj) {
        if (obj instanceof Integer) {
            return m24618a(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return m24618a(((Byte) obj).intValue());
        }
        if (obj instanceof Character) {
            return m24618a((int) ((Character) obj).charValue());
        }
        if (obj instanceof Short) {
            return m24618a(((Short) obj).intValue());
        }
        if (obj instanceof Boolean) {
            return m24618a(((Boolean) obj).booleanValue() ? 1 : 0);
        }
        if (obj instanceof Float) {
            return m24619a(((Float) obj).floatValue());
        }
        if (obj instanceof Long) {
            return m24610a(((Long) obj).longValue());
        }
        if (obj instanceof Double) {
            return m24620a(((Double) obj).doubleValue());
        }
        if (obj instanceof String) {
            return m24587f((String) obj);
        }
        if (!(obj instanceof C9364t)) {
            if (!(obj instanceof C9357m)) {
                throw new IllegalArgumentException("value ".concat(String.valueOf(obj)));
            }
            C9357m c9357m = (C9357m) obj;
            return m24612a(c9357m.f32080a, c9357m.f32081b, c9357m.f32082c, c9357m.f32083d, c9357m.f32084e);
        }
        C9364t c9364t = (C9364t) obj;
        int i = c9364t.f32180j;
        if (i == 10) {
            return m24597b(c9364t.m24506b());
        }
        String m24503c = c9364t.m24503c();
        return i == 11 ? m24588e(m24503c) : m24597b(m24503c);
    }

    /* renamed from: a */
    public final C9359o m24601a(String str, String str2, String str3, boolean z) {
        int i = z ? 11 : 10;
        this.f32020l.m24567a(i, str, str2, str3);
        C9359o m24608a = m24608a(this.f32020l);
        C9359o c9359o = m24608a;
        if (m24608a == null) {
            m24616a(i, m24593c(str), m24596b(str2, str3));
            int i2 = this.f32014f;
            this.f32014f = i2 + 1;
            c9359o = new C9359o(i2, this.f32020l);
            m24598b(c9359o);
        }
        return c9359o;
    }

    @Override // com.esotericsoftware.p273a.AbstractC9350f
    /* renamed from: a */
    public final AbstractC9361q mo24611a(int i, String str, String str2, String str3, String[] strArr) {
        return new C9362r(this, i, str, str2, str3, strArr, this.f32010O, this.f32011P);
    }

    /* renamed from: a */
    public final void m24616a(int i, int i2, int i3) {
        this.f32015g.m24645b(i, i2).m24646b(i3);
    }

    @Override // com.esotericsoftware.p273a.AbstractC9350f
    /* renamed from: a */
    public final void mo24615a(int i, int i2, String str, String str2, String str3, String[] strArr) {
        this.f32013e = i;
        this.f32032x = i2;
        this.f32033y = m24593c(str);
        this.f32023o = str;
        if (str2 != null) {
            this.f32034z = m24606a(str2);
        }
        this.f31996A = str3 == null ? 0 : m24593c(str3);
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        int length = strArr.length;
        this.f31997B = length;
        this.f31998C = new int[length];
        for (int i3 = 0; i3 < this.f31997B; i3++) {
            this.f31998C[i3] = m24593c(strArr[i3]);
        }
    }

    @Override // com.esotericsoftware.p273a.AbstractC9350f
    /* renamed from: a */
    public final void mo24609a(C9347c c9347c) {
        c9347c.f31985c = this.f32007L;
        this.f32007L = c9347c;
    }

    @Override // com.esotericsoftware.p273a.AbstractC9350f
    /* renamed from: a */
    public final void mo24604a(String str, String str2) {
        if (str != null) {
            this.f31999D = m24606a(str);
        }
        if (str2 != null) {
            this.f32000E = new C9348d().m24648a(str2, 0, Integer.MAX_VALUE);
        }
    }

    @Override // com.esotericsoftware.p273a.AbstractC9350f
    /* renamed from: a */
    public final void mo24603a(String str, String str2, String str3) {
        this.f32001F = m24593c(str);
        if (str2 == null || str3 == null) {
            return;
        }
        this.f32002G = m24596b(str2, str3);
    }

    @Override // com.esotericsoftware.p273a.AbstractC9350f
    /* renamed from: a */
    public final void mo24602a(String str, String str2, String str3, int i) {
        if (this.f32009N == null) {
            this.f32009N = new C9348d();
        }
        C9359o m24597b = m24597b(str);
        if (m24597b.f32093c == 0) {
            this.f32008M++;
            this.f32009N.m24646b(m24597b.f32091a);
            this.f32009N.m24646b(str2 == null ? 0 : m24593c(str2));
            this.f32009N.m24646b(str3 == null ? 0 : m24606a(str3));
            this.f32009N.m24646b(i);
            m24597b.f32093c = this.f32008M;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x04b8, code lost:
        if ((r7.f32061d & 262144) != 0) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x006a, code lost:
        if ((r7.f32061d & 262144) != 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x02a4, code lost:
        if ((r0 & 262144) != 0) goto L69;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] m24621a() {
        /*
            Method dump skipped, instructions count: 2306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.p273a.C9351g.m24621a():byte[]");
    }

    /* renamed from: b */
    public final int m24596b(String str, String str2) {
        return m24589d(str, str2).f32091a;
    }

    /* renamed from: b */
    public final C9359o m24597b(String str) {
        this.f32019k.m24567a(7, str, null, null);
        C9359o m24608a = m24608a(this.f32019k);
        C9359o c9359o = m24608a;
        if (m24608a == null) {
            this.f32015g.m24645b(7, m24606a(str));
            int i = this.f32014f;
            this.f32014f = i + 1;
            c9359o = new C9359o(i, this.f32019k);
            m24598b(c9359o);
        }
        return c9359o;
    }

    /* renamed from: b */
    public final C9359o m24595b(String str, String str2, String str3) {
        this.f32020l.m24567a(9, str, str2, str3);
        C9359o m24608a = m24608a(this.f32020l);
        C9359o c9359o = m24608a;
        if (m24608a == null) {
            m24616a(9, m24593c(str), m24596b(str2, str3));
            int i = this.f32014f;
            this.f32014f = i + 1;
            c9359o = new C9359o(i, this.f32020l);
            m24598b(c9359o);
        }
        return c9359o;
    }

    /* renamed from: b */
    public final void m24598b(C9359o c9359o) {
        if (this.f32014f + this.f32031w > this.f32017i) {
            int length = this.f32016h.length;
            int i = (length * 2) + 1;
            C9359o[] c9359oArr = new C9359o[i];
            while (true) {
                length--;
                if (length < 0) {
                    break;
                }
                C9359o c9359o2 = this.f32016h[length];
                while (true) {
                    C9359o c9359o3 = c9359o2;
                    if (c9359o3 != null) {
                        int i2 = c9359o3.f32098h % i;
                        C9359o c9359o4 = c9359o3.f32099i;
                        c9359o3.f32099i = c9359oArr[i2];
                        c9359oArr[i2] = c9359o3;
                        c9359o2 = c9359o4;
                    }
                }
            }
            this.f32016h = c9359oArr;
            this.f32017i = (int) (i * 0.75d);
        }
        int i3 = c9359o.f32098h;
        C9359o[] c9359oArr2 = this.f32016h;
        int length2 = i3 % c9359oArr2.length;
        c9359o.f32099i = c9359oArr2[length2];
        this.f32016h[length2] = c9359o;
    }

    /* renamed from: c */
    public final int m24593c(String str) {
        return m24597b(str).f32091a;
    }

    /* renamed from: c */
    public String m24592c(String str, String str2) {
        Class<? super Object> superclass;
        ClassLoader classLoader = getClass().getClassLoader();
        try {
            Class<?> cls = Class.forName(str.replace('/', '.'), false, classLoader);
            Class<?> cls2 = Class.forName(str2.replace('/', '.'), false, classLoader);
            if (cls.isAssignableFrom(cls2)) {
                return str;
            }
            if (cls2.isAssignableFrom(cls)) {
                return str2;
            }
            if (cls.isInterface()) {
                return "java/lang/Object";
            }
            Class<?> cls3 = cls;
            if (cls2.isInterface()) {
                return "java/lang/Object";
            }
            do {
                superclass = cls3.getSuperclass();
                cls3 = superclass;
            } while (!superclass.isAssignableFrom(cls2));
            return superclass.getName().replace('.', '/');
        } catch (Exception e) {
            throw new RuntimeException(e.toString());
        }
    }

    /* renamed from: d */
    public final int m24590d(String str) {
        this.f32018j.m24567a(30, str, null, null);
        C9359o m24608a = m24608a(this.f32018j);
        C9359o c9359o = m24608a;
        if (m24608a == null) {
            c9359o = m24599b();
        }
        return c9359o.f32091a;
    }
}
