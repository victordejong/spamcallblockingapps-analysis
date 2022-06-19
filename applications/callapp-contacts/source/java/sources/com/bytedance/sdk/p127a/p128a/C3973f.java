package com.bytedance.sdk.p127a.p128a;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.bytedance.sdk.a.a.f */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/f.class */
public class C3973f implements Serializable, Comparable<C3973f> {

    /* renamed from: a */
    static final char[] f14421a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: b */
    public static final C3973f f14422b = m37099a(new byte[0]);

    /* renamed from: c */
    final byte[] f14423c;

    /* renamed from: d */
    transient int f14424d;

    /* renamed from: e */
    transient String f14425e;

    public C3973f(byte[] bArr) {
        this.f14423c = bArr;
    }

    /* renamed from: a */
    private static int m37103a(char c) {
        if (c < '0' || c > '9') {
            char c2 = 'a';
            if (c < 'a' || c > 'f') {
                c2 = 'A';
                if (c < 'A' || c > 'F') {
                    throw new IllegalArgumentException("Unexpected hex digit: ".concat(String.valueOf(c)));
                }
            }
            return (c - c2) + 10;
        }
        return c - '0';
    }

    /* renamed from: a */
    static int m37100a(String str, int i) {
        int length = str.length();
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            if (i3 == i) {
                return i2;
            }
            int codePointAt = str.codePointAt(i2);
            if ((Character.isISOControl(codePointAt) && codePointAt != 10 && codePointAt != 13) || codePointAt == 65533) {
                return -1;
            }
            i3++;
            i2 += Character.charCount(codePointAt);
        }
        return str.length();
    }

    /* renamed from: a */
    public static C3973f m37101a(String str) {
        if (str != null) {
            C3973f c3973f = new C3973f(str.getBytes(C3993u.f14466a));
            c3973f.f14425e = str;
            return c3973f;
        }
        throw new IllegalArgumentException("s == null");
    }

    /* renamed from: a */
    public static C3973f m37099a(byte... bArr) {
        if (bArr != null) {
            return new C3973f((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    /* renamed from: b */
    public static C3973f m37097b(String str) {
        if (str != null) {
            if (str.length() % 2 != 0) {
                throw new IllegalArgumentException("Unexpected hex string: ".concat(String.valueOf(str)));
            }
            int length = str.length() / 2;
            byte[] bArr = new byte[length];
            for (int i = 0; i < length; i++) {
                int i2 = i * 2;
                bArr[i] = (byte) ((m37103a(str.charAt(i2)) << 4) + m37103a(str.charAt(i2 + 1)));
            }
            return m37099a(bArr);
        }
        throw new IllegalArgumentException("hex == null");
    }

    /* renamed from: c */
    private C3973f m37096c(String str) {
        try {
            return m37099a(MessageDigest.getInstance(str).digest(this.f14423c));
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: a */
    public byte mo37037a(int i) {
        return this.f14423c[i];
    }

    /* renamed from: a */
    public C3973f mo37036a(int i, int i2) {
        if (i >= 0) {
            byte[] bArr = this.f14423c;
            if (i2 > bArr.length) {
                throw new IllegalArgumentException("endIndex > length(" + this.f14423c.length + ")");
            }
            int i3 = i2 - i;
            if (i3 < 0) {
                throw new IllegalArgumentException("endIndex < beginIndex");
            }
            if (i == 0 && i2 == bArr.length) {
                return this;
            }
            byte[] bArr2 = new byte[i3];
            System.arraycopy(bArr, i, bArr2, 0, i3);
            return new C3973f(bArr2);
        }
        throw new IllegalArgumentException("beginIndex < 0");
    }

    /* renamed from: a */
    public String mo37038a() {
        String str = this.f14425e;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.f14423c, C3993u.f14466a);
        this.f14425e = str2;
        return str2;
    }

    /* renamed from: a */
    public void mo37033a(C3969c c3969c) {
        byte[] bArr = this.f14423c;
        c3969c.mo37075c(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public boolean mo37035a(int i, C3973f c3973f, int i2, int i3) {
        return c3973f.mo37034a(i2, this.f14423c, i, i3);
    }

    /* renamed from: a */
    public boolean mo37034a(int i, byte[] bArr, int i2, int i3) {
        if (i >= 0) {
            byte[] bArr2 = this.f14423c;
            return i <= bArr2.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && C3993u.m37011a(bArr2, i, bArr, i2, i3);
        }
        return false;
    }

    /* renamed from: a */
    public final boolean m37102a(C3973f c3973f) {
        return mo37035a(0, c3973f, 0, c3973f.mo37026g());
    }

    /* renamed from: b */
    public int compareTo(C3973f c3973f) {
        int mo37026g = mo37026g();
        int mo37026g2 = c3973f.mo37026g();
        int min = Math.min(mo37026g, mo37026g2);
        for (int i = 0; i < min; i++) {
            int mo37037a = mo37037a(i) & 255;
            int mo37037a2 = c3973f.mo37037a(i) & 255;
            if (mo37037a != mo37037a2) {
                return mo37037a < mo37037a2 ? -1 : 1;
            }
        }
        if (mo37026g == mo37026g2) {
            return 0;
        }
        return mo37026g < mo37026g2 ? -1 : 1;
    }

    /* renamed from: b */
    public String mo37032b() {
        return C3968b.m37137a(this.f14423c);
    }

    /* renamed from: c */
    public C3973f mo37030c() {
        return m37096c("SHA-1");
    }

    /* renamed from: d */
    public C3973f mo37029d() {
        return m37096c("SHA-256");
    }

    /* renamed from: e */
    public String mo37028e() {
        byte[] bArr = this.f14423c;
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b : bArr) {
            int i2 = i + 1;
            char[] cArr2 = f14421a;
            cArr[i] = cArr2[(b >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C3973f)) {
            return false;
        }
        C3973f c3973f = (C3973f) obj;
        int mo37026g = c3973f.mo37026g();
        byte[] bArr = this.f14423c;
        return mo37026g == bArr.length && c3973f.mo37034a(0, bArr, 0, bArr.length);
    }

    /* renamed from: f */
    public C3973f mo37027f() {
        int i = 0;
        while (true) {
            byte[] bArr = this.f14423c;
            if (i < bArr.length) {
                byte b = bArr[i];
                if (b >= 65 && b <= 90) {
                    byte[] bArr2 = (byte[]) bArr.clone();
                    bArr2[i] = (byte) (b + 32);
                    for (int i2 = i + 1; i2 < bArr2.length; i2++) {
                        byte b2 = bArr2[i2];
                        if (b2 >= 65 && b2 <= 90) {
                            bArr2[i2] = (byte) (b2 + 32);
                        }
                    }
                    return new C3973f(bArr2);
                }
                i++;
            } else {
                return this;
            }
        }
    }

    /* renamed from: g */
    public int mo37026g() {
        return this.f14423c.length;
    }

    /* renamed from: h */
    public byte[] mo37025h() {
        return (byte[]) this.f14423c.clone();
    }

    public int hashCode() {
        int i = this.f14424d;
        if (i != 0) {
            return i;
        }
        int hashCode = Arrays.hashCode(this.f14423c);
        this.f14424d = hashCode;
        return hashCode;
    }

    public String toString() {
        if (this.f14423c.length == 0) {
            return "[size=0]";
        }
        String mo37038a = mo37038a();
        int m37100a = m37100a(mo37038a, 64);
        if (m37100a == -1) {
            if (this.f14423c.length <= 64) {
                return "[hex=" + mo37028e() + "]";
            }
            return "[size=" + this.f14423c.length + " hex=" + mo37036a(0, 64).mo37028e() + "…]";
        }
        String replace = mo37038a.substring(0, m37100a).replace("\\", "\\\\").replace(StringUtils.f67179LF, "\\n").replace(StringUtils.f67178CR, "\\r");
        if (m37100a >= mo37038a.length()) {
            return "[text=" + replace + "]";
        }
        return "[size=" + this.f14423c.length + " text=" + replace + "…]";
    }
}
