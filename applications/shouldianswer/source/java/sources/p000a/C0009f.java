package p000a;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
/* renamed from: a.f */
/* loaded from: classes-dex2jar.jar:a/f.class */
public class C0009f implements Serializable, Comparable<C0009f> {

    /* renamed from: a */
    static final char[] f16a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: b */
    public static final C0009f f17b = m8112a(new byte[0]);

    /* renamed from: c */
    final byte[] f18c;

    /* renamed from: d */
    transient int f19d;

    /* renamed from: e */
    transient String f20e;

    public C0009f(byte[] bArr) {
        this.f18c = bArr;
    }

    /* renamed from: a */
    private static int m8116a(char c) {
        if (c < '0' || c > '9') {
            char c2 = 'a';
            if (c < 'a' || c > 'f') {
                c2 = 'A';
                if (c < 'A' || c > 'F') {
                    throw new IllegalArgumentException("Unexpected hex digit: " + c);
                }
            }
            return (c - c2) + 10;
        }
        return c - '0';
    }

    /* renamed from: a */
    static int m8113a(String str, int i) {
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
    public static C0009f m8114a(String str) {
        if (str != null) {
            C0009f c0009f = new C0009f(str.getBytes(C0029u.f61a));
            c0009f.f20e = str;
            return c0009f;
        }
        throw new IllegalArgumentException("s == null");
    }

    /* renamed from: a */
    public static C0009f m8112a(byte... bArr) {
        if (bArr != null) {
            return new C0009f((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    /* renamed from: b */
    public static C0009f m8110b(String str) {
        if (str != null) {
            if (str.length() % 2 != 0) {
                throw new IllegalArgumentException("Unexpected hex string: " + str);
            }
            byte[] bArr = new byte[str.length() / 2];
            for (int i = 0; i < bArr.length; i++) {
                int i2 = i * 2;
                bArr[i] = (byte) ((m8116a(str.charAt(i2)) << 4) + m8116a(str.charAt(i2 + 1)));
            }
            return m8112a(bArr);
        }
        throw new IllegalArgumentException("hex == null");
    }

    /* renamed from: c */
    private C0009f m8109c(String str) {
        try {
            return m8112a(MessageDigest.getInstance(str).digest(this.f18c));
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: a */
    public byte mo8049a(int i) {
        return this.f18c[i];
    }

    /* renamed from: a */
    public C0009f mo8048a(int i, int i2) {
        if (i >= 0) {
            byte[] bArr = this.f18c;
            if (i2 > bArr.length) {
                throw new IllegalArgumentException("endIndex > length(" + this.f18c.length + ")");
            }
            int i3 = i2 - i;
            if (i3 < 0) {
                throw new IllegalArgumentException("endIndex < beginIndex");
            }
            if (i == 0 && i2 == bArr.length) {
                return this;
            }
            byte[] bArr2 = new byte[i3];
            System.arraycopy(this.f18c, i, bArr2, 0, i3);
            return new C0009f(bArr2);
        }
        throw new IllegalArgumentException("beginIndex < 0");
    }

    /* renamed from: a */
    public String mo8050a() {
        String str = this.f20e;
        if (str == null) {
            str = new String(this.f18c, C0029u.f61a);
            this.f20e = str;
        }
        return str;
    }

    /* renamed from: a */
    public void mo8045a(C0005c c0005c) {
        byte[] bArr = this.f18c;
        c0005c.mo8087c(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public boolean mo8047a(int i, C0009f c0009f, int i2, int i3) {
        return c0009f.mo8046a(i2, this.f18c, i, i3);
    }

    /* renamed from: a */
    public boolean mo8046a(int i, byte[] bArr, int i2, int i3) {
        boolean z;
        if (i >= 0) {
            byte[] bArr2 = this.f18c;
            if (i <= bArr2.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && C0029u.m8023a(bArr2, i, bArr, i2, i3)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: a */
    public final boolean m8115a(C0009f c0009f) {
        return mo8047a(0, c0009f, 0, c0009f.mo8038g());
    }

    /* renamed from: b */
    public int compareTo(C0009f c0009f) {
        int mo8038g = mo8038g();
        int mo8038g2 = c0009f.mo8038g();
        int min = Math.min(mo8038g, mo8038g2);
        int i = 0;
        while (true) {
            int i2 = -1;
            if (i >= min) {
                if (mo8038g == mo8038g2) {
                    return 0;
                }
                if (mo8038g >= mo8038g2) {
                    i2 = 1;
                }
                return i2;
            }
            int mo8049a = mo8049a(i) & 255;
            int mo8049a2 = c0009f.mo8049a(i) & 255;
            if (mo8049a != mo8049a2) {
                if (mo8049a >= mo8049a2) {
                    i2 = 1;
                }
                return i2;
            }
            i++;
        }
    }

    /* renamed from: b */
    public String mo8044b() {
        return C0004b.m8150a(this.f18c);
    }

    /* renamed from: c */
    public C0009f mo8042c() {
        return m8109c("SHA-1");
    }

    /* renamed from: d */
    public C0009f mo8041d() {
        return m8109c("SHA-256");
    }

    /* renamed from: e */
    public String mo8040e() {
        byte[] bArr = this.f18c;
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b : bArr) {
            int i2 = i + 1;
            char[] cArr2 = f16a;
            cArr[i] = cArr2[(b >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0030, code lost:
        if (r0.mo8046a(0, r0, 0, r0.length) != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            r0 = 1
            r8 = r0
            r0 = r7
            r1 = r6
            if (r0 != r1) goto L9
            r0 = 1
            return r0
        L9:
            r0 = r7
            boolean r0 = r0 instanceof p000a.C0009f
            if (r0 == 0) goto L36
            r0 = r7
            a.f r0 = (p000a.C0009f) r0
            r9 = r0
            r0 = r9
            int r0 = r0.mo8038g()
            r10 = r0
            r0 = r6
            byte[] r0 = r0.f18c
            r7 = r0
            r0 = r10
            r1 = r7
            int r1 = r1.length
            if (r0 != r1) goto L36
            r0 = r9
            r1 = 0
            r2 = r7
            r3 = 0
            r4 = r7
            int r4 = r4.length
            boolean r0 = r0.mo8046a(r1, r2, r3, r4)
            if (r0 == 0) goto L36
            goto L38
        L36:
            r0 = 0
            r8 = r0
        L38:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p000a.C0009f.equals(java.lang.Object):boolean");
    }

    /* renamed from: f */
    public C0009f mo8039f() {
        int i = 0;
        while (true) {
            byte[] bArr = this.f18c;
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
                    return new C0009f(bArr2);
                }
                i++;
            } else {
                return this;
            }
        }
    }

    /* renamed from: g */
    public int mo8038g() {
        return this.f18c.length;
    }

    /* renamed from: h */
    public byte[] mo8037h() {
        return (byte[]) this.f18c.clone();
    }

    public int hashCode() {
        int i = this.f19d;
        if (i == 0) {
            i = Arrays.hashCode(this.f18c);
            this.f19d = i;
        }
        return i;
    }

    public String toString() {
        String str;
        String str2;
        if (this.f18c.length == 0) {
            return "[size=0]";
        }
        String mo8050a = mo8050a();
        int m8113a = m8113a(mo8050a, 64);
        if (m8113a == -1) {
            if (this.f18c.length <= 64) {
                str2 = "[hex=" + mo8040e() + "]";
            } else {
                str2 = "[size=" + this.f18c.length + " hex=" + mo8048a(0, 64).mo8040e() + "…]";
            }
            return str2;
        }
        String replace = mo8050a.substring(0, m8113a).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
        if (m8113a < mo8050a.length()) {
            str = "[size=" + this.f18c.length + " text=" + replace + "…]";
        } else {
            str = "[text=" + replace + "]";
        }
        return str;
    }
}
