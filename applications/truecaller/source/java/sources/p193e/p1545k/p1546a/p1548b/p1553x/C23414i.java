package p193e.p1545k.p1546a.p1548b.p1553x;

import com.razorpay.AnalyticsConstants;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23376j;
import p193e.p1545k.p1546a.p1548b.AbstractC23382n;
import p193e.p1545k.p1546a.p1548b.C23344a;
import p193e.p1545k.p1546a.p1548b.C23374h;
import p193e.p1545k.p1546a.p1548b.C23375i;
import p193e.p1545k.p1546a.p1548b.EnumC23381m;
import p193e.p1545k.p1546a.p1548b.EnumC23385q;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23348c;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23357i;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23362n;
import p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23390b;
import p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23391c;
import p193e.p1545k.p1546a.p1548b.p1552w.C23394a;
import p193e.p1545k.p1546a.p1548b.p1552w.C23396b;
import p193e.p1545k.p1546a.p1548b.p1554y.C23416a;
/* renamed from: e.k.a.b.x.i */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/x/i.class */
public class C23414i extends AbstractC23390b {

    /* renamed from: h0 */
    public static final int f64905h0 = AbstractC23376j.EnumC23377a.ALLOW_TRAILING_COMMA.f64679b;

    /* renamed from: i0 */
    public static final int f64906i0 = AbstractC23376j.EnumC23377a.ALLOW_NUMERIC_LEADING_ZEROS.f64679b;

    /* renamed from: j0 */
    public static final int f64907j0 = AbstractC23376j.EnumC23377a.ALLOW_NON_NUMERIC_NUMBERS.f64679b;

    /* renamed from: k0 */
    public static final int f64908k0 = AbstractC23376j.EnumC23377a.ALLOW_MISSING_VALUES.f64679b;

    /* renamed from: l0 */
    public static final int f64909l0 = AbstractC23376j.EnumC23377a.ALLOW_SINGLE_QUOTES.f64679b;

    /* renamed from: m0 */
    public static final int f64910m0 = AbstractC23376j.EnumC23377a.ALLOW_UNQUOTED_FIELD_NAMES.f64679b;

    /* renamed from: n0 */
    public static final int f64911n0 = AbstractC23376j.EnumC23377a.ALLOW_COMMENTS.f64679b;

    /* renamed from: o0 */
    public static final int f64912o0 = AbstractC23376j.EnumC23377a.ALLOW_YAML_COMMENTS.f64679b;

    /* renamed from: p0 */
    public static final int[] f64913p0 = C23394a.f64770d;

    /* renamed from: q0 */
    public static final int[] f64914q0 = C23394a.f64769c;

    /* renamed from: Q */
    public AbstractC23382n f64915Q;

    /* renamed from: R */
    public final C23416a f64916R;

    /* renamed from: S */
    public int[] f64917S = new int[16];

    /* renamed from: T */
    public boolean f64918T;

    /* renamed from: U */
    public int f64919U;

    /* renamed from: V */
    public int f64920V;

    /* renamed from: W */
    public int f64921W;

    /* renamed from: X */
    public int f64922X;

    /* renamed from: Y */
    public InputStream f64923Y;

    /* renamed from: Z */
    public byte[] f64924Z;

    /* renamed from: g0 */
    public boolean f64925g0;

    public C23414i(C23396b c23396b, int i, InputStream inputStream, AbstractC23382n abstractC23382n, C23416a c23416a, byte[] bArr, int i2, int i3, int i4, boolean z) {
        super(c23396b, i);
        this.f64923Y = inputStream;
        this.f64915Q = abstractC23382n;
        this.f64916R = c23416a;
        this.f64924Z = bArr;
        this.f64744o = i2;
        this.f64745p = i3;
        this.f64748s = i2 - i4;
        this.f64746q = (-i2) + i4;
        this.f64925g0 = z;
    }

    /* renamed from: F3 */
    public static final int m7000F3(int i, int i2) {
        if (i2 != 4) {
            i |= (-1) << (i2 << 3);
        }
        return i;
    }

    /* renamed from: A3 */
    public final void m7006A3(String str, int i) throws IOException {
        int length = str.length();
        int i2 = i;
        if (this.f64744o + length >= this.f64745p) {
            m7005B3(str, i);
            return;
        }
        while (this.f64924Z[this.f64744o] == str.charAt(i2)) {
            int i3 = this.f64744o + 1;
            this.f64744o = i3;
            int i4 = i2 + 1;
            i2 = i4;
            if (i4 >= length) {
                int i5 = this.f64924Z[i3] & 255;
                if (i5 < 48 || i5 == 93 || i5 == 125) {
                    return;
                }
                m6966i3(str, i4, i5);
                return;
            }
        }
        m6986R3(str.substring(0, i2));
        throw null;
    }

    /* renamed from: B3 */
    public final void m7005B3(String str, int i) throws IOException {
        int i2;
        int i3;
        int i4;
        int length = str.length();
        do {
            if ((this.f64744o >= this.f64745p && !m6939w3()) || this.f64924Z[this.f64744o] != str.charAt(i)) {
                m6986R3(str.substring(0, i));
                throw null;
            }
            i2 = this.f64744o + 1;
            this.f64744o = i2;
            i3 = i + 1;
            i = i3;
        } while (i3 < length);
        if ((i2 < this.f64745p || m6939w3()) && (i4 = this.f64924Z[this.f64744o] & 255) >= 48 && i4 != 93 && i4 != 125) {
            m6966i3(str, i3, i4);
        }
    }

    /* renamed from: C3 */
    public final void m7004C3() throws IOException {
        int i;
        int i2 = this.f64744o;
        if (i2 + 3 < this.f64745p) {
            byte[] bArr = this.f64924Z;
            int i3 = i2 + 1;
            if (bArr[i2] == 114) {
                int i4 = i3 + 1;
                if (bArr[i3] == 117) {
                    int i5 = i4 + 1;
                    if (bArr[i4] == 101 && ((i = bArr[i5] & 255) < 48 || i == 93 || i == 125)) {
                        this.f64744o = i5;
                        return;
                    }
                }
            }
        }
        m7005B3("true", 1);
    }

    /* renamed from: D3 */
    public final EnumC23381m m7003D3() {
        this.f64731A = false;
        EnumC23381m enumC23381m = this.f64753x;
        this.f64753x = null;
        if (enumC23381m == EnumC23381m.START_ARRAY) {
            this.f64752w = this.f64752w.m7076j(this.f64750u, this.f64751v);
        } else if (enumC23381m == EnumC23381m.START_OBJECT) {
            this.f64752w = this.f64752w.m7075k(this.f64750u, this.f64751v);
        }
        this.f64765c = enumC23381m;
        return enumC23381m;
    }

