package p645m;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.annotation.Nullable;
/* renamed from: m.f */
/* loaded from: classes3-dex2jar.jar:m/f.class */
public class C15175f implements Serializable, Comparable<C15175f> {

    /* renamed from: d */
    public static final char[] f33163d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: e */
    public static final C15175f f33164e = m340a(new byte[0]);

    /* renamed from: a */
    public final byte[] f33165a;

    /* renamed from: b */
    public transient int f33166b;

    /* renamed from: c */
    public transient String f33167c;

    public C15175f(byte[] bArr) {
        this.f33165a = bArr;
    }

    /* renamed from: a */
    public static int m345a(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        char c2 = 'a';
        if (c < 'a' || c > 'f') {
            c2 = 'A';
            if (c < 'A' || c > 'F') {
                throw new IllegalArgumentException("Unexpected hex digit: " + c);
            }
        }
        return (c - c2) + 10;
    }

    /* renamed from: a */
    public static int m342a(String str, int i) {
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
    public static C15175f m344a(InputStream inputStream, int i) throws IOException {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        } else if (i >= 0) {
            byte[] bArr = new byte[i];
            int i2 = 0;
            while (i2 < i) {
                int read = inputStream.read(bArr, i2, i - i2);
                if (read != -1) {
                    i2 += read;
                } else {
                    throw new EOFException();
                }
            }
            return new C15175f(bArr);
        } else {
            throw new IllegalArgumentException("byteCount < 0: " + i);
        }
    }

