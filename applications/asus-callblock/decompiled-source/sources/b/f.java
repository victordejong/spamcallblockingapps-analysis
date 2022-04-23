package b;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:b/f.class */
public final class f implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    static final char[] f320a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: b  reason: collision with root package name */
    public static final f f321b = a(new byte[0]);
    public final byte[] c;
    transient int d;
    transient String e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(byte[] bArr) {
        this.c = bArr;
    }

    public static f a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("s == null");
        }
        f fVar = new f(str.getBytes(s.f345a));
        fVar.e = str;
        return fVar;
    }

    public static f a(byte... bArr) {
        if (bArr != null) {
            return new f((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    private f b(String str) {
        try {
            return a(MessageDigest.getInstance(str).digest(this.c));
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    public final String a() {
        String str = this.e;
        if (str == null) {
            str = new String(this.c, s.f345a);
            this.e = str;
        }
        return str;
    }

    public final String b() {
        char[] cArr = new char[this.c.length * 2];
        byte[] bArr = this.c;
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            byte b2 = bArr[i];
            int i3 = i2 + 1;
            cArr[i2] = f320a[(b2 >> 4) & 15];
            cArr[i3] = f320a[b2 & 15];
            i++;
            i2 = i3 + 1;
        }
        return new String(cArr);
    }

    public final f c() {
        f fVar;
        int i = 0;
        while (true) {
            fVar = this;
            if (i >= this.c.length) {
                break;
            }
            byte b2 = this.c[i];
            if (b2 < 65 || b2 > 90) {
                i++;
            } else {
                byte[] bArr = (byte[]) this.c.clone();
                bArr[i] = (byte) (b2 + 32);
                while (true) {
                    i++;
                    if (i >= bArr.length) {
                        break;
                    }
                    byte b3 = bArr[i];
                    if (b3 >= 65 && b3 <= 90) {
                        bArr[i] = (byte) (b3 + 32);
                    }
                }
                fVar = new f(bArr);
            }
        }
        return fVar;
    }

    public final byte[] d() {
        return (byte[]) this.c.clone();
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (obj == this) {
            z = true;
        } else {
            if ((obj instanceof f) && ((f) obj).c.length == this.c.length) {
                f fVar = (f) obj;
                byte[] bArr = this.c;
                int length = this.c.length;
                if (fVar.c.length - length >= 0 && bArr.length - length >= 0 && s.a(fVar.c, bArr, length)) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    public final int hashCode() {
        int i = this.d;
        if (i == 0) {
            i = Arrays.hashCode(this.c);
            this.d = i;
        }
        return i;
    }

    public final String toString() {
        return this.c.length == 0 ? "ByteString[size=0]" : this.c.length <= 16 ? String.format("ByteString[size=%s data=%s]", Integer.valueOf(this.c.length), b()) : String.format("ByteString[size=%s md5=%s]", Integer.valueOf(this.c.length), b("MD5").b());
    }
}