    /* renamed from: E3 */
    public final EnumC23381m m7002E3(int i) throws IOException {
        if (i == 34) {
            this.f64918T = true;
            EnumC23381m enumC23381m = EnumC23381m.VALUE_STRING;
            this.f64765c = enumC23381m;
            return enumC23381m;
        } else if (i == 45) {
            EnumC23381m m6995J3 = m6995J3();
            this.f64765c = m6995J3;
            return m6995J3;
        } else if (i == 46) {
            EnumC23381m m6998H3 = m6998H3();
            this.f64765c = m6998H3;
            return m6998H3;
        } else if (i == 91) {
            this.f64752w = this.f64752w.m7076j(this.f64750u, this.f64751v);
            EnumC23381m enumC23381m2 = EnumC23381m.START_ARRAY;
            this.f64765c = enumC23381m2;
            return enumC23381m2;
        } else if (i == 102) {
            m6937y3();
            EnumC23381m enumC23381m3 = EnumC23381m.VALUE_FALSE;
            this.f64765c = enumC23381m3;
            return enumC23381m3;
        } else if (i == 110) {
            m6935z3();
            EnumC23381m enumC23381m4 = EnumC23381m.VALUE_NULL;
            this.f64765c = enumC23381m4;
            return enumC23381m4;
        } else if (i == 116) {
            m7004C3();
            EnumC23381m enumC23381m5 = EnumC23381m.VALUE_TRUE;
            this.f64765c = enumC23381m5;
            return enumC23381m5;
        } else if (i == 123) {
            this.f64752w = this.f64752w.m7075k(this.f64750u, this.f64751v);
            EnumC23381m enumC23381m6 = EnumC23381m.START_OBJECT;
            this.f64765c = enumC23381m6;
            return enumC23381m6;
        } else {
            switch (i) {
                case 48:
                case 49:
                case 50:
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                    EnumC23381m m6993L3 = m6993L3(i);
                    this.f64765c = m6993L3;
                    return m6993L3;
                default:
                    EnumC23381m m6940v3 = m6940v3(i);
                    this.f64765c = m6940v3;
                    return m6940v3;
            }
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23391c, p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: F1 */
    public String mo7001F1() throws IOException {
        EnumC23381m enumC23381m = this.f64765c;
        if (enumC23381m != EnumC23381m.VALUE_STRING) {
            return enumC23381m == EnumC23381m.FIELD_NAME ? mo5818Q() : super.mo6997I1(null);
        } else if (!this.f64918T) {
            return this.f64754y.m7232h();
        } else {
            this.f64918T = false;
            return m6948r3();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00e0, code lost:
        if (r11 == 69) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0149, code lost:
        if (r0 == 43) goto L43;
     */
    /* renamed from: G3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p193e.p1545k.p1546a.p1548b.EnumC23381m m6999G3(char[] r5, int r6, int r7, boolean r8, int r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 646
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1553x.C23414i.m6999G3(char[], int, int, boolean, int):e.k.a.b.m");
    }

    /* renamed from: H3 */
    public final EnumC23381m m6998H3() throws IOException {
        return !m7203S1(EnumC23410e.ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS.f64866c) ? m6940v3(46) : m6999G3(this.f64754y.m7231i(), 0, 46, false, 0);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: I */
    public byte[] mo5826I(C23344a c23344a) throws IOException {
        EnumC23381m enumC23381m = this.f64765c;
        if (enumC23381m != EnumC23381m.VALUE_STRING && (enumC23381m != EnumC23381m.VALUE_EMBEDDED_OBJECT || this.f64733C == null)) {
            StringBuilder m8728C = C22128a.m8728C("Current token (");
            m8728C.append(this.f64765c);
            m8728C.append(") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary");
            throw new C23375i(this, m8728C.toString());
        }
        if (this.f64918T) {
            try {
                this.f64733C = m6960l3(c23344a);
                this.f64918T = false;
            } catch (IllegalArgumentException e) {
                throw new C23375i(this, "Failed to decode VALUE_STRING as base64 (" + c23344a + "): " + e.getMessage());
            }
        } else if (this.f64733C == null) {
            C23348c m7185T2 = m7185T2();
            m7138x2(mo5817U0(), m7185T2, c23344a);
            this.f64733C = m7185T2.m7247q();
        }
        return this.f64733C;
    }

    @Override // p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23391c, p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: I1 */
    public String mo6997I1(String str) throws IOException {
        EnumC23381m enumC23381m = this.f64765c;
        if (enumC23381m != EnumC23381m.VALUE_STRING) {
            return enumC23381m == EnumC23381m.FIELD_NAME ? mo5818Q() : super.mo6997I1(str);
        } else if (!this.f64918T) {
            return this.f64754y.m7232h();
        } else {
            this.f64918T = false;
            return m6948r3();
        }
    }

    /* renamed from: I3 */
    public final String m6996I3(int i) throws IOException {
        String str;
        int[] iArr;
        char c;
        int i2;
        int[] iArr2;
        int i3;
        int i4 = i;
        String str2 = "";
        int i5 = 0;
        if (i4 == 34) {
            int i6 = this.f64744o;
            int i7 = this.f64745p;
            if (i6 + 13 > i7) {
                if (i6 >= i7 && !m6939w3()) {
                    m7160F2(": was expecting closing '\"' for name", EnumC23381m.FIELD_NAME);
                    throw null;
                }
                byte[] bArr = this.f64924Z;
                int i8 = this.f64744o;
                this.f64744o = i8 + 1;
                int i9 = bArr[i8] & 255;
                if (i9 != 34) {
                    str2 = m6949q4(this.f64917S, 0, 0, i9, 0);
                }
                return str2;
            }
            byte[] bArr2 = this.f64924Z;
            int[] iArr3 = f64914q0;
            int i10 = i6 + 1;
            this.f64744o = i10;
            int i11 = bArr2[i6] & 255;
            if (iArr3[i11] != 0) {
                return i11 == 34 ? "" : m6947r4(0, i11, 0);
            }
            int i12 = i10 + 1;
            this.f64744o = i12;
            int i13 = bArr2[i10] & 255;
            if (iArr3[i13] != 0) {
                return i13 == 34 ? m6959l4(i11, 1) : m6947r4(i11, i13, 1);
            }
            int i14 = (i11 << 8) | i13;
            int i15 = i12 + 1;
            this.f64744o = i15;
            int i16 = bArr2[i12] & 255;
            if (iArr3[i16] != 0) {
                return i16 == 34 ? m6959l4(i14, 2) : m6947r4(i14, i16, 2);
            }
            int i17 = (i14 << 8) | i16;
            int i18 = i15 + 1;
            this.f64744o = i18;
            int i19 = bArr2[i15] & 255;
            if (iArr3[i19] != 0) {
                return i19 == 34 ? m6959l4(i17, 3) : m6947r4(i17, i19, 3);
            }
            int i20 = i19 | (i17 << 8);
            int i21 = i18 + 1;
            this.f64744o = i21;
            int i22 = bArr2[i18] & 255;
            if (iArr3[i22] != 0) {
                return i22 == 34 ? m6959l4(i20, 4) : m6947r4(i20, i22, 4);
            }
            this.f64919U = i20;
            int i23 = i21 + 1;
            this.f64744o = i23;
            int i24 = bArr2[i21] & 255;
            if (iArr3[i24] == 0) {
                int i25 = i24 | (i22 << 8);
                int i26 = i23 + 1;
                this.f64744o = i26;
                int i27 = bArr2[i23] & 255;
                if (iArr3[i27] == 0) {
                    int i28 = (i25 << 8) | i27;
                    int i29 = i26 + 1;
                    this.f64744o = i29;
                    int i30 = bArr2[i26] & 255;
                    if (iArr3[i30] == 0) {
                        int i31 = i30 | (i28 << 8);
                        int i32 = i29 + 1;
                        this.f64744o = i32;
                        int i33 = bArr2[i29] & 255;
                        if (iArr3[i33] == 0) {
                            int i34 = i32 + 1;
                            this.f64744o = i34;
                            int i35 = bArr2[i32] & 255;
                            if (iArr3[i35] == 0) {
                                int i36 = (i33 << 8) | i35;
                                int i37 = i34 + 1;
                                this.f64744o = i37;
                                int i38 = bArr2[i34] & 255;
                                if (iArr3[i38] == 0) {
                                    int i39 = (i36 << 8) | i38;
                                    int i40 = i37 + 1;
                                    this.f64744o = i40;
                                    int i41 = bArr2[i37] & 255;
                                    if (iArr3[i41] == 0) {
                                        int i42 = (i39 << 8) | i41;
                                        this.f64744o = i40 + 1;
                                        int i43 = bArr2[i40] & 255;
                                        if (iArr3[i43] == 0) {
                                            int[] iArr4 = this.f64917S;
                                            iArr4[0] = i20;
                                            iArr4[1] = i31;
                                            iArr4[2] = i42;
                                            int i44 = 3;
                                            while (true) {
                                                int i45 = this.f64744o;
                                                if (i45 + 4 > this.f64745p) {
                                                    str = m6949q4(this.f64917S, i44, 0, i43, 0);
                                                    break;
                                                }
                                                int i46 = i45 + 1;
                                                this.f64744o = i46;
                                                int i47 = bArr2[i45] & 255;
                                                if (iArr3[i47] != 0) {
                                                    str = i47 == 34 ? m6953o4(this.f64917S, i44, i43, 1) : m6949q4(this.f64917S, i44, i43, i47, 1);
                                                } else {
                                                    int i48 = i47 | (i43 << 8);
                                                    int i49 = i46 + 1;
                                                    this.f64744o = i49;
                                                    int i50 = bArr2[i46] & 255;
                                                    if (iArr3[i50] != 0) {
                                                        str = i50 == 34 ? m6953o4(this.f64917S, i44, i48, 2) : m6949q4(this.f64917S, i44, i48, i50, 2);
                                                    } else {
                                                        int i51 = (i48 << 8) | i50;
                                                        int i52 = i49 + 1;
                                                        this.f64744o = i52;
                                                        int i53 = bArr2[i49] & 255;
                                                        if (iArr3[i53] != 0) {
                                                            str = i53 == 34 ? m6953o4(this.f64917S, i44, i51, 3) : m6949q4(this.f64917S, i44, i51, i53, 3);
                                                        } else {
                                                            int i54 = (i51 << 8) | i53;
                                                            this.f64744o = i52 + 1;
                                                            i43 = bArr2[i52] & 255;
                                                            if (iArr3[i43] != 0) {
                                                                str = i43 == 34 ? m6953o4(this.f64917S, i44, i54, 4) : m6949q4(this.f64917S, i44, i54, i43, 4);
                                                            } else {
                                                                int[] iArr5 = this.f64917S;
                                                                if (i44 >= iArr5.length) {
                                                                    this.f64917S = AbstractC23390b.m7175e3(iArr5, i44);
                                                                }
                                                                this.f64917S[i44] = i54;
                                                                i44++;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        } else {
                                            str = i43 == 34 ? m6955n4(i20, i31, i42, 4) : m6942t4(i20, i31, i42, i43, 4);
                                        }
                                    } else {
                                        str = i41 == 34 ? m6955n4(i20, i31, i39, 3) : m6942t4(i20, i31, i39, i41, 3);
                                    }
                                } else {
                                    str = i38 == 34 ? m6955n4(i20, i31, i36, 2) : m6942t4(i20, i31, i36, i38, 2);
                                }
                            } else {
                                str = i35 == 34 ? m6955n4(i20, i31, i33, 1) : m6942t4(i20, i31, i33, i35, 1);
                            }
                        } else {
                            str = i33 == 34 ? m6957m4(i20, i31, 4) : m6944s4(i20, i31, i33, 4);
                        }
                    } else {
                        str = i30 == 34 ? m6957m4(i20, i28, 3) : m6944s4(i20, i28, i30, 3);
                    }
                } else {
                    str = i27 == 34 ? m6957m4(i20, i25, 2) : m6944s4(i20, i25, i27, 2);
                }
            } else {
                str = i24 == 34 ? m6957m4(i20, i22, 1) : m6944s4(i20, i22, i24, 1);
            }
            return str;
        }
        if (i4 != 39 || (this.f64661a & f64909l0) == 0) {
            if ((this.f64661a & f64910m0) == 0) {
                m7158H2((char) m6958m3(i), "was expecting double-quote to start field name");
                throw null;
            }
            int[] iArr6 = C23394a.f64772f;
            if (iArr6[i4] != 0) {
                m7158H2(i4, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
                throw null;
            }
            int[] iArr7 = this.f64917S;
            int i55 = 0;
            int i56 = 0;
            while (true) {
                if (i5 < 4) {
                    i5++;
                    i55 = i4 | (i55 << 8);
                    iArr = iArr7;
                } else {
                    iArr = iArr7;
                    if (i56 >= iArr7.length) {
                        iArr = AbstractC23390b.m7175e3(iArr7, iArr7.length);
                        this.f64917S = iArr;
                    }
                    iArr[i56] = i55;
                    i55 = i4;
                    i56++;
                    i5 = 1;
                }
                if (this.f64744o >= this.f64745p && !m6939w3()) {
                    m7160F2(" in field name", EnumC23381m.FIELD_NAME);
                    throw null;
                }
                byte[] bArr3 = this.f64924Z;
                int i57 = this.f64744o;
                i4 = bArr3[i57] & 255;
                if (iArr6[i4] != 0) {
                    int i58 = i56;
                    int[] iArr8 = iArr;
                    if (i5 > 0) {
                        iArr8 = iArr;
                        if (i56 >= iArr.length) {
                            iArr8 = AbstractC23390b.m7175e3(iArr, iArr.length);
                            this.f64917S = iArr8;
                        }
                        iArr8[i56] = i55;
                        i58 = i56 + 1;
                    }
                    String m6908o = this.f64916R.m6908o(iArr8, i58);
                    str2 = m6908o;
                    if (m6908o == null) {
                        str2 = m6961k4(iArr8, i58, i5);
                    }
                } else {
                    this.f64744o = i57 + 1;
                    iArr7 = iArr;
                }
            }
        } else if (this.f64744o >= this.f64745p && !m6939w3()) {
            m7160F2(": was expecting closing ''' for field name", EnumC23381m.FIELD_NAME);
            throw null;
        } else {
            byte[] bArr4 = this.f64924Z;
            int i59 = this.f64744o;
            this.f64744o = i59 + 1;
            int i60 = bArr4[i59] & 255;
            if (i60 != 39) {
                int[] iArr9 = this.f64917S;
                int[] iArr10 = f64914q0;
                int i61 = 0;
                int i62 = 0;
                int i63 = 0;
                while (i60 != 39) {
                    int i64 = i60;
                    int[] iArr11 = iArr9;
                    int i65 = i61;
                    int i66 = i62;
                    int i67 = i63;
                    if (iArr10[i60] != 0) {
                        i64 = i60;
                        iArr11 = iArr9;
                        i65 = i61;
                        i66 = i62;
                        i67 = i63;
                        if (i60 != 34) {
                            if (i60 != 92) {
                                m7178b3(i60, AnalyticsConstants.NAME);
                                c = i60;
                            } else {
                                c = mo6985S2();
                            }
                            i64 = c;
                            iArr11 = iArr9;
                            i65 = i61;
                            i66 = i62;
                            i67 = i63;
                            if (c > 127) {
                                int[] iArr12 = iArr9;
                                int i68 = i61;
                                int i69 = i62;
                                int i70 = i63;
                                if (i61 >= 4) {
                                    iArr12 = iArr9;
                                    if (i62 >= iArr9.length) {
                                        iArr12 = AbstractC23390b.m7175e3(iArr9, iArr9.length);
                                        this.f64917S = iArr12;
                                    }
                                    iArr12[i62] = i63;
                                    i70 = 0;
                                    i69 = i62 + 1;
                                    i68 = 0;
                                }
                                int i71 = i70 << 8;
                                if (c < 2048) {
                                    i2 = i71 | (c >> 6) | 192;
                                    i3 = i68 + 1;
                                    iArr2 = iArr12;
                                } else {
                                    int i72 = i71 | (c >> 12) | 224;
                                    int i73 = i68 + 1;
                                    iArr2 = iArr12;
                                    int i74 = i73;
                                    int i75 = i69;
                                    int i76 = i72;
                                    if (i73 >= 4) {
                                        iArr2 = iArr12;
                                        if (i69 >= iArr12.length) {
                                            iArr2 = AbstractC23390b.m7175e3(iArr12, iArr12.length);
                                            this.f64917S = iArr2;
                                        }
                                        iArr2[i69] = i72;
                                        i76 = 0;
                                        i75 = i69 + 1;
                                        i74 = 0;
                                    }
                                    i2 = (i76 << 8) | ((c >> 6) & 63) | 128;
                                    i69 = i75;
                                    i3 = i74 + 1;
                                }
                                i64 = (c & 63) | 128;
                                i67 = i2;
                                i66 = i69;
                                i65 = i3;
                                iArr11 = iArr2;
                            }
                        }
                    }
                    if (i65 < 4) {
                        i61 = i65 + 1;
                        i63 = i64 | (i67 << 8);
                        iArr9 = iArr11;
                        i62 = i66;
                    } else {
                        iArr9 = iArr11;
                        if (i66 >= iArr11.length) {
                            iArr9 = AbstractC23390b.m7175e3(iArr11, iArr11.length);
                            this.f64917S = iArr9;
                        }
                        iArr9[i66] = i67;
                        i63 = i64;
                        i62 = i66 + 1;
                        i61 = 1;
                    }
                    if (this.f64744o >= this.f64745p && !m6939w3()) {
                        m7160F2(" in field name", EnumC23381m.FIELD_NAME);
                        throw null;
                    }
                    byte[] bArr5 = this.f64924Z;
                    int i77 = this.f64744o;
                    this.f64744o = i77 + 1;
                    i60 = bArr5[i77] & 255;
                }
                int[] iArr13 = iArr9;
                int i78 = i62;
                if (i61 > 0) {
                    iArr13 = iArr9;
                    if (i62 >= iArr9.length) {
                        iArr13 = AbstractC23390b.m7175e3(iArr9, iArr9.length);
                        this.f64917S = iArr13;
                    }
                    iArr13[i62] = m7000F3(i63, i61);
                    i78 = i62 + 1;
                }
                String m6908o2 = this.f64916R.m6908o(iArr13, i78);
                str2 = m6908o2;
                if (m6908o2 == null) {
                    str2 = m6961k4(iArr13, i78, i61);
                }
            }
        }
        return str2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00dc, code lost:
        if (r0 == 46) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00e3, code lost:
        if (r0 == 101) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ea, code lost:
        if (r0 != 69) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00f0, code lost:
        r7.f64744o = r0 - 1;
        r7.f64754y.f64599i = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0108, code lost:
        if (r7.f64752w.m7195f() == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x010b, code lost:
        m6963j4(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0117, code lost:
        return m7172h3(true, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0123, code lost:
        return m6999G3(r0, r11, r0, true, r10);
     */
    /* renamed from: J3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1545k.p1546a.p1548b.EnumC23381m m6995J3() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1553x.C23414i.m6995J3():e.k.a.b.m");
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: K */
    public AbstractC23382n mo5824K() {
        return this.f64915Q;
    }

    /* renamed from: K3 */
    public final EnumC23381m m6994K3(char[] cArr, int i, boolean z, int i2) throws IOException {
        int i3;
        int i4;
        while (true) {
            if (this.f64744o >= this.f64745p && !m6939w3()) {
                this.f64754y.f64599i = i;
                this.f64740N = z;
                this.f64741O = i2;
                this.f64734D = 0;
                return EnumC23381m.VALUE_NUMBER_INT;
            }
            byte[] bArr = this.f64924Z;
            int i5 = this.f64744o;
            i3 = i5 + 1;
            this.f64744o = i3;
            i4 = bArr[i5] & 255;
            if (i4 > 57 || i4 < 48) {
                break;
            }
            char[] cArr2 = cArr;
            int i6 = i;
            if (i >= cArr.length) {
                cArr2 = this.f64754y.m7228l();
                i6 = 0;
            }
            cArr2[i6] = (char) i4;
            i2++;
            i = i6 + 1;
            cArr = cArr2;
        }
        if (i4 == 46 || i4 == 101 || i4 == 69) {
            return m6999G3(cArr, i, i4, z, i2);
        }
        this.f64744o = i3 - 1;
        this.f64754y.f64599i = i;
        if (this.f64752w.m7195f()) {
            m6963j4(this.f64924Z[this.f64744o] & 255);
        }
        this.f64740N = z;
        this.f64741O = i2;
        this.f64734D = 0;
        return EnumC23381m.VALUE_NUMBER_INT;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: L0 */
    public C23357i<EnumC23385q> mo5822L0() {
        return AbstractC23390b.f64730P;
    }

    /* renamed from: L3 */
    public EnumC23381m m6993L3(int i) throws IOException {
        int i2;
        int i3;
        char[] m7231i = this.f64754y.m7231i();
        int i4 = i;
        if (i == 48) {
            i4 = m6965i4();
        }
        m7231i[0] = (char) i4;
        int min = Math.min(this.f64745p, (this.f64744o + m7231i.length) - 1);
        int i5 = 1;
        int i6 = 1;
        while (true) {
            int i7 = this.f64744o;
            if (i7 >= min) {
                return m6994K3(m7231i, i5, false, i6);
            }
            byte[] bArr = this.f64924Z;
            i2 = i7 + 1;
            this.f64744o = i2;
            i3 = bArr[i7] & 255;
            if (i3 < 48 || i3 > 57) {
                break;
            }
            i6++;
            m7231i[i5] = (char) i3;
            i5++;
        }
        if (i3 == 46 || i3 == 101 || i3 == 69) {
            return m6999G3(m7231i, i5, i3, false, i6);
        }
        this.f64744o = i2 - 1;
        this.f64754y.f64599i = i5;
        if (this.f64752w.m7195f()) {
            m6963j4(i3);
        }
        return m7172h3(false, i6);
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x0284, code lost:
        r11 = 0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: M3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m6992M3(p193e.p1545k.p1546a.p1548b.C23344a r7, java.io.OutputStream r8, byte[] r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 836
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1553x.C23414i.m6992M3(e.k.a.b.a, java.io.OutputStream, byte[]):int");
    }

    /* renamed from: N3 */
    public void m6991N3(int i) throws C23375i {
        if (i < 32) {
            m7157I2(i);
            throw null;
        } else {
            m6990O3(i);
            throw null;
        }
    }

    /* renamed from: O3 */
    public void m6990O3(int i) throws C23375i {
        throw new C23375i(this, C22128a.m8668S1(i, C22128a.m8728C("Invalid UTF-8 start byte 0x")));
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: P */
    public C23374h mo5819P() {
        return new C23374h(m7184U2(), this.f64746q + this.f64744o, -1L, this.f64747r, (this.f64744o - this.f64748s) + 1);
    }

    @Override // p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23390b
    /* renamed from: P2 */
    public void mo6989P2() throws IOException {
        if (this.f64923Y != null) {
            if (this.f64742m.f64780c || m7203S1(AbstractC23376j.EnumC23377a.AUTO_CLOSE_SOURCE)) {
                this.f64923Y.close();
            }
            this.f64923Y = null;
        }
    }

    /* renamed from: P3 */
    public void m6988P3(int i) throws C23375i {
        throw new C23375i(this, C22128a.m8668S1(i, C22128a.m8728C("Invalid UTF-8 middle byte 0x")));
    }

    /* renamed from: Q3 */
    public void m6987Q3(int i, int i2) throws C23375i {
        this.f64744o = i2;
        m6988P3(i);
        throw null;
    }

    /* renamed from: R3 */
    public void m6986R3(String str) throws IOException {
        m6984S3(str, m7177c3());
        throw null;
    }

    @Override // p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23390b
    /* renamed from: S2 */
    public char mo6985S2() throws IOException {
        if (this.f64744o >= this.f64745p && !m6939w3()) {
            m7160F2(" in character escape sequence", EnumC23381m.VALUE_STRING);
            throw null;
        }
        byte[] bArr = this.f64924Z;
        int i = this.f64744o;
        this.f64744o = i + 1;
        byte b = bArr[i];
        if (b == 34 || b == 47 || b == 92) {
            return (char) b;
        }
        if (b == 98) {
            return '\b';
        }
        if (b == 102) {
            return '\f';
        }
        if (b == 110) {
            return '\n';
        }
        if (b == 114) {
            return '\r';
        }
        if (b == 116) {
            return '\t';
        }
        if (b != 117) {
            char m6958m3 = (char) m6958m3(b);
            m7182W2(m6958m3);
            return m6958m3;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < 4; i3++) {
            if (this.f64744o >= this.f64745p && !m6939w3()) {
                m7160F2(" in character escape sequence", EnumC23381m.VALUE_STRING);
                throw null;
            }
            byte[] bArr2 = this.f64924Z;
            int i4 = this.f64744o;
            this.f64744o = i4 + 1;
            int i5 = bArr2[i4] & 255;
            int i6 = C23394a.f64775i[i5];
            if (i6 < 0) {
                m7158H2(i5, "expected a hex-digit for character escape sequence");
                throw null;
            }
            i2 = (i2 << 4) | i6;
        }
        return (char) i2;
    }

    /* renamed from: S3 */
    public void m6984S3(String str, String str2) throws IOException {
        StringBuilder sb = new StringBuilder(str);
        while (true) {
            if (this.f64744o >= this.f64745p && !m6939w3()) {
                break;
            }
            byte[] bArr = this.f64924Z;
            int i = this.f64744o;
            this.f64744o = i + 1;
            char m6958m3 = (char) m6958m3(bArr[i]);
            if (!Character.isJavaIdentifierPart(m6958m3)) {
                break;
            }
            sb.append(m6958m3);
            if (sb.length() >= 256) {
                sb.append("...");
                break;
            }
        }
        m7163D2("Unrecognized token '%s': was expecting %s", sb, str2);
        throw null;
    }

    /* renamed from: T3 */
    public final void m6983T3() throws IOException {
        if (this.f64744o < this.f64745p || m6939w3()) {
            byte[] bArr = this.f64924Z;
            int i = this.f64744o;
            if (bArr[i] == 10) {
                this.f64744o = i + 1;
            }
        }
        this.f64747r++;
        this.f64748s = this.f64744o;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: U0 */
    public String mo5817U0() throws IOException {
        String str;
        EnumC23381m enumC23381m = this.f64765c;
        if (enumC23381m == EnumC23381m.VALUE_STRING) {
            if (!this.f64918T) {
                return this.f64754y.m7232h();
            }
            this.f64918T = false;
            return m6948r3();
        }
        if (enumC23381m == null) {
            str = null;
        } else {
            int i = enumC23381m.f64707d;
            str = i != 5 ? (i == 6 || i == 7 || i == 8) ? this.f64754y.m7232h() : enumC23381m.f64704a : this.f64752w.f64848f;
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00ae, code lost:
        if (r0 == 9) goto L38;
     */
    /* renamed from: U3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m6982U3() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1553x.C23414i.m6982U3():int");
    }

    /* renamed from: V3 */
    public final int m6981V3(boolean z) throws IOException {
        while (true) {
            if (this.f64744o >= this.f64745p && !m6939w3()) {
                StringBuilder m8728C = C22128a.m8728C(" within/between ");
                m8728C.append(this.f64752w.m7194h());
                m8728C.append(" entries");
                m7160F2(m8728C.toString(), null);
                throw null;
            }
            byte[] bArr = this.f64924Z;
            int i = this.f64744o;
            int i2 = i + 1;
            this.f64744o = i2;
            int i3 = bArr[i] & 255;
            if (i3 > 32) {
                if (i3 == 47) {
                    m6980W3();
                } else if (i3 != 35 || !m6969g4()) {
                    if (z) {
                        return i3;
                    }
                    if (i3 != 58) {
                        m7158H2(i3, "was expecting a colon to separate field name and value");
                        throw null;
                    }
                    z = true;
                }
            } else if (i3 == 32) {
                continue;
            } else if (i3 == 10) {
                this.f64747r++;
                this.f64748s = i2;
            } else if (i3 == 13) {
                m6983T3();
            } else if (i3 != 9) {
                m7157I2(i3);
                throw null;
            }
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: W0 */
    public char[] mo5816W0() throws IOException {
        EnumC23381m enumC23381m = this.f64765c;
        if (enumC23381m != null) {
            int i = enumC23381m.f64707d;
            if (i != 5) {
                if (i != 6) {
                    if (i != 7 && i != 8) {
                        return enumC23381m.f64705b;
                    }
                } else if (this.f64918T) {
                    this.f64918T = false;
                    m6945s3();
                }
                return this.f64754y.m7226n();
            }
            if (!this.f64731A) {
                String str = this.f64752w.f64848f;
                int length = str.length();
                char[] cArr = this.f64755z;
                if (cArr == null) {
                    C23396b c23396b = this.f64742m;
                    c23396b.m7134a(c23396b.f64787j);
                    char[] m7253b = c23396b.f64781d.m7253b(3, length);
                    c23396b.f64787j = m7253b;
                    this.f64755z = m7253b;
                } else if (cArr.length < length) {
                    this.f64755z = new char[length];
                }
                str.getChars(0, length, this.f64755z, 0);
                this.f64731A = true;
            }
            return this.f64755z;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00cf, code lost:
        m7160F2(" in a comment", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00d8, code lost:
        throw null;
     */
    /* renamed from: W3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6980W3() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1553x.C23414i.m6980W3():void");
    }

    /* renamed from: X3 */
    public final void m6979X3() throws IOException {
        int[] iArr = C23394a.f64773g;
        while (true) {
            if (this.f64744o < this.f64745p || m6939w3()) {
                byte[] bArr = this.f64924Z;
                int i = this.f64744o;
                int i2 = i + 1;
                this.f64744o = i2;
                int i3 = bArr[i] & 255;
                int i4 = iArr[i3];
                if (i4 != 0) {
                    if (i4 == 2) {
                        m6976Z3();
                    } else if (i4 == 3) {
                        m6975a4();
                    } else if (i4 == 4) {
                        m6974b4();
                    } else if (i4 == 10) {
                        this.f64747r++;
                        this.f64748s = i2;
                        return;
                    } else if (i4 == 13) {
                        m6983T3();
                        return;
                    } else if (i4 != 42 && i4 < 0) {
                        m6991N3(i3);
                        throw null;
                    }
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: Y3 */
    public void m6978Y3() throws IOException {
        this.f64918T = false;
        int[] iArr = f64913p0;
        byte[] bArr = this.f64924Z;
        while (true) {
            int i = this.f64744o;
            int i2 = this.f64745p;
            int i3 = i;
            int i4 = i2;
            if (i >= i2) {
                m6938x3();
                i3 = this.f64744o;
                i4 = this.f64745p;
            }
            while (true) {
                if (i3 >= i4) {
                    this.f64744o = i3;
                    break;
                }
                int i5 = i3 + 1;
                int i6 = bArr[i3] & 255;
                if (iArr[i6] != 0) {
                    this.f64744o = i5;
                    if (i6 == 34) {
                        return;
                    }
                    int i7 = iArr[i6];
                    if (i7 == 1) {
                        mo6985S2();
                    } else if (i7 == 2) {
                        m6976Z3();
                    } else if (i7 == 3) {
                        m6975a4();
                    } else if (i7 == 4) {
                        m6974b4();
                    } else if (i6 >= 32) {
                        m6991N3(i6);
                        throw null;
                    } else {
                        m7178b3(i6, "string value");
                    }
                } else {
                    i3 = i5;
                }
            }
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23390b
    /* renamed from: Z2 */
    public void mo6977Z2() throws IOException {
        byte[] bArr;
        byte[] bArr2;
        super.mo6977Z2();
        C23416a c23416a = this.f64916R;
        C23416a c23416a2 = c23416a.f64934a;
        if (c23416a2 != null && (!c23416a.f64948o)) {
            C23416a.C23417a c23417a = new C23416a.C23417a(c23416a);
            int i = c23417a.f64950b;
            C23416a.C23417a c23417a2 = c23416a2.f64935b.get();
            if (i != c23417a2.f64950b) {
                if (i > 6000) {
                    c23417a = C23416a.C23417a.m6906a(64);
                }
                c23416a2.f64935b.compareAndSet(c23417a2, c23417a);
            }
            c23416a.f64948o = true;
        }
        if (!this.f64925g0 || (bArr = this.f64924Z) == null || bArr == (bArr2 = AbstractC23391c.f64756d)) {
            return;
        }
        this.f64924Z = bArr2;
        this.f64742m.m7129f(bArr);
    }

    /* renamed from: Z3 */
    public final void m6976Z3() throws IOException {
        if (this.f64744o >= this.f64745p) {
            m6938x3();
        }
        byte[] bArr = this.f64924Z;
        int i = this.f64744o;
        int i2 = i + 1;
        this.f64744o = i2;
        byte b = bArr[i];
        if ((b & 192) == 128) {
            return;
        }
        m6987Q3(b & 255, i2);
        throw null;
    }

    /* renamed from: a4 */
    public final void m6975a4() throws IOException {
        if (this.f64744o >= this.f64745p) {
            m6938x3();
        }
        byte[] bArr = this.f64924Z;
        int i = this.f64744o;
        int i2 = i + 1;
        this.f64744o = i2;
        byte b = bArr[i];
        if ((b & 192) != 128) {
            m6987Q3(b & 255, i2);
            throw null;
        }
        if (i2 >= this.f64745p) {
            m6938x3();
        }
        byte[] bArr2 = this.f64924Z;
        int i3 = this.f64744o;
        int i4 = i3 + 1;
        this.f64744o = i4;
        byte b2 = bArr2[i3];
        if ((b2 & 192) == 128) {
            return;
        }
        m6987Q3(b2 & 255, i4);
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0096, code lost:
        if (r0 == 125) goto L31;
     */
    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: b2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo5813b2() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 519
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1553x.C23414i.mo5813b2():java.lang.String");
    }

    /* renamed from: b4 */
    public final void m6974b4() throws IOException {
        if (this.f64744o >= this.f64745p) {
            m6938x3();
        }
        byte[] bArr = this.f64924Z;
        int i = this.f64744o;
        int i2 = i + 1;
        this.f64744o = i2;
        byte b = bArr[i];
        if ((b & 192) != 128) {
            m6987Q3(b & 255, i2);
            throw null;
        }
        if (i2 >= this.f64745p) {
            m6938x3();
        }
        byte[] bArr2 = this.f64924Z;
        int i3 = this.f64744o;
        int i4 = i3 + 1;
        this.f64744o = i4;
        byte b2 = bArr2[i3];
        if ((b2 & 192) != 128) {
            m6987Q3(b2 & 255, i4);
            throw null;
        }
        if (i4 >= this.f64745p) {
            m6938x3();
        }
        byte[] bArr3 = this.f64924Z;
        int i5 = this.f64744o;
        int i6 = i5 + 1;
        this.f64744o = i6;
        byte b3 = bArr3[i5];
        if ((b3 & 192) == 128) {
            return;
        }
        m6987Q3(b3 & 255, i6);
        throw null;
    }

    /* renamed from: c4 */
    public final int m6973c4() throws IOException {
        while (true) {
            int i = this.f64744o;
            if (i < this.f64745p) {
                byte[] bArr = this.f64924Z;
                int i2 = i + 1;
                this.f64744o = i2;
                int i3 = bArr[i] & 255;
                if (i3 > 32) {
                    if (i3 != 47 && i3 != 35) {
                        return i3;
                    }
                    this.f64744o = i2 - 1;
                    return m6972d4();
                } else if (i3 != 32) {
                    if (i3 == 10) {
                        this.f64747r++;
                        this.f64748s = i2;
                    } else if (i3 == 13) {
                        m6983T3();
                    } else if (i3 != 9) {
                        m7157I2(i3);
                        throw null;
                    }
                }
            } else {
                return m6972d4();
            }
        }
    }

    /* renamed from: d4 */
    public final int m6972d4() throws IOException {
        int i;
        while (true) {
            if (this.f64744o >= this.f64745p && !m6939w3()) {
                StringBuilder m8728C = C22128a.m8728C("Unexpected end-of-input within/between ");
                m8728C.append(this.f64752w.m7194h());
                m8728C.append(" entries");
                throw new C23375i(this, m8728C.toString());
            }
            byte[] bArr = this.f64924Z;
            int i2 = this.f64744o;
            int i3 = i2 + 1;
            this.f64744o = i3;
            i = bArr[i2] & 255;
            if (i > 32) {
                if (i == 47) {
                    m6980W3();
                } else if (i != 35 || !m6969g4()) {
                    break;
                }
            } else if (i == 32) {
                continue;
            } else if (i == 10) {
                this.f64747r++;
                this.f64748s = i3;
            } else if (i == 13) {
                m6983T3();
            } else if (i != 9) {
                m7157I2(i);
                throw null;
            }
        }
        return i;
    }

    /* renamed from: e4 */
    public final int m6971e4() throws IOException {
        if (this.f64744o >= this.f64745p && !m6939w3()) {
            mo5799z2();
            return -1;
        }
        byte[] bArr = this.f64924Z;
        int i = this.f64744o;
        int i2 = i + 1;
        this.f64744o = i2;
        int i3 = bArr[i] & 255;
        if (i3 > 32) {
            if (i3 != 47 && i3 != 35) {
                return i3;
            }
            this.f64744o = i2 - 1;
            return m6970f4();
        }
        if (i3 != 32) {
            if (i3 == 10) {
                this.f64747r++;
                this.f64748s = i2;
            } else if (i3 == 13) {
                m6983T3();
            } else if (i3 != 9) {
                m7157I2(i3);
                throw null;
            }
        }
        while (true) {
            int i4 = this.f64744o;
            if (i4 >= this.f64745p) {
                return m6970f4();
            }
            byte[] bArr2 = this.f64924Z;
            int i5 = i4 + 1;
            this.f64744o = i5;
            int i6 = bArr2[i4] & 255;
            if (i6 > 32) {
                if (i6 != 47 && i6 != 35) {
                    return i6;
                }
                this.f64744o = i5 - 1;
                return m6970f4();
            } else if (i6 != 32) {
                if (i6 == 10) {
                    this.f64747r++;
                    this.f64748s = i5;
                } else if (i6 == 13) {
                    m6983T3();
                } else if (i6 != 9) {
                    m7157I2(i6);
                    throw null;
                }
            }
        }
    }

    /* renamed from: f4 */
    public final int m6970f4() throws IOException {
        int i;
        while (true) {
            if (this.f64744o >= this.f64745p && !m6939w3()) {
                mo5799z2();
                return -1;
            }
            byte[] bArr = this.f64924Z;
            int i2 = this.f64744o;
            int i3 = i2 + 1;
            this.f64744o = i3;
            i = bArr[i2] & 255;
            if (i > 32) {
                if (i == 47) {
                    m6980W3();
                } else if (i != 35 || !m6969g4()) {
                    break;
                }
            } else if (i == 32) {
                continue;
            } else if (i == 10) {
                this.f64747r++;
                this.f64748s = i3;
            } else if (i == 13) {
                m6983T3();
            } else if (i != 9) {
                m7157I2(i);
                throw null;
            }
        }
        return i;
    }

    /* renamed from: g4 */
    public final boolean m6969g4() throws IOException {
        if ((this.f64661a & f64912o0) == 0) {
            return false;
        }
        m6979X3();
        return true;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: h2 */
    public String mo6968h2() throws IOException {
        String str = null;
        if (this.f64765c != EnumC23381m.FIELD_NAME) {
            if (mo5811i2() == EnumC23381m.VALUE_STRING) {
                str = mo5817U0();
            }
            return str;
        }
        this.f64731A = false;
        EnumC23381m enumC23381m = this.f64753x;
        this.f64753x = null;
        this.f64765c = enumC23381m;
        if (enumC23381m == EnumC23381m.VALUE_STRING) {
            if (!this.f64918T) {
                return this.f64754y.m7232h();
            }
            this.f64918T = false;
            return m6948r3();
        } else if (enumC23381m == EnumC23381m.START_ARRAY) {
            this.f64752w = this.f64752w.m7076j(this.f64750u, this.f64751v);
            return null;
        } else if (enumC23381m != EnumC23381m.START_OBJECT) {
            return null;
        } else {
            this.f64752w = this.f64752w.m7075k(this.f64750u, this.f64751v);
            return null;
        }
    }

    /* renamed from: h4 */
    public final void m6967h4() {
        this.f64750u = this.f64747r;
        int i = this.f64744o;
        this.f64749t = this.f64746q + i;
        this.f64751v = i - this.f64748s;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0098, code lost:
        if (r0 == 125) goto L31;
     */
    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: i2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1545k.p1546a.p1548b.EnumC23381m mo5811i2() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 530
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1553x.C23414i.mo5811i2():e.k.a.b.m");
    }

    /* renamed from: i3 */
    public final void m6966i3(String str, int i, int i2) throws IOException {
        if (!Character.isJavaIdentifierPart((char) m6958m3(i2))) {
            return;
        }
        m6986R3(str.substring(0, i));
        throw null;
    }

    /* renamed from: i4 */
    public final int m6965i4() throws IOException {
        if (this.f64744o < this.f64745p || m6939w3()) {
            byte[] bArr = this.f64924Z;
            int i = this.f64744o;
            int i2 = bArr[i] & 255;
            if (i2 < 48 || i2 > 57) {
                return 48;
            }
            if ((this.f64661a & f64906i0) == 0) {
                throw new C23375i(this, C22128a.m8543z2("Invalid numeric value: ", "Leading zeroes not allowed"));
            }
            this.f64744o = i + 1;
            int i3 = i2;
            if (i2 == 48) {
                i3 = i2;
                while (true) {
                    if (this.f64744o >= this.f64745p && !m6939w3()) {
                        break;
                    }
                    byte[] bArr2 = this.f64924Z;
                    int i4 = this.f64744o;
                    int i5 = bArr2[i4] & 255;
                    if (i5 >= 48 && i5 <= 57) {
                        this.f64744o = i4 + 1;
                        i3 = i5;
                        if (i5 != 48) {
                            i3 = i5;
                            break;
                        }
                    } else {
                        return 48;
                    }
                }
            }
            return i3;
        }
        return 48;
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: j1 */
    public int mo5810j1() throws IOException {
        EnumC23381m enumC23381m = this.f64765c;
        if (enumC23381m != null) {
            int i = enumC23381m.f64707d;
            if (i == 5) {
                return this.f64752w.f64848f.length();
            }
            if (i != 6) {
                if (i != 7 && i != 8) {
                    return enumC23381m.f64705b.length;
                }
            } else if (this.f64918T) {
                this.f64918T = false;
                m6945s3();
            }
            return this.f64754y.m7222r();
        }
        return 0;
    }

    /* renamed from: j3 */
    public final void m6964j3() throws C23375i {
        m6967h4();
        if (this.f64752w.m7197d()) {
            this.f64752w = this.f64752w.m7077i();
        } else {
            m7179a3(93, '}');
            throw null;
        }
    }

    /* renamed from: j4 */
    public final void m6963j4(int i) throws IOException {
        int i2 = this.f64744o + 1;
        this.f64744o = i2;
        if (i != 9) {
            if (i == 10) {
                this.f64747r++;
                this.f64748s = i2;
            } else if (i == 13) {
                m6983T3();
            } else if (i == 32) {
            } else {
                m7158H2(i, "Expected space separating root-level values");
                throw null;
            }
        }
    }

    /* renamed from: k3 */
    public final void m6962k3() throws C23375i {
        m6967h4();
        if (this.f64752w.m7196e()) {
            this.f64752w = this.f64752w.m7077i();
        } else {
            m7179a3(125, ']');
            throw null;
        }
    }

    /* renamed from: k4 */
    public final String m6961k4(int[] iArr, int i, int i2) throws C23375i {
        int i3;
        int i4;
        int i5;
        int i6 = ((i << 2) - 4) + i2;
        if (i2 < 4) {
            int i7 = i - 1;
            i3 = iArr[i7];
            iArr[i7] = i3 << ((4 - i2) << 3);
        } else {
            i3 = 0;
        }
        char[] m7231i = this.f64754y.m7231i();
        int i8 = 0;
        int i9 = 0;
        while (true) {
            int i10 = i9;
            if (i8 >= i6) {
                String str = new String(m7231i, 0, i10);
                if (i2 < 4) {
                    iArr[i - 1] = i3;
                }
                return this.f64916R.m6916g(str, iArr, i);
            }
            int i11 = (iArr[i8 >> 2] >> ((3 - (i8 & 3)) << 3)) & 255;
            int i12 = i8 + 1;
            char[] cArr = m7231i;
            i8 = i12;
            int i13 = i10;
            int i14 = i11;
            if (i11 > 127) {
                if ((i11 & 224) == 192) {
                    i5 = i11 & 31;
                    i4 = 1;
                } else if ((i11 & 240) == 224) {
                    i5 = i11 & 15;
                    i4 = 2;
                } else if ((i11 & 248) != 240) {
                    m6990O3(i11);
                    throw null;
                } else {
                    i5 = i11 & 7;
                    i4 = 3;
                }
                if (i12 + i4 > i6) {
                    m7160F2(" in field name", EnumC23381m.FIELD_NAME);
                    throw null;
                }
                int i15 = iArr[i12 >> 2] >> ((3 - (i12 & 3)) << 3);
                int i16 = i12 + 1;
                if ((i15 & 192) != 128) {
                    m6988P3(i15);
                    throw null;
                }
                int i17 = (i5 << 6) | (i15 & 63);
                int i18 = i16;
                int i19 = i17;
                if (i4 > 1) {
                    int i20 = iArr[i16 >> 2] >> ((3 - (i16 & 3)) << 3);
                    i18 = i16 + 1;
                    if ((i20 & 192) != 128) {
                        m6988P3(i20);
                        throw null;
                    }
                    i19 = (i20 & 63) | (i17 << 6);
                    if (i4 > 2) {
                        int i21 = iArr[i18 >> 2] >> ((3 - (i18 & 3)) << 3);
                        i18++;
                        if ((i21 & 192) != 128) {
                            m6988P3(i21 & 255);
                            throw null;
                        }
                        i19 = (i19 << 6) | (i21 & 63);
                    }
                }
                cArr = m7231i;
                i8 = i18;
                i13 = i10;
                i14 = i19;
                if (i4 > 2) {
                    int i22 = i19 - 65536;
                    cArr = m7231i;
                    if (i10 >= m7231i.length) {
                        cArr = this.f64754y.m7229k();
                    }
                    cArr[i10] = (char) ((i22 >> 10) + 55296);
                    i14 = (i22 & 1023) | 56320;
                    i13 = i10 + 1;
                    i8 = i18;
                }
            }
            m7231i = cArr;
            if (i13 >= cArr.length) {
                m7231i = this.f64754y.m7229k();
            }
            m7231i[i13] = (char) i14;
            i9 = i13 + 1;
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: l1 */
    public int mo5807l1() throws IOException {
        EnumC23381m enumC23381m = this.f64765c;
        if (enumC23381m != null) {
            int i = enumC23381m.f64707d;
            if (i != 6) {
                if (i != 7 && i != 8) {
                    return 0;
                }
            } else if (this.f64918T) {
                this.f64918T = false;
                m6945s3();
            }
            return this.f64754y.m7225o();
        }
        return 0;
    }

    /* renamed from: l3 */
    public final byte[] m6960l3(C23344a c23344a) throws IOException {
        C23348c m7185T2 = m7185T2();
        while (true) {
            if (this.f64744o >= this.f64745p) {
                m6938x3();
            }
            byte[] bArr = this.f64924Z;
            int i = this.f64744o;
            this.f64744o = i + 1;
            int i2 = bArr[i] & 255;
            if (i2 > 32) {
                int m7263f = c23344a.m7263f(i2);
                int i3 = m7263f;
                if (m7263f < 0) {
                    if (i2 == 34) {
                        return m7185T2.m7247q();
                    }
                    int m7186R2 = m7186R2(c23344a, i2, 0);
                    i3 = m7186R2;
                    if (m7186R2 < 0) {
                        continue;
                    }
                }
                if (this.f64744o >= this.f64745p) {
                    m6938x3();
                }
                byte[] bArr2 = this.f64924Z;
                int i4 = this.f64744o;
                this.f64744o = i4 + 1;
                int i5 = bArr2[i4] & 255;
                int m7263f2 = c23344a.m7263f(i5);
                int i6 = m7263f2;
                if (m7263f2 < 0) {
                    i6 = m7186R2(c23344a, i5, 1);
                }
                int i7 = (i3 << 6) | i6;
                if (this.f64744o >= this.f64745p) {
                    m6938x3();
                }
                byte[] bArr3 = this.f64924Z;
                int i8 = this.f64744o;
                this.f64744o = i8 + 1;
                int i9 = bArr3[i8] & 255;
                int m7263f3 = c23344a.m7263f(i9);
                int i10 = m7263f3;
                if (m7263f3 < 0) {
                    int i11 = m7263f3;
                    if (m7263f3 != -2) {
                        if (i9 == 34) {
                            m7185T2.m7251d(i7 >> 4);
                            if (!c23344a.f64555g) {
                                return m7185T2.m7247q();
                            }
                            this.f64744o--;
                            m7183V2(c23344a);
                            throw null;
                        }
                        i11 = m7186R2(c23344a, i9, 2);
                    }
                    i10 = i11;
                    if (i11 == -2) {
                        if (this.f64744o >= this.f64745p) {
                            m6938x3();
                        }
                        byte[] bArr4 = this.f64924Z;
                        int i12 = this.f64744o;
                        this.f64744o = i12 + 1;
                        int i13 = bArr4[i12] & 255;
                        if (!c23344a.m7255n(i13) && m7186R2(c23344a, i13, 3) != -2) {
                            StringBuilder m8728C = C22128a.m8728C("expected padding character '");
                            m8728C.append(c23344a.f64553e);
                            m8728C.append("'");
                            throw m7174f3(c23344a, i13, 3, m8728C.toString());
                        }
                        m7185T2.m7251d(i7 >> 4);
                    }
                }
                int i14 = (i7 << 6) | i10;
                if (this.f64744o >= this.f64745p) {
                    m6938x3();
                }
                byte[] bArr5 = this.f64924Z;
                int i15 = this.f64744o;
                this.f64744o = i15 + 1;
                int i16 = bArr5[i15] & 255;
                int m7263f4 = c23344a.m7263f(i16);
                int i17 = m7263f4;
                if (m7263f4 < 0) {
                    int i18 = m7263f4;
                    if (m7263f4 != -2) {
                        if (i16 == 34) {
                            m7185T2.m7249k(i14 >> 2);
                            if (!c23344a.f64555g) {
                                return m7185T2.m7247q();
                            }
                            this.f64744o--;
                            m7183V2(c23344a);
                            throw null;
                        }
                        i18 = m7186R2(c23344a, i16, 3);
                    }
                    i17 = i18;
                    if (i18 == -2) {
                        m7185T2.m7249k(i14 >> 2);
                    }
                }
                m7185T2.m7250j((i14 << 6) | i17);
            }
        }
    }

    /* renamed from: l4 */
    public final String m6959l4(int i, int i2) throws C23375i {
        int m7000F3 = m7000F3(i, i2);
        String m6911l = this.f64916R.m6911l(m7000F3);
        if (m6911l != null) {
            return m6911l;
        }
        int[] iArr = this.f64917S;
        iArr[0] = m7000F3;
        return m6961k4(iArr, 1, i2);
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: m1 */
    public C23374h mo5806m1() {
        return this.f64765c == EnumC23381m.FIELD_NAME ? new C23374h(m7184U2(), this.f64746q + (this.f64920V - 1), -1L, this.f64921W, this.f64922X) : new C23374h(m7184U2(), this.f64749t - 1, -1L, this.f64750u, this.f64751v);
    }

    /* renamed from: m3 */
    public int m6958m3(int i) throws IOException {
        char c;
        int i2;
        int i3 = i & 255;
        int i4 = i3;
        if (i3 > 127) {
            if ((i3 & 224) == 192) {
                i2 = i3 & 31;
                c = 1;
            } else if ((i3 & 240) == 224) {
                i2 = i3 & 15;
                c = 2;
            } else if ((i3 & 248) != 240) {
                m6990O3(i3 & 255);
                throw null;
            } else {
                i2 = i3 & 7;
                c = 3;
            }
            int m6951p4 = m6951p4();
            if ((m6951p4 & 192) != 128) {
                m6988P3(m6951p4 & 255);
                throw null;
            }
            int i5 = (i2 << 6) | (m6951p4 & 63);
            i4 = i5;
            if (c > 1) {
                int m6951p42 = m6951p4();
                if ((m6951p42 & 192) != 128) {
                    m6988P3(m6951p42 & 255);
                    throw null;
                }
                int i6 = (i5 << 6) | (m6951p42 & 63);
                i4 = i6;
                if (c > 2) {
                    int m6951p43 = m6951p4();
                    if ((m6951p43 & 192) != 128) {
                        m6988P3(m6951p43 & 255);
                        throw null;
                    }
                    i4 = (i6 << 6) | (m6951p43 & 63);
                }
            }
        }
        return i4;
    }

    /* renamed from: m4 */
    public final String m6957m4(int i, int i2, int i3) throws C23375i {
        int m7000F3 = m7000F3(i2, i3);
        String m6910m = this.f64916R.m6910m(i, m7000F3);
        if (m6910m != null) {
            return m6910m;
        }
        int[] iArr = this.f64917S;
        iArr[0] = i;
        iArr[1] = m7000F3;
        return m6961k4(iArr, 2, i3);
    }

    /* renamed from: n3 */
    public final int m6956n3(int i) throws IOException {
        if (this.f64744o >= this.f64745p) {
            m6938x3();
        }
        byte[] bArr = this.f64924Z;
        int i2 = this.f64744o;
        int i3 = i2 + 1;
        this.f64744o = i3;
        byte b = bArr[i2];
        if ((b & 192) == 128) {
            return ((i & 31) << 6) | (b & 63);
        }
        m6987Q3(b & 255, i3);
        throw null;
    }

    /* renamed from: n4 */
    public final String m6955n4(int i, int i2, int i3, int i4) throws C23375i {
        int m7000F3 = m7000F3(i3, i4);
        String m6909n = this.f64916R.m6909n(i, i2, m7000F3);
        if (m6909n != null) {
            return m6909n;
        }
        int[] iArr = this.f64917S;
        iArr[0] = i;
        iArr[1] = i2;
        iArr[2] = m7000F3(m7000F3, i4);
        return m6961k4(iArr, 3, i4);
    }

    /* renamed from: o3 */
    public final int m6954o3(int i) throws IOException {
        if (this.f64744o >= this.f64745p) {
            m6938x3();
        }
        byte[] bArr = this.f64924Z;
        int i2 = this.f64744o;
        int i3 = i2 + 1;
        this.f64744o = i3;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            m6987Q3(b & 255, i3);
            throw null;
        }
        if (i3 >= this.f64745p) {
            m6938x3();
        }
        byte[] bArr2 = this.f64924Z;
        int i4 = this.f64744o;
        int i5 = i4 + 1;
        this.f64744o = i5;
        byte b2 = bArr2[i4];
        if ((b2 & 192) == 128) {
            return ((((i & 15) << 6) | (b & 63)) << 6) | (b2 & 63);
        }
        m6987Q3(b2 & 255, i5);
        throw null;
    }

    /* renamed from: o4 */
    public final String m6953o4(int[] iArr, int i, int i2, int i3) throws C23375i {
        int[] iArr2 = iArr;
        if (i >= iArr.length) {
            iArr2 = AbstractC23390b.m7175e3(iArr, iArr.length);
            this.f64917S = iArr2;
        }
        int i4 = i + 1;
        iArr2[i] = m7000F3(i2, i3);
        String m6908o = this.f64916R.m6908o(iArr2, i4);
        return m6908o == null ? m6961k4(iArr2, i4, i3) : m6908o;
    }

    /* renamed from: p3 */
    public final int m6952p3(int i) throws IOException {
        byte[] bArr = this.f64924Z;
        int i2 = this.f64744o;
        int i3 = i2 + 1;
        this.f64744o = i3;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            m6987Q3(b & 255, i3);
            throw null;
        }
        int i4 = i3 + 1;
        this.f64744o = i4;
        byte b2 = bArr[i3];
        if ((b2 & 192) == 128) {
            return ((((i & 15) << 6) | (b & 63)) << 6) | (b2 & 63);
        }
        m6987Q3(b2 & 255, i4);
        throw null;
    }

    /* renamed from: p4 */
    public final int m6951p4() throws IOException {
        if (this.f64744o >= this.f64745p) {
            m6938x3();
        }
        byte[] bArr = this.f64924Z;
        int i = this.f64744o;
        this.f64744o = i + 1;
        return bArr[i] & 255;
    }

    /* renamed from: q3 */
    public final int m6950q3(int i) throws IOException {
        if (this.f64744o >= this.f64745p) {
            m6938x3();
        }
        byte[] bArr = this.f64924Z;
        int i2 = this.f64744o;
        int i3 = i2 + 1;
        this.f64744o = i3;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            m6987Q3(b & 255, i3);
            throw null;
        }
        if (i3 >= this.f64745p) {
            m6938x3();
        }
        byte[] bArr2 = this.f64924Z;
        int i4 = this.f64744o;
        int i5 = i4 + 1;
        this.f64744o = i5;
        byte b2 = bArr2[i4];
        if ((b2 & 192) != 128) {
            m6987Q3(b2 & 255, i5);
            throw null;
        }
        if (i5 >= this.f64745p) {
            m6938x3();
        }
        byte[] bArr3 = this.f64924Z;
        int i6 = this.f64744o;
        int i7 = i6 + 1;
        this.f64744o = i7;
        byte b3 = bArr3[i6];
        if ((b3 & 192) == 128) {
            return (((((((i & 7) << 6) | (b & 63)) << 6) | (b2 & 63)) << 6) | (b3 & 63)) - 65536;
        }
        m6987Q3(b3 & 255, i7);
        throw null;
    }

    /* renamed from: q4 */
    public final String m6949q4(int[] iArr, int i, int i2, int i3, int i4) throws IOException {
        int i5;
        int i6;
        int[] iArr2;
        int[] iArr3 = f64914q0;
        int i7 = i3;
        while (true) {
            char c = i7;
            int[] iArr4 = iArr;
            int i8 = i;
            int i9 = i2;
            int i10 = c;
            int i11 = i4;
            if (iArr3[c] != 0) {
                if (c == 34) {
                    int[] iArr5 = iArr;
                    int i12 = i;
                    if (i4 > 0) {
                        iArr5 = iArr;
                        if (i >= iArr.length) {
                            iArr5 = AbstractC23390b.m7175e3(iArr, iArr.length);
                            this.f64917S = iArr5;
                        }
                        iArr5[i] = m7000F3(i2, i4);
                        i12 = i + 1;
                    }
                    String m6908o = this.f64916R.m6908o(iArr5, i12);
                    String str = m6908o;
                    if (m6908o == null) {
                        str = m6961k4(iArr5, i12, i4);
                    }
                    return str;
                }
                if (c != 92) {
                    m7178b3(c, AnalyticsConstants.NAME);
                } else {
                    c = mo6985S2();
                }
                iArr4 = iArr;
                i8 = i;
                i9 = i2;
                i10 = c;
                i11 = i4;
                if (c > 127) {
                    int[] iArr6 = iArr;
                    int i13 = i;
                    int i14 = i2;
                    int i15 = i4;
                    if (i4 >= 4) {
                        iArr6 = iArr;
                        if (i >= iArr.length) {
                            iArr6 = AbstractC23390b.m7175e3(iArr, iArr.length);
                            this.f64917S = iArr6;
                        }
                        iArr6[i] = i2;
                        i13 = i + 1;
                        i14 = 0;
                        i15 = 0;
                    }
                    if (c < 2048) {
                        i6 = (i14 << 8) | (c >> 6) | 192;
                        i5 = i15 + 1;
                        iArr2 = iArr6;
                        i8 = i13;
                    } else {
                        int i16 = (i14 << 8) | (c >> 12) | 224;
                        int i17 = i15 + 1;
                        if (i17 >= 4) {
                            iArr2 = iArr6;
                            if (i13 >= iArr6.length) {
                                iArr2 = AbstractC23390b.m7175e3(iArr6, iArr6.length);
                                this.f64917S = iArr2;
                            }
                            iArr2[i13] = i16;
                            i13++;
                            i17 = 0;
                            i16 = 0;
                        } else {
                            iArr2 = iArr6;
                        }
                        int i18 = (i16 << 8) | ((c >> 6) & 63) | 128;
                        i5 = i17 + 1;
                        i6 = i18;
                        i8 = i13;
                    }
                    i10 = (c & 63) | 128;
                    i11 = i5;
                    i9 = i6;
                    iArr4 = iArr2;
                }
            }
            if (i11 < 4) {
                i4 = i11 + 1;
                i2 = (i9 << 8) | i10;
                iArr = iArr4;
                i = i8;
            } else {
                iArr = iArr4;
                if (i8 >= iArr4.length) {
                    iArr = AbstractC23390b.m7175e3(iArr4, iArr4.length);
                    this.f64917S = iArr;
                }
                iArr[i8] = i9;
                i2 = i10;
                i = i8 + 1;
                i4 = 1;
            }
            if (this.f64744o >= this.f64745p && !m6939w3()) {
                m7160F2(" in field name", EnumC23381m.FIELD_NAME);
                throw null;
            }
            byte[] bArr = this.f64924Z;
            int i19 = this.f64744o;
            this.f64744o = i19 + 1;
            i7 = bArr[i19] & 255;
        }
    }

    @Override // p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: r2 */
    public int mo5802r2(C23344a c23344a, OutputStream outputStream) throws IOException {
        if (!this.f64918T || this.f64765c != EnumC23381m.VALUE_STRING) {
            byte[] mo5826I = mo5826I(c23344a);
            outputStream.write(mo5826I);
            return mo5826I.length;
        }
        byte[] m7131d = this.f64742m.m7131d();
        try {
            return m6992M3(c23344a, outputStream, m7131d);
        } finally {
            this.f64742m.m7130e(m7131d);
        }
    }

    /* renamed from: r3 */
    public String m6948r3() throws IOException {
        String str;
        int i = this.f64744o;
        int i2 = i;
        if (i >= this.f64745p) {
            m6938x3();
            i2 = this.f64744o;
        }
        char[] m7231i = this.f64754y.m7231i();
        int[] iArr = f64913p0;
        int min = Math.min(this.f64745p, m7231i.length + i2);
        byte[] bArr = this.f64924Z;
        int i3 = 0;
        while (true) {
            if (i2 >= min) {
                break;
            }
            int i4 = bArr[i2] & 255;
            if (iArr[i4] == 0) {
                i2++;
                m7231i[i3] = (char) i4;
                i3++;
            } else if (i4 == 34) {
                this.f64744o = i2 + 1;
                C23362n c23362n = this.f64754y;
                c23362n.f64599i = i3;
                if (c23362n.f64597g > 0) {
                    str = c23362n.m7232h();
                } else {
                    str = i3 == 0 ? "" : new String(c23362n.f64598h, 0, i3);
                    c23362n.f64600j = str;
                }
                return str;
            }
        }
        this.f64744o = i2;
        m6943t3(m7231i, i3);
        return this.f64754y.m7232h();
    }

    /* renamed from: r4 */
    public final String m6947r4(int i, int i2, int i3) throws IOException {
        return m6949q4(this.f64917S, 0, i, i2, i3);
    }

    @Override // p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23391c, p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: s1 */
    public int mo6946s1() throws IOException {
        EnumC23381m enumC23381m = this.f64765c;
        if (enumC23381m == EnumC23381m.VALUE_NUMBER_INT || enumC23381m == EnumC23381m.VALUE_NUMBER_FLOAT) {
            int i = this.f64734D;
            if ((i & 1) == 0) {
                if (i == 0) {
                    return m7181X2();
                }
                if ((i & 1) == 0) {
                    m7176d3();
                }
            }
            return this.f64735E;
        }
        return super.mo6936z1(0);
    }

    /* renamed from: s3 */
    public void m6945s3() throws IOException {
        int i = this.f64744o;
        int i2 = i;
        if (i >= this.f64745p) {
            m6938x3();
            i2 = this.f64744o;
        }
        int i3 = 0;
        char[] m7231i = this.f64754y.m7231i();
        int[] iArr = f64913p0;
        int min = Math.min(this.f64745p, m7231i.length + i2);
        byte[] bArr = this.f64924Z;
        while (true) {
            if (i2 >= min) {
                break;
            }
            int i4 = bArr[i2] & 255;
            if (iArr[i4] == 0) {
                i2++;
                m7231i[i3] = (char) i4;
                i3++;
            } else if (i4 == 34) {
                this.f64744o = i2 + 1;
                this.f64754y.f64599i = i3;
                return;
            }
        }
        this.f64744o = i2;
        m6943t3(m7231i, i3);
    }

    /* renamed from: s4 */
    public final String m6944s4(int i, int i2, int i3, int i4) throws IOException {
        int[] iArr = this.f64917S;
        iArr[0] = i;
        return m6949q4(iArr, 1, i2, i3, i4);
    }

    /* renamed from: t3 */
    public final void m6943t3(char[] cArr, int i) throws IOException {
        char c;
        int[] iArr = f64913p0;
        byte[] bArr = this.f64924Z;
        while (true) {
            int i2 = this.f64744o;
            int i3 = i2;
            if (i2 >= this.f64745p) {
                m6938x3();
                i3 = this.f64744o;
            }
            int i4 = i;
            if (i >= cArr.length) {
                cArr = this.f64754y.m7228l();
                i4 = 0;
            }
            int min = Math.min(this.f64745p, (cArr.length - i4) + i3);
            while (true) {
                if (i3 >= min) {
                    this.f64744o = i3;
                    i = i4;
                    break;
                }
                int i5 = i3 + 1;
                int i6 = bArr[i3] & 255;
                if (iArr[i6] != 0) {
                    this.f64744o = i5;
                    if (i6 == 34) {
                        this.f64754y.f64599i = i4;
                        return;
                    }
                    int i7 = iArr[i6];
                    if (i7 == 1) {
                        c = mo6985S2();
                    } else if (i7 == 2) {
                        c = m6956n3(i6);
                    } else if (i7 == 3) {
                        c = this.f64745p - i5 >= 2 ? m6952p3(i6) : m6954o3(i6);
                    } else if (i7 == 4) {
                        int m6950q3 = m6950q3(i6);
                        int i8 = i4 + 1;
                        cArr[i4] = (char) (55296 | (m6950q3 >> 10));
                        if (i8 >= cArr.length) {
                            cArr = this.f64754y.m7228l();
                            i4 = 0;
                        } else {
                            i4 = i8;
                        }
                        c = (m6950q3 & 1023) | 56320;
                    } else if (i6 >= 32) {
                        m6991N3(i6);
                        throw null;
                    } else {
                        m7178b3(i6, "string value");
                        c = i6;
                    }
                    if (i4 >= cArr.length) {
                        cArr = this.f64754y.m7228l();
                        i4 = 0;
                    }
                    cArr[i4] = (char) c;
                    i = i4 + 1;
                } else {
                    cArr[i4] = (char) i6;
                    i3 = i5;
                    i4++;
                }
            }
        }
    }

    /* renamed from: t4 */
    public final String m6942t4(int i, int i2, int i3, int i4, int i5) throws IOException {
        int[] iArr = this.f64917S;
        iArr[0] = i;
        iArr[1] = i2;
        return m6949q4(iArr, 2, i3, i4, i5);
    }

    /* renamed from: u3 */
    public EnumC23381m m6941u3(int i, boolean z) throws IOException {
        String str;
        byte b = i;
        if (i == 73) {
            if (this.f64744o >= this.f64745p && !m6939w3()) {
                m7159G2(EnumC23381m.VALUE_NUMBER_FLOAT);
                throw null;
            }
            byte[] bArr = this.f64924Z;
            int i2 = this.f64744o;
            this.f64744o = i2 + 1;
            byte b2 = bArr[i2];
            if (b2 == 78) {
                str = z ? "-INF" : "+INF";
            } else {
                b = b2;
                if (b2 == 110) {
                    str = z ? "-Infinity" : "+Infinity";
                }
            }
            m7006A3(str, 3);
            if ((this.f64661a & f64907j0) != 0) {
                return m7173g3(str, (z ? -4503599627370496 : 9218868437227405312) == 1 ? 1.0d : 0.0d);
            }
            m7164C2("Non-standard token '%s': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow", str);
            throw null;
        }
        m7151N2(b, "expected digit (0-9) to follow minus sign, for valid numeric value");
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0027, code lost:
        if (r7 != 44) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0070, code lost:
        if (r6.f64752w.m7197d() == false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007d, code lost:
        if (r6.f64752w.m7195f() != false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0088, code lost:
        if ((r6.f64661a & p193e.p1545k.p1546a.p1548b.p1553x.C23414i.f64908k0) == 0) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x008b, code lost:
        r6.f64744o--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0098, code lost:
        return p193e.p1545k.p1546a.p1548b.EnumC23381m.VALUE_NULL;
     */
    /* renamed from: v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1545k.p1546a.p1548b.EnumC23381m m6940v3(int r7) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 715
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1553x.C23414i.m6940v3(int):e.k.a.b.m");
    }

    /* renamed from: w3 */
    public final boolean m6939w3() throws IOException {
        byte[] bArr;
        int length;
        InputStream inputStream = this.f64923Y;
        if (inputStream == null || (length = (bArr = this.f64924Z).length) == 0) {
            return false;
        }
        int read = inputStream.read(bArr, 0, length);
        if (read <= 0) {
            mo6989P2();
            if (read == 0) {
                throw new IOException(C22128a.m8697J2(C22128a.m8728C("InputStream.read() returned 0 characters when trying to read "), this.f64924Z.length, " bytes"));
            }
            return false;
        }
        int i = this.f64745p;
        this.f64746q += i;
        this.f64748s -= i;
        this.f64920V -= i;
        this.f64744o = 0;
        this.f64745p = read;
        return true;
    }

    /* renamed from: x3 */
    public void m6938x3() throws IOException {
        if (m6939w3()) {
            return;
        }
        m7161E2();
        throw null;
    }

    /* renamed from: y3 */
    public final void m6937y3() throws IOException {
        int i;
        int i2 = this.f64744o;
        if (i2 + 4 < this.f64745p) {
            byte[] bArr = this.f64924Z;
            int i3 = i2 + 1;
            if (bArr[i2] == 97) {
                int i4 = i3 + 1;
                if (bArr[i3] == 108) {
                    int i5 = i4 + 1;
                    if (bArr[i4] == 115) {
                        int i6 = i5 + 1;
                        if (bArr[i5] == 101 && ((i = bArr[i6] & 255) < 48 || i == 93 || i == 125)) {
                            this.f64744o = i6;
                            return;
                        }
                    }
                }
            }
        }
        m7005B3("false", 1);
    }

    @Override // p193e.p1545k.p1546a.p1548b.p1550u.AbstractC23391c, p193e.p1545k.p1546a.p1548b.AbstractC23376j
    /* renamed from: z1 */
    public int mo6936z1(int i) throws IOException {
        EnumC23381m enumC23381m = this.f64765c;
        if (enumC23381m == EnumC23381m.VALUE_NUMBER_INT || enumC23381m == EnumC23381m.VALUE_NUMBER_FLOAT) {
            int i2 = this.f64734D;
            if ((i2 & 1) == 0) {
                if (i2 == 0) {
                    return m7181X2();
                }
                if ((i2 & 1) == 0) {
                    m7176d3();
                }
            }
            return this.f64735E;
        }
        return super.mo6936z1(i);
    }

    /* renamed from: z3 */
    public final void m6935z3() throws IOException {
        int i;
        int i2 = this.f64744o;
        if (i2 + 3 < this.f64745p) {
            byte[] bArr = this.f64924Z;
            int i3 = i2 + 1;
            if (bArr[i2] == 117) {
                int i4 = i3 + 1;
                if (bArr[i3] == 108) {
                    int i5 = i4 + 1;
                    if (bArr[i4] == 108 && ((i = bArr[i5] & 255) < 48 || i == 93 || i == 125)) {
                        this.f64744o = i5;
                        return;
                    }
                }
            }
        }
        m7005B3(AnalyticsConstants.NULL, 1);
    }
}
