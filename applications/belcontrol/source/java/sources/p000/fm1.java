package p000;

import java.io.EOFException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.util.Arrays;
/* renamed from: fm1 */
/* loaded from: classes3-dex2jar.jar:fm1.class */
public class fm1 implements Serializable, Comparable<fm1> {

    /* renamed from: d */
    public static final char[] f6655d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: f */
    public static final fm1 f6656f = m1697g(new byte[0]);
    private static final long serialVersionUID = 1;

    /* renamed from: a */
    public final byte[] f6657a;

    /* renamed from: b */
    public transient int f6658b;

    /* renamed from: c */
    public transient String f6659c;

    public fm1(byte[] bArr) {
        this.f6657a = bArr;
    }

    /* renamed from: a */
    public static int m1701a(String str, int i) {
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

    /* renamed from: c */
    public static fm1 m1699c(String str) {
        if (str != null) {
            if (str.length() % 2 != 0) {
                throw new IllegalArgumentException("Unexpected hex string: " + str);
            }
            int length = str.length() / 2;
            byte[] bArr = new byte[length];
            for (int i = 0; i < length; i++) {
                int i2 = i * 2;
                bArr[i] = (byte) ((m1698d(str.charAt(i2)) << 4) + m1698d(str.charAt(i2 + 1)));
            }
            return m1697g(bArr);
        }
        throw new IllegalArgumentException("hex == null");
    }

    /* renamed from: d */
    public static int m1698d(char c) {
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

    /* renamed from: g */
    public static fm1 m1697g(byte... bArr) {
        if (bArr != null) {
            return new fm1((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    /* renamed from: i */
    public static fm1 m1696i(InputStream inputStream, int i) {
        if (inputStream != null) {
            if (i < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + i);
            }
            byte[] bArr = new byte[i];
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 >= i) {
                    return new fm1(bArr);
                }
                int read = inputStream.read(bArr, i3, i - i3);
                if (read == -1) {
                    throw new EOFException();
                }
                i2 = i3 + read;
            }
        } else {
            throw new IllegalArgumentException("in == null");
        }
    }

    private void readObject(ObjectInputStream objectInputStream) {
        fm1 m1696i = m1696i(objectInputStream, objectInputStream.readInt());
        try {
            Field declaredField = fm1.class.getDeclaredField("a");
            declaredField.setAccessible(true);
            declaredField.set(this, m1696i.f6657a);
        } catch (IllegalAccessException e) {
            throw new AssertionError();
        } catch (NoSuchFieldException e2) {
            throw new AssertionError();
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.writeInt(this.f6657a.length);
        objectOutputStream.write(this.f6657a);
    }

    /* renamed from: b */
    public int compareTo(fm1 fm1Var) {
        int mo1564j = mo1564j();
        int mo1564j2 = fm1Var.mo1564j();
        int min = Math.min(mo1564j, mo1564j2);
        int i = 0;
        while (true) {
            int i2 = -1;
            if (i >= min) {
                if (mo1564j == mo1564j2) {
                    return 0;
                }
                if (mo1564j >= mo1564j2) {
                    i2 = 1;
                }
                return i2;
            }
            int mo1567e = mo1567e(i) & 255;
            int mo1567e2 = fm1Var.mo1567e(i) & 255;
            if (mo1567e != mo1567e2) {
                if (mo1567e >= mo1567e2) {
                    i2 = 1;
                }
                return i2;
            }
            i++;
        }
    }

    /* renamed from: e */
    public byte mo1567e(int i) {
        return this.f6657a[i];
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0032, code lost:
        if (r0.mo1565h(0, r0, 0, r0.length) != false) goto L12;
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
            boolean r0 = r0 instanceof p000.fm1
            if (r0 == 0) goto L38
            r0 = r7
            fm1 r0 = (p000.fm1) r0
            r7 = r0
            r0 = r7
            int r0 = r0.mo1564j()
            r9 = r0
            r0 = r6
            byte[] r0 = r0.f6657a
            r10 = r0
            r0 = r9
            r1 = r10
            int r1 = r1.length
            if (r0 != r1) goto L38
            r0 = r7
            r1 = 0
            r2 = r10
            r3 = 0
            r4 = r10
            int r4 = r4.length
            boolean r0 = r0.mo1565h(r1, r2, r3, r4)
            if (r0 == 0) goto L38
            goto L3a
        L38:
            r0 = 0
            r8 = r0
        L3a:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.fm1.equals(java.lang.Object):boolean");
    }

    /* renamed from: f */
    public String mo1566f() {
        byte[] bArr = this.f6657a;
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b : bArr) {
            int i2 = i + 1;
            char[] cArr2 = f6655d;
            cArr[i] = cArr2[(b >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    /* renamed from: h */
    public boolean mo1565h(int i, byte[] bArr, int i2, int i3) {
        boolean z;
        if (i >= 0) {
            byte[] bArr2 = this.f6657a;
            if (i <= bArr2.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && jm1.m1470a(bArr2, i, bArr, i2, i3)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        int i = this.f6658b;
        if (i == 0) {
            i = Arrays.hashCode(this.f6657a);
            this.f6658b = i;
        }
        return i;
    }

    /* renamed from: j */
    public int mo1564j() {
        return this.f6657a.length;
    }

    /* renamed from: k */
    public fm1 mo1563k(int i, int i2) {
        if (i >= 0) {
            byte[] bArr = this.f6657a;
            if (i2 > bArr.length) {
                throw new IllegalArgumentException("endIndex > length(" + this.f6657a.length + ")");
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
            return new fm1(bArr2);
        }
        throw new IllegalArgumentException("beginIndex < 0");
    }

    /* renamed from: l */
    public String mo1562l() {
        String str = this.f6659c;
        if (str == null) {
            str = new String(this.f6657a, jm1.f6840a);
            this.f6659c = str;
        }
        return str;
    }

    public String toString() {
        StringBuilder sb;
        StringBuilder sb2;
        if (this.f6657a.length == 0) {
            return "[size=0]";
        }
        String mo1562l = mo1562l();
        int m1701a = m1701a(mo1562l, 64);
        if (m1701a == -1) {
            if (this.f6657a.length <= 64) {
                sb2 = new StringBuilder();
                sb2.append("[hex=");
                sb2.append(mo1566f());
                sb2.append("]");
            } else {
                sb2 = new StringBuilder();
                sb2.append("[size=");
                sb2.append(this.f6657a.length);
                sb2.append(" hex=");
                sb2.append(mo1563k(0, 64).mo1566f());
                sb2.append("…]");
            }
            return sb2.toString();
        }
        String replace = mo1562l.substring(0, m1701a).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
        if (m1701a < mo1562l.length()) {
            sb = new StringBuilder();
            sb.append("[size=");
            sb.append(this.f6657a.length);
            sb.append(" text=");
            sb.append(replace);
            sb.append("…]");
        } else {
            sb = new StringBuilder();
            sb.append("[text=");
            sb.append(replace);
            sb.append("]");
        }
        return sb.toString();
    }
}
