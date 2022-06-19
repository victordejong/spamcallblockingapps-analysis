package p000a;

import java.io.EOFException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
/* renamed from: a.f */
/* loaded from: classes-dex2jar.jar:a/f.class */
public class C0008f implements Serializable, Comparable<C0008f> {

    /* renamed from: a */
    static final char[] f15a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: b */
    public static final C0008f f16b = m22536a(new byte[0]);

    /* renamed from: c */
    final byte[] f17c;

    /* renamed from: d */
    transient int f18d;

    /* renamed from: e */
    transient String f19e;

    public C0008f(byte[] bArr) {
        this.f17c = bArr;
    }

    /* renamed from: a */
    private static int m22541a(char c) {
        int i;
        if (c >= '0' && c <= '9') {
            i = c - '0';
        } else if (c >= 'a' && c <= 'f') {
            i = (c - 'a') + 10;
        } else if (c < 'A' || c > 'F') {
            throw new IllegalArgumentException("Unexpected hex digit: " + c);
        } else {
            i = (c - 'A') + 10;
        }
        return i;
    }

    /* renamed from: a */
    static int m22537a(String str, int i) {
        int i2;
        int length = str.length();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i2 = i4;
            if (i2 >= length) {
                i2 = str.length();
                break;
            } else if (i3 == i) {
                break;
            } else {
                int codePointAt = str.codePointAt(i2);
                if ((!Character.isISOControl(codePointAt) || codePointAt == 10 || codePointAt == 13) && codePointAt != 65533) {
                    i3++;
                    i4 = i2 + Character.charCount(codePointAt);
                }
            }
        }
        i2 = -1;
        return i2;
    }

    /* renamed from: a */
    public static C0008f m22539a(InputStream inputStream, int i) {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        if (i < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + i);
        }
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= i) {
                return new C0008f(bArr);
            }
            int read = inputStream.read(bArr, i3, i - i3);
            if (read == -1) {
                throw new EOFException();
            }
            i2 = i3 + read;
        }
    }

    /* renamed from: a */
    public static C0008f m22538a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("s == null");
        }
        C0008f c0008f = new C0008f(str.getBytes(C0027u.f59a));
        c0008f.f19e = str;
        return c0008f;
    }

    /* renamed from: a */
    public static C0008f m22536a(byte... bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("data == null");
        }
        return new C0008f((byte[]) bArr.clone());
    }

    /* renamed from: b */
    public static C0008f m22534b(String str) {
        if (str == null) {
            throw new IllegalArgumentException("hex == null");
        }
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("Unexpected hex string: " + str);
        }
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) ((m22541a(str.charAt(i * 2)) << 4) + m22541a(str.charAt((i * 2) + 1)));
        }
        return m22536a(bArr);
    }

    /* renamed from: c */
    private C0008f m22533c(String str) {
        try {
            return m22536a(MessageDigest.getInstance(str).digest(this.f17c));
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) {
        C0008f m22539a = m22539a(objectInputStream, objectInputStream.readInt());
        try {
            Field declaredField = C0008f.class.getDeclaredField("c");
            declaredField.setAccessible(true);
            declaredField.set(this, m22539a.f17c);
        } catch (IllegalAccessException e) {
            throw new AssertionError();
        } catch (NoSuchFieldException e2) {
            throw new AssertionError();
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.writeInt(this.f17c.length);
        objectOutputStream.write(this.f17c);
    }

    /* renamed from: a */
    public byte mo22473a(int i) {
        return this.f17c[i];
    }

    /* renamed from: a */
    public C0008f mo22472a(int i, int i2) {
        C0008f c0008f;
        if (i < 0) {
            throw new IllegalArgumentException("beginIndex < 0");
        }
        if (i2 > this.f17c.length) {
            throw new IllegalArgumentException("endIndex > length(" + this.f17c.length + ")");
        }
        int i3 = i2 - i;
        if (i3 < 0) {
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        if (i == 0 && i2 == this.f17c.length) {
            c0008f = this;
        } else {
            byte[] bArr = new byte[i3];
            System.arraycopy(this.f17c, i, bArr, 0, i3);
            c0008f = new C0008f(bArr);
        }
        return c0008f;
    }

    /* renamed from: a */
    public String mo22474a() {
        String str = this.f19e;
        if (str == null) {
            str = new String(this.f17c, C0027u.f59a);
            this.f19e = str;
        }
        return str;
    }

    /* renamed from: a */
    public void mo22469a(C0005c c0005c) {
        c0005c.mo22511c(this.f17c, 0, this.f17c.length);
    }

    /* renamed from: a */
    public boolean mo22471a(int i, C0008f c0008f, int i2, int i3) {
        return c0008f.mo22470a(i2, this.f17c, i, i3);
    }

    /* renamed from: a */
    public boolean mo22470a(int i, byte[] bArr, int i2, int i3) {
        return i >= 0 && i <= this.f17c.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && C0027u.m22447a(this.f17c, i, bArr, i2, i3);
    }

    /* renamed from: a */
    public final boolean m22540a(C0008f c0008f) {
        return mo22471a(0, c0008f, 0, c0008f.mo22462g());
    }

    /* renamed from: b */
    public int compareTo(C0008f c0008f) {
        int i;
        int mo22462g = mo22462g();
        int mo22462g2 = c0008f.mo22462g();
        int min = Math.min(mo22462g, mo22462g2);
        int i2 = 0;
        while (true) {
            if (i2 < min) {
                int mo22473a = mo22473a(i2) & 255;
                int mo22473a2 = c0008f.mo22473a(i2) & 255;
                if (mo22473a == mo22473a2) {
                    i2++;
                } else {
                    i = mo22473a < mo22473a2 ? -1 : 1;
                }
            } else if (mo22462g == mo22462g2) {
                i = 0;
            } else {
                i = -1;
                if (mo22462g >= mo22462g2) {
                    i = 1;
                }
            }
        }
        return i;
    }

    /* renamed from: b */
    public String mo22468b() {
        return C0004b.m22575a(this.f17c);
    }

    /* renamed from: c */
    public C0008f mo22466c() {
        return m22533c("SHA-1");
    }

    /* renamed from: d */
    public C0008f mo22465d() {
        return m22533c("SHA-256");
    }

    /* renamed from: e */
    public String mo22464e() {
        char[] cArr = new char[this.f17c.length * 2];
        byte[] bArr = this.f17c;
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < length) {
                byte b = bArr[i];
                int i4 = i3 + 1;
                cArr[i3] = f15a[(b >> 4) & 15];
                cArr[i4] = f15a[b & 15];
                i++;
                i2 = i4 + 1;
            } else {
                return new String(cArr);
            }
        }
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj != this) {
            z = (obj instanceof C0008f) && ((C0008f) obj).mo22462g() == this.f17c.length && ((C0008f) obj).mo22470a(0, this.f17c, 0, this.f17c.length);
        }
        return z;
    }

    /* renamed from: f */
    public C0008f mo22463f() {
        C0008f c0008f;
        int i = 0;
        while (true) {
            c0008f = this;
            if (i >= this.f17c.length) {
                break;
            }
            byte b = this.f17c[i];
            if (b < 65 || b > 90) {
                i++;
            } else {
                byte[] bArr = (byte[]) this.f17c.clone();
                bArr[i] = (byte) (b + 32);
                while (true) {
                    i++;
                    if (i >= bArr.length) {
                        break;
                    }
                    byte b2 = bArr[i];
                    if (b2 >= 65 && b2 <= 90) {
                        bArr[i] = (byte) (b2 + 32);
                    }
                }
                c0008f = new C0008f(bArr);
            }
        }
        return c0008f;
    }

    /* renamed from: g */
    public int mo22462g() {
        return this.f17c.length;
    }

    /* renamed from: h */
    public byte[] mo22461h() {
        return (byte[]) this.f17c.clone();
    }

    public int hashCode() {
        int i = this.f18d;
        if (i == 0) {
            i = Arrays.hashCode(this.f17c);
            this.f18d = i;
        }
        return i;
    }

    public String toString() {
        String str;
        if (this.f17c.length == 0) {
            str = "[size=0]";
        } else {
            String mo22474a = mo22474a();
            int m22537a = m22537a(mo22474a, 64);
            if (m22537a == -1) {
                str = this.f17c.length <= 64 ? "[hex=" + mo22464e() + "]" : "[size=" + this.f17c.length + " hex=" + mo22472a(0, 64).mo22464e() + "…]";
            } else {
                String replace = mo22474a.substring(0, m22537a).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
                str = m22537a < mo22474a.length() ? "[size=" + this.f17c.length + " text=" + replace + "…]" : "[text=" + replace + "]";
            }
        }
        return str;
    }
}
