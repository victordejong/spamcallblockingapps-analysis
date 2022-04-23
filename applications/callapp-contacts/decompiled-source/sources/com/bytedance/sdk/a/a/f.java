package com.bytedance.sdk.a.a;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/f.class */
public class f implements Serializable, Comparable<f> {

    /* renamed from: a  reason: collision with root package name */
    static final char[] f7787a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: b  reason: collision with root package name */
    public static final f f7788b = a(new byte[0]);

    /* renamed from: c  reason: collision with root package name */
    final byte[] f7789c;

    /* renamed from: d  reason: collision with root package name */
    transient int f7790d;
    transient String e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(byte[] bArr) {
        this.f7789c = bArr;
    }

    private static int a(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        char c3 = 'a';
        if (c2 < 'a' || c2 > 'f') {
            c3 = 'A';
            if (c2 < 'A' || c2 > 'F') {
                throw new IllegalArgumentException("Unexpected hex digit: ".concat(String.valueOf(c2)));
            }
        }
        return (c2 - c3) + 10;
    }

    static int a(String str, int i) {
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

    public static f a(String str) {
        if (str != null) {
            f fVar = new f(str.getBytes(u.f7825a));
            fVar.e = str;
            return fVar;
        }
        throw new IllegalArgumentException("s == null");
    }

    public static f a(byte... bArr) {
        if (bArr != null) {
            return new f((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    public static f b(String str) {
        if (str == null) {
            throw new IllegalArgumentException("hex == null");
        } else if (str.length() % 2 == 0) {
            int length = str.length() / 2;
            byte[] bArr = new byte[length];
            for (int i = 0; i < length; i++) {
                int i2 = i * 2;
                bArr[i] = (byte) ((a(str.charAt(i2)) << 4) + a(str.charAt(i2 + 1)));
            }
            return a(bArr);
        } else {
            throw new IllegalArgumentException("Unexpected hex string: ".concat(String.valueOf(str)));
        }
    }

    private f c(String str) {
        try {
            return a(MessageDigest.getInstance(str).digest(this.f7789c));
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    public byte a(int i) {
        return this.f7789c[i];
    }

    public f a(int i, int i2) {
        if (i >= 0) {
            byte[] bArr = this.f7789c;
            if (i2 <= bArr.length) {
                int i3 = i2 - i;
                if (i3 < 0) {
                    throw new IllegalArgumentException("endIndex < beginIndex");
                } else if (i == 0 && i2 == bArr.length) {
                    return this;
                } else {
                    byte[] bArr2 = new byte[i3];
                    System.arraycopy(bArr, i, bArr2, 0, i3);
                    return new f(bArr2);
                }
            } else {
                throw new IllegalArgumentException("endIndex > length(" + this.f7789c.length + ")");
            }
        } else {
            throw new IllegalArgumentException("beginIndex < 0");
        }
    }

    public String a() {
        String str = this.e;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.f7789c, u.f7825a);
        this.e = str2;
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(c cVar) {
        byte[] bArr = this.f7789c;
        cVar.c(bArr, 0, bArr.length);
    }

    public boolean a(int i, f fVar, int i2, int i3) {
        return fVar.a(i2, this.f7789c, i, i3);
    }

    public boolean a(int i, byte[] bArr, int i2, int i3) {
        if (i < 0) {
            return false;
        }
        byte[] bArr2 = this.f7789c;
        return i <= bArr2.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && u.a(bArr2, i, bArr, i2, i3);
    }

    public final boolean a(f fVar) {
        return a(0, fVar, 0, fVar.g());
    }

    /* renamed from: b */
    public int compareTo(f fVar) {
        int g = g();
        int g2 = fVar.g();
        int min = Math.min(g, g2);
        for (int i = 0; i < min; i++) {
            int a2 = a(i) & 255;
            int a3 = fVar.a(i) & 255;
            if (a2 != a3) {
                return a2 < a3 ? -1 : 1;
            }
        }
        if (g == g2) {
            return 0;
        }
        return g < g2 ? -1 : 1;
    }

    public String b() {
        return b.a(this.f7789c);
    }

    public f c() {
        return c("SHA-1");
    }

    public f d() {
        return c("SHA-256");
    }

    public String e() {
        byte[] bArr = this.f7789c;
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b2 : bArr) {
            int i2 = i + 1;
            char[] cArr2 = f7787a;
            cArr[i] = cArr2[(b2 >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = cArr2[b2 & 15];
        }
        return new String(cArr);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        int g = fVar.g();
        byte[] bArr = this.f7789c;
        return g == bArr.length && fVar.a(0, bArr, 0, bArr.length);
    }

    public f f() {
        int i = 0;
        while (true) {
            byte[] bArr = this.f7789c;
            if (i >= bArr.length) {
                return this;
            }
            byte b2 = bArr[i];
            if (b2 < 65 || b2 > 90) {
                i++;
            } else {
                byte[] bArr2 = (byte[]) bArr.clone();
                bArr2[i] = (byte) (b2 + 32);
                for (int i2 = i + 1; i2 < bArr2.length; i2++) {
                    byte b3 = bArr2[i2];
                    if (b3 >= 65 && b3 <= 90) {
                        bArr2[i2] = (byte) (b3 + 32);
                    }
                }
                return new f(bArr2);
            }
        }
    }

    public int g() {
        return this.f7789c.length;
    }

    public byte[] h() {
        return (byte[]) this.f7789c.clone();
    }

    public int hashCode() {
        int i = this.f7790d;
        if (i != 0) {
            return i;
        }
        int hashCode = Arrays.hashCode(this.f7789c);
        this.f7790d = hashCode;
        return hashCode;
    }

    public String toString() {
        if (this.f7789c.length == 0) {
            return "[size=0]";
        }
        String a2 = a();
        int a3 = a(a2, 64);
        if (a3 != -1) {
            String replace = a2.substring(0, a3).replace("\\", "\\\\").replace(StringUtils.LF, "\\n").replace(StringUtils.CR, "\\r");
            if (a3 < a2.length()) {
                return "[size=" + this.f7789c.length + " text=" + replace + "…]";
            }
            return "[text=" + replace + "]";
        } else if (this.f7789c.length <= 64) {
            return "[hex=" + e() + "]";
        } else {
            return "[size=" + this.f7789c.length + " hex=" + a(0, 64).e() + "…]";
        }
    }
}
