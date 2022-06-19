package p193e.p1545k.p1546a.p1548b;

import java.io.Serializable;
import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.p1549a0.C23348c;
/* renamed from: e.k.a.b.a */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/a.class */
public final class C23344a implements Serializable {

    /* renamed from: a */
    public final transient int[] f64549a;

    /* renamed from: b */
    public final transient char[] f64550b;

    /* renamed from: c */
    public final transient byte[] f64551c;

    /* renamed from: d */
    public final String f64552d;

    /* renamed from: e */
    public final char f64553e;

    /* renamed from: f */
    public final int f64554f;

    /* renamed from: g */
    public final boolean f64555g;

    /* renamed from: h */
    public final EnumC23345a f64556h;

    /* renamed from: e.k.a.b.a$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/b/a$a.class */
    public enum EnumC23345a {
        PADDING_FORBIDDEN,
        PADDING_REQUIRED,
        PADDING_ALLOWED
    }

    public C23344a(C23344a c23344a, String str, boolean z, char c, EnumC23345a enumC23345a, int i) {
        int[] iArr = new int[128];
        this.f64549a = iArr;
        char[] cArr = new char[64];
        this.f64550b = cArr;
        byte[] bArr = new byte[64];
        this.f64551c = bArr;
        this.f64552d = str;
        byte[] bArr2 = c23344a.f64551c;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        char[] cArr2 = c23344a.f64550b;
        System.arraycopy(cArr2, 0, cArr, 0, cArr2.length);
        int[] iArr2 = c23344a.f64549a;
        System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
        this.f64555g = z;
        this.f64553e = c;
        this.f64554f = i;
        this.f64556h = enumC23345a;
    }

    public C23344a(String str, String str2, boolean z, char c, int i) {
        int[] iArr = new int[128];
        this.f64549a = iArr;
        char[] cArr = new char[64];
        this.f64550b = cArr;
        this.f64551c = new byte[64];
        this.f64552d = str;
        this.f64555g = z;
        this.f64553e = c;
        this.f64554f = i;
        int length = str2.length();
        if (length == 64) {
            str2.getChars(0, length, cArr, 0);
            Arrays.fill(iArr, -1);
            for (int i2 = 0; i2 < length; i2++) {
                char c2 = this.f64550b[i2];
                this.f64551c[i2] = (byte) c2;
                this.f64549a[c2] = i2;
            }
            if (z) {
                this.f64549a[c] = -2;
            }
            this.f64556h = z ? EnumC23345a.PADDING_REQUIRED : EnumC23345a.PADDING_FORBIDDEN;
            return;
        }
        throw new IllegalArgumentException(C22128a.m8599l2("Base64Alphabet length must be exactly 64 (was ", length, ")"));
    }

    /* renamed from: a */
    public void m7268a() throws IllegalArgumentException {
        throw new IllegalArgumentException(m7257l());
    }

    /* renamed from: b */
    public void m7267b() throws IllegalArgumentException {
        throw new IllegalArgumentException(String.format("Unexpected end of base64-encoded String: base64 variant '%s' expects no padding at the end while decoding. This Base64Variant might have been incorrectly configured", this.f64552d));
    }

    /* renamed from: c */
    public void m7266c(char c, int i, String str) throws IllegalArgumentException {
        String str2;
        if (c <= ' ') {
            StringBuilder m8728C = C22128a.m8728C("Illegal white space character (code 0x");
            m8728C.append(Integer.toHexString(c));
            m8728C.append(") as character #");
            m8728C.append(i + 1);
            m8728C.append(" of 4-char base64 unit: can only used between units");
            str2 = m8728C.toString();
        } else {
            if (c == this.f64553e) {
                StringBuilder m8728C2 = C22128a.m8728C("Unexpected padding character ('");
                m8728C2.append(this.f64553e);
                m8728C2.append("') as character #");
                m8728C2.append(i + 1);
                m8728C2.append(" of 4-char base64 unit: padding only legal as 3rd or 4th character");
                str2 = m8728C2.toString();
            } else if (!Character.isDefined(c) || Character.isISOControl(c)) {
                StringBuilder m8728C3 = C22128a.m8728C("Illegal character (code 0x");
                m8728C3.append(Integer.toHexString(c));
                m8728C3.append(") in base64 content");
                str2 = m8728C3.toString();
            } else {
                str2 = "Illegal character '" + c + "' (code 0x" + Integer.toHexString(c) + ") in base64 content";
            }
        }
        String str3 = str2;
        if (str != null) {
            str3 = C22128a.m8725C2(str2, ": ", str);
        }
        throw new IllegalArgumentException(str3);
    }