    /* renamed from: a */
    public static C15175f m340a(byte... bArr) {
        if (bArr != null) {
            return new C15175f((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    @Nullable
    /* renamed from: b */
    public static C15175f m339b(String str) {
        if (str != null) {
            byte[] a = C15169b.m369a(str);
            return a != null ? new C15175f(a) : null;
        }
        throw new IllegalArgumentException("base64 == null");
    }

    /* renamed from: c */
    public static C15175f m337c(String str) {
        if (str == null) {
            throw new IllegalArgumentException("hex == null");
        } else if (str.length() % 2 == 0) {
            byte[] bArr = new byte[str.length() / 2];
            for (int i = 0; i < bArr.length; i++) {
                int i2 = i * 2;
                bArr[i] = (byte) ((m345a(str.charAt(i2)) << 4) + m345a(str.charAt(i2 + 1)));
            }
            return m340a(bArr);
        } else {
            throw new IllegalArgumentException("Unexpected hex string: " + str);
        }
    }

    /* renamed from: d */
    public static C15175f m336d(String str) {
        if (str != null) {
            C15175f fVar = new C15175f(str.getBytes(C15196u.f33202a));
            fVar.f33167c = str;
            return fVar;
        }
        throw new IllegalArgumentException("s == null");
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        C15175f a = m344a(objectInputStream, objectInputStream.readInt());
        try {
            Field declaredField = C15175f.class.getDeclaredField("a");
            declaredField.setAccessible(true);
            declaredField.set(this, a.f33165a);
        } catch (IllegalAccessException e) {
            throw new AssertionError();
        } catch (NoSuchFieldException e2) {
            throw new AssertionError();
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.f33165a.length);
        objectOutputStream.write(this.f33165a);
    }

    /* renamed from: a */
    public byte mo278a(int i) {
        return this.f33165a[i];
    }

    /* renamed from: a */
    public int compareTo(C15175f fVar) {
        int f = mo268f();
        int f2 = fVar.mo268f();
        int min = Math.min(f, f2);
        int i = 0;
        while (true) {
            int i2 = -1;
            if (i < min) {
                int a = mo278a(i) & 255;
                int a2 = fVar.mo278a(i) & 255;
                if (a == a2) {
                    i++;
                } else {
                    if (a >= a2) {
                        i2 = 1;
                    }
                    return i2;
                }
            } else if (f == f2) {
                return 0;
            } else {
                if (f >= f2) {
                    i2 = 1;
                }
                return i2;
            }
        }
    }

    /* renamed from: a */
    public String mo279a() {
        return C15169b.m368a(this.f33165a);
    }

    /* renamed from: a */
    public C15175f mo277a(int i, int i2) {
        if (i >= 0) {
            byte[] bArr = this.f33165a;
            if (i2 <= bArr.length) {
                int i3 = i2 - i;
                if (i3 < 0) {
                    throw new IllegalArgumentException("endIndex < beginIndex");
                } else if (i == 0 && i2 == bArr.length) {
                    return this;
                } else {
                    byte[] bArr2 = new byte[i3];
                    System.arraycopy(this.f33165a, i, bArr2, 0, i3);
                    return new C15175f(bArr2);
                }
            } else {
                throw new IllegalArgumentException("endIndex > length(" + this.f33165a.length + ")");
            }
        } else {
            throw new IllegalArgumentException("beginIndex < 0");
        }
    }

    /* renamed from: a */
    public final C15175f m343a(String str) {
        try {
            return m340a(MessageDigest.getInstance(str).digest(this.f33165a));
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: a */
    public void mo274a(C15170c cVar) {
        byte[] bArr = this.f33165a;
        cVar.write(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public boolean mo276a(int i, C15175f fVar, int i2, int i3) {
        return fVar.mo275a(i2, this.f33165a, i, i3);
    }

    /* renamed from: a */
    public boolean mo275a(int i, byte[] bArr, int i2, int i3) {
        boolean z;
        if (i >= 0) {
            byte[] bArr2 = this.f33165a;
            if (i <= bArr2.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && C15196u.m259a(bArr2, i, bArr, i2, i3)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: b */
    public String mo273b() {
        byte[] bArr = this.f33165a;
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b : bArr) {
            int i2 = i + 1;
            char[] cArr2 = f33163d;
            cArr[i] = cArr2[(b >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    /* renamed from: b */
    public final boolean m338b(C15175f fVar) {
        return mo276a(0, fVar, 0, fVar.mo268f());
    }

    /* renamed from: c */
    public C15175f mo271c() {
        return m343a("MD5");
    }

    /* renamed from: d */
    public C15175f mo270d() {
        return m343a("SHA-1");
    }

    /* renamed from: e */
    public C15175f mo269e() {
        return m343a("SHA-256");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0032, code lost:
        if (r0.mo275a(0, r0, 0, r0.length) != false) goto L_0x003a;
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
            if (r0 != r1) goto L_0x0009
            r0 = 1
            return r0
        L_0x0009:
            r0 = r7
            boolean r0 = r0 instanceof p645m.C15175f
            if (r0 == 0) goto L_0x0038
            r0 = r7
            m.f r0 = (p645m.C15175f) r0
            r7 = r0
            r0 = r7
            int r0 = r0.mo268f()
            r9 = r0
            r0 = r6
            byte[] r0 = r0.f33165a
            r10 = r0
            r0 = r9
            r1 = r10
            int r1 = r1.length
            if (r0 != r1) goto L_0x0038
            r0 = r7
            r1 = 0
            r2 = r10
            r3 = 0
            r4 = r10
            int r4 = r4.length
            boolean r0 = r0.mo275a(r1, r2, r3, r4)
            if (r0 == 0) goto L_0x0038
            goto L_0x003a
        L_0x0038:
            r0 = 0
            r8 = r0
        L_0x003a:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p645m.C15175f.equals(java.lang.Object):boolean");
    }

    /* renamed from: f */
    public int mo268f() {
        return this.f33165a.length;
    }

    /* renamed from: g */
    public C15175f mo267g() {
        int i = 0;
        while (true) {
            byte[] bArr = this.f33165a;
            if (i >= bArr.length) {
                return this;
            }
            byte b = bArr[i];
            if (b < 65 || b > 90) {
                i++;
            } else {
                byte[] bArr2 = (byte[]) bArr.clone();
                bArr2[i] = (byte) (b + 32);
                for (int i2 = i + 1; i2 < bArr2.length; i2++) {
                    byte b2 = bArr2[i2];
                    if (b2 >= 65 && b2 <= 90) {
                        bArr2[i2] = (byte) (b2 + 32);
                    }
                }
                return new C15175f(bArr2);
            }
        }
    }

    /* renamed from: h */
    public byte[] mo266h() {
        return (byte[]) this.f33165a.clone();
    }

    public int hashCode() {
        int i = this.f33166b;
        if (i == 0) {
            i = Arrays.hashCode(this.f33165a);
            this.f33166b = i;
        }
        return i;
    }

    /* renamed from: i */
    public String mo265i() {
        String str = this.f33167c;
        if (str == null) {
            str = new String(this.f33165a, C15196u.f33202a);
            this.f33167c = str;
        }
        return str;
    }

    public String toString() {
        String str;
        String str2;
        if (this.f33165a.length == 0) {
            return "[size=0]";
        }
        String i = mo265i();
        int a = m342a(i, 64);
        if (a == -1) {
            if (this.f33165a.length <= 64) {
                str2 = "[hex=" + mo273b() + "]";
            } else {
                str2 = "[size=" + this.f33165a.length + " hex=" + mo277a(0, 64).mo273b() + "…]";
            }
            return str2;
        }
        String replace = i.substring(0, a).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
        if (a < i.length()) {
            str = "[size=" + this.f33165a.length + " text=" + replace + "…]";
        } else {
            str = "[text=" + replace + "]";
        }
        return str;
    }
}