    /* renamed from: d */
    public void m7265d(String str, C23348c c23348c) throws IllegalArgumentException {
        EnumC23345a enumC23345a = EnumC23345a.PADDING_FORBIDDEN;
        EnumC23345a enumC23345a2 = EnumC23345a.PADDING_REQUIRED;
        int length = str.length();
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            char charAt = str.charAt(i);
            i = i2;
            if (charAt > ' ') {
                int m7264e = m7264e(charAt);
                if (m7264e < 0) {
                    m7266c(charAt, 0, null);
                    throw null;
                } else if (i2 >= length) {
                    m7268a();
                    throw null;
                } else {
                    int i3 = i2 + 1;
                    char charAt2 = str.charAt(i2);
                    int m7264e2 = m7264e(charAt2);
                    boolean z = true;
                    if (m7264e2 < 0) {
                        m7266c(charAt2, 1, null);
                        throw null;
                    }
                    int i4 = (m7264e << 6) | m7264e2;
                    if (i3 >= length) {
                        boolean z2 = false;
                        if (this.f64556h == enumC23345a2) {
                            z2 = true;
                        }
                        if (!z2) {
                            c23348c.m7251d(i4 >> 4);
                            return;
                        } else {
                            m7268a();
                            throw null;
                        }
                    }
                    int i5 = i3 + 1;
                    char charAt3 = str.charAt(i3);
                    int m7264e3 = m7264e(charAt3);
                    if (m7264e3 >= 0) {
                        int i6 = (i4 << 6) | m7264e3;
                        if (i5 >= length) {
                            boolean z3 = false;
                            if (this.f64556h == enumC23345a2) {
                                z3 = true;
                            }
                            if (!z3) {
                                c23348c.m7249k(i6 >> 2);
                                return;
                            } else {
                                m7268a();
                                throw null;
                            }
                        }
                        int i7 = i5 + 1;
                        char charAt4 = str.charAt(i5);
                        int m7264e4 = m7264e(charAt4);
                        if (m7264e4 >= 0) {
                            c23348c.m7250j((i6 << 6) | m7264e4);
                            i = i7;
                        } else if (m7264e4 != -2) {
                            m7266c(charAt4, 3, null);
                            throw null;
                        } else {
                            if (this.f64556h == enumC23345a) {
                                z = false;
                            }
                            if (!z) {
                                m7267b();
                                throw null;
                            } else {
                                c23348c.m7249k(i6 >> 2);
                                i = i7;
                            }
                        }
                    } else if (m7264e3 != -2) {
                        m7266c(charAt3, 2, null);
                        throw null;
                    } else {
                        if (!(this.f64556h != enumC23345a)) {
                            m7267b();
                            throw null;
                        } else if (i5 >= length) {
                            m7268a();
                            throw null;
                        } else {
                            i = i5 + 1;
                            char charAt5 = str.charAt(i5);
                            if (!m7256m(charAt5)) {
                                StringBuilder m8728C = C22128a.m8728C("expected padding character '");
                                m8728C.append(this.f64553e);
                                m8728C.append("'");
                                m7266c(charAt5, 3, m8728C.toString());
                                throw null;
                            }
                            c23348c.m7251d(i4 >> 4);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: e */
    public int m7264e(char c) {
        return c <= 127 ? this.f64549a[c] : -1;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != C23344a.class) {
            return false;
        }
        C23344a c23344a = (C23344a) obj;
        if (c23344a.f64553e != this.f64553e || c23344a.f64554f != this.f64554f || c23344a.f64555g != this.f64555g || c23344a.f64556h != this.f64556h || !this.f64552d.equals(c23344a.f64552d)) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public int m7263f(int i) {
        return i <= 127 ? this.f64549a[i] : -1;
    }

    /* renamed from: g */
    public String m7262g(byte[] bArr, boolean z) {
        int i;
        int length = bArr.length;
        StringBuilder sb = new StringBuilder((length >> 2) + length + (length >> 3));
        if (z) {
            sb.append('\"');
        }
        int i2 = this.f64554f >> 2;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i > length - 3) {
                break;
            }
            int i4 = i + 1;
            int i5 = i4 + 1;
            int i6 = (((bArr[i] << 8) | (bArr[i4] & 255)) << 8) | (bArr[i5] & 255);
            sb.append(this.f64550b[(i6 >> 18) & 63]);
            sb.append(this.f64550b[(i6 >> 12) & 63]);
            sb.append(this.f64550b[(i6 >> 6) & 63]);
            sb.append(this.f64550b[i6 & 63]);
            int i7 = i2 - 1;
            int i8 = i7;
            if (i7 <= 0) {
                sb.append('\\');
                sb.append('n');
                i8 = this.f64554f >> 2;
            }
            i2 = i8;
            i3 = i5 + 1;
        }
        int i9 = length - i;
        if (i9 > 0) {
            int i10 = bArr[i] << 16;
            int i11 = i10;
            if (i9 == 2) {
                i11 = i10 | ((bArr[i + 1] & 255) << 8);
            }
            sb.append(this.f64550b[(i11 >> 18) & 63]);
            sb.append(this.f64550b[(i11 >> 12) & 63]);
            if (this.f64555g) {
                sb.append(i9 == 2 ? this.f64550b[(i11 >> 6) & 63] : this.f64553e);
                sb.append(this.f64553e);
            } else if (i9 == 2) {
                sb.append(this.f64550b[(i11 >> 6) & 63]);
            }
        }
        if (z) {
            sb.append('\"');
        }
        return sb.toString();
    }

    /* renamed from: h */
    public int m7261h(int i, byte[] bArr, int i2) {
        int i3 = i2 + 1;
        byte[] bArr2 = this.f64551c;
        bArr[i2] = bArr2[(i >> 18) & 63];
        int i4 = i3 + 1;
        bArr[i3] = bArr2[(i >> 12) & 63];
        int i5 = i4 + 1;
        bArr[i4] = bArr2[(i >> 6) & 63];
        bArr[i5] = bArr2[i & 63];
        return i5 + 1;
    }

    public int hashCode() {
        return this.f64552d.hashCode();
    }

    /* renamed from: i */
    public int m7260i(int i, char[] cArr, int i2) {
        int i3 = i2 + 1;
        char[] cArr2 = this.f64550b;
        cArr[i2] = cArr2[(i >> 18) & 63];
        int i4 = i3 + 1;
        cArr[i3] = cArr2[(i >> 12) & 63];
        int i5 = i4 + 1;
        cArr[i4] = cArr2[(i >> 6) & 63];
        cArr[i5] = cArr2[i & 63];
        return i5 + 1;
    }

    /* renamed from: j */
    public int m7259j(int i, int i2, byte[] bArr, int i3) {
        int i4;
        int i5 = i3 + 1;
        byte[] bArr2 = this.f64551c;
        bArr[i3] = bArr2[(i >> 18) & 63];
        int i6 = i5 + 1;
        bArr[i5] = bArr2[(i >> 12) & 63];
        if (this.f64555g) {
            byte b = (byte) this.f64553e;
            int i7 = i6 + 1;
            bArr[i6] = i2 == 2 ? bArr2[(i >> 6) & 63] : b;
            bArr[i7] = b;
            i4 = i7 + 1;
        } else {
            i4 = i6;
            if (i2 == 2) {
                bArr[i6] = bArr2[(i >> 6) & 63];
                i4 = i6 + 1;
            }
        }
        return i4;
    }

    /* renamed from: k */
    public int m7258k(int i, int i2, char[] cArr, int i3) {
        int i4;
        int i5 = i3 + 1;
        char[] cArr2 = this.f64550b;
        cArr[i3] = cArr2[(i >> 18) & 63];
        int i6 = i5 + 1;
        cArr[i5] = cArr2[(i >> 12) & 63];
        if (this.f64555g) {
            int i7 = i6 + 1;
            cArr[i6] = i2 == 2 ? cArr2[(i >> 6) & 63] : this.f64553e;
            i4 = i7 + 1;
            cArr[i7] = this.f64553e;
        } else {
            i4 = i6;
            if (i2 == 2) {
                cArr[i6] = cArr2[(i >> 6) & 63];
                i4 = i6 + 1;
            }
        }
        return i4;
    }

    /* renamed from: l */
    public String m7257l() {
        return String.format("Unexpected end of base64-encoded String: base64 variant '%s' expects padding (one or more '%c' characters) at the end. This Base64Variant might have been incorrectly configured", this.f64552d, Character.valueOf(this.f64553e));
    }

    /* renamed from: m */
    public boolean m7256m(char c) {
        return c == this.f64553e;
    }

    /* renamed from: n */
    public boolean m7255n(int i) {
        return i == this.f64553e;
    }

    public Object readResolve() {
        String str = this.f64552d;
        C23344a c23344a = C23366b.f64605a;
        if (!c23344a.f64552d.equals(str)) {
            c23344a = C23366b.f64606b;
            if (!c23344a.f64552d.equals(str)) {
                c23344a = C23366b.f64607c;
                if (!c23344a.f64552d.equals(str)) {
                    c23344a = C23366b.f64608d;
                    if (!c23344a.f64552d.equals(str)) {
                        throw new IllegalArgumentException(C22128a.m8543z2("No Base64Variant with name ", str == null ? "<null>" : C22128a.m8725C2("'", str, "'")));
                    }
                }
            }
        }
        boolean z = this.f64555g;
        boolean z2 = c23344a.f64555g;
        return (z == z2 && this.f64553e == c23344a.f64553e && this.f64556h == c23344a.f64556h && this.f64554f == c23344a.f64554f && z == z2) ? c23344a : new C23344a(c23344a, this.f64552d, z, this.f64553e, this.f64556h, this.f64554f);
    }

    public String toString() {
        return this.f64552d;
    }
}
