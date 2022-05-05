package p459j.p460a.p474c0.p499h.p500x0;

import androidx.media2.exoplayer.external.C0463C;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;
/* renamed from: j.a.c0.h.x0.h */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/x0/h.class */
public class C12236h {

    /* renamed from: h */
    public static Charset f27574h = Charset.forName(C0463C.ASCII_NAME);

    /* renamed from: i */
    public static final int[] f27575i = new int[11];

    /* renamed from: a */
    public final short f27576a;

    /* renamed from: b */
    public final short f27577b;

    /* renamed from: c */
    public boolean f27578c;

    /* renamed from: d */
    public int f27579d;

    /* renamed from: e */
    public int f27580e;

    /* renamed from: f */
    public Object f27581f = null;

    /* renamed from: g */
    public int f27582g;

    static {
        int[] iArr = f27575i;
        iArr[1] = 1;
        iArr[2] = 1;
        iArr[3] = 2;
        iArr[4] = 4;
        iArr[5] = 8;
        iArr[7] = 1;
        iArr[9] = 4;
        iArr[10] = 8;
        new SimpleDateFormat("yyyy:MM:dd kk:mm:ss");
    }

    public C12236h(short s, short s2, int i, int i2, boolean z) {
        this.f27576a = s;
        this.f27577b = s2;
        this.f27579d = i;
        this.f27578c = z;
        this.f27580e = i2;
    }

    /* renamed from: a */
    public static String m6615a(short s) {
        switch (s) {
            case 1:
                return "UNSIGNED_BYTE";
            case 2:
                return "ASCII";
            case 3:
                return "UNSIGNED_SHORT";
            case 4:
                return "UNSIGNED_LONG";
            case 5:
                return "UNSIGNED_RATIONAL";
            case 6:
            case 8:
            default:
                return "";
            case 7:
                return "UNDEFINED";
            case 9:
                return "LONG";
            case 10:
                return "RATIONAL";
        }
    }

    /* renamed from: b */
    public static int m6606b(short s) {
        return f27575i[s];
    }

    /* renamed from: c */
    public static boolean m6598c(short s) {
        boolean z = true;
        if (s != 1) {
            z = true;
            if (s != 2) {
                z = true;
                if (s != 3) {
                    z = true;
                    if (s != 4) {
                        z = true;
                        if (s != 5) {
                            z = true;
                            if (s != 7) {
                                z = true;
                                if (s != 9) {
                                    z = s == 10;
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: h */
    public static boolean m6586h(int i) {
        boolean z = true;
        if (i != 0) {
            z = true;
            if (i != 1) {
                z = true;
                if (i != 2) {
                    z = true;
                    if (i != 3) {
                        z = i == 4;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    public String m6618a() {
        Object obj = this.f27581f;
        if (obj == null) {
            return "";
        }
        if (obj instanceof byte[]) {
            return this.f27577b == 2 ? new String((byte[]) obj, f27574h) : Arrays.toString((byte[]) obj);
        }
        if (obj instanceof long[]) {
            return ((long[]) obj).length == 1 ? String.valueOf(((long[]) obj)[0]) : Arrays.toString((long[]) obj);
        }
        if (!(obj instanceof Object[])) {
            return obj.toString();
        }
        if (((Object[]) obj).length != 1) {
            return Arrays.toString((Object[]) obj);
        }
        Object obj2 = ((Object[]) obj)[0];
        return obj2 == null ? "" : obj2.toString();
    }

    /* renamed from: a */
    public void m6614a(boolean z) {
        this.f27578c = z;
    }

    /* renamed from: a */
    public void m6613a(byte[] bArr) {
        m6612a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public void m6612a(byte[] bArr, int i, int i2) {
        short s = this.f27577b;
        if (s == 7 || s == 1) {
            Object obj = this.f27581f;
            int i3 = this.f27579d;
            int i4 = i2;
            if (i2 > i3) {
                i4 = i3;
            }
            System.arraycopy(obj, 0, bArr, i, i4);
            return;
        }
        throw new IllegalArgumentException("Cannot get BYTE value from " + m6615a(this.f27577b));
    }

    /* renamed from: a */
    public final boolean m6617a(int i) {
        return this.f27578c && this.f27579d != i;
    }

    /* renamed from: a */
    public boolean m6616a(String str) {
        byte[] bArr;
        short s = this.f27577b;
        if (s != 2 && s != 7) {
            return false;
        }
        byte[] bytes = str.getBytes(f27574h);
        if (bytes.length > 0) {
            bArr = bytes;
            if (bytes[bytes.length - 1] != 0) {
                bArr = this.f27577b == 7 ? bytes : Arrays.copyOf(bytes, bytes.length + 1);
            }
        } else {
            bArr = bytes;
            if (this.f27577b == 2) {
                bArr = bytes;
                if (this.f27579d == 1) {
                    bArr = new byte[]{(byte) 0};
                }
            }
        }
        int length = bArr.length;
        if (m6617a(length)) {
            return false;
        }
        this.f27579d = length;
        this.f27581f = bArr;
        return true;
    }

    /* renamed from: a */
    public final boolean m6611a(int[] iArr) {
        for (int i : iArr) {
            if (i < 0) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final boolean m6610a(long[] jArr) {
        for (long j : jArr) {
            if (j < 0 || j > 4294967295L) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final boolean m6609a(C12240l[] lVarArr) {
        for (C12240l lVar : lVarArr) {
            if (lVar.m6567b() < -2147483648L || lVar.m6568a() < -2147483648L || lVar.m6567b() > 2147483647L || lVar.m6568a() > 2147483647L) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public int m6608b() {
        return this.f27579d;
    }

    /* renamed from: b */
    public void m6607b(int i) {
        this.f27579d = i;
    }

    /* renamed from: b */
    public boolean m6605b(byte[] bArr) {
        return m6604b(bArr, 0, bArr.length);
    }

    /* renamed from: b */
    public boolean m6604b(byte[] bArr, int i, int i2) {
        if (m6617a(i2)) {
            return false;
        }
        short s = this.f27577b;
        if (s != 1 && s != 7) {
            return false;
        }
        this.f27581f = new byte[i2];
        System.arraycopy(bArr, i, this.f27581f, 0, i2);
        this.f27579d = i2;
        return true;
    }

    /* renamed from: b */
    public final boolean m6603b(int[] iArr) {
        for (int i : iArr) {
            if (i > 65535 || i < 0) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public boolean m6602b(long[] jArr) {
        if (m6617a(jArr.length) || this.f27577b != 4 || m6610a(jArr)) {
            return false;
        }
        this.f27581f = jArr;
        this.f27579d = jArr.length;
        return true;
    }

    /* renamed from: b */
    public final boolean m6601b(C12240l[] lVarArr) {
        for (C12240l lVar : lVarArr) {
            if (lVar.m6567b() < 0 || lVar.m6568a() < 0 || lVar.m6567b() > 4294967295L || lVar.m6568a() > 4294967295L) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public int m6600c() {
        return m6608b() * m6606b(m6595d());
    }

    /* renamed from: c */
    public C12240l m6599c(int i) {
        short s = this.f27577b;
        if (s == 10 || s == 5) {
            return ((C12240l[]) this.f27581f)[i];
        }
        throw new IllegalArgumentException("Cannot get RATIONAL value from " + m6615a(this.f27577b));
    }

    /* renamed from: c */
    public boolean m6597c(int[] iArr) {
        if (m6617a(iArr.length)) {
            return false;
        }
        short s = this.f27577b;
        if (!(s == 3 || s == 9 || s == 4)) {
            return false;
        }
        if (this.f27577b == 3 && m6603b(iArr)) {
            return false;
        }
        if (this.f27577b == 4 && m6611a(iArr)) {
            return false;
        }
        long[] jArr = new long[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            jArr[i] = iArr[i];
        }
        this.f27581f = jArr;
        this.f27579d = iArr.length;
        return true;
    }

    /* renamed from: c */
    public boolean m6596c(C12240l[] lVarArr) {
        if (m6617a(lVarArr.length)) {
            return false;
        }
        short s = this.f27577b;
        if (s != 5 && s != 10) {
            return false;
        }
        if (this.f27577b == 5 && m6601b(lVarArr)) {
            return false;
        }
        if (this.f27577b == 10 && m6609a(lVarArr)) {
            return false;
        }
        this.f27581f = lVarArr;
        this.f27579d = lVarArr.length;
        return true;
    }

    /* renamed from: d */
    public long m6594d(int i) {
        Object obj = this.f27581f;
        if (obj instanceof long[]) {
            return ((long[]) obj)[i];
        }
        if (obj instanceof byte[]) {
            return ((byte[]) obj)[i];
        }
        throw new IllegalArgumentException("Cannot get integer value from " + m6615a(this.f27577b));
    }

    /* renamed from: d */
    public short m6595d() {
        return this.f27577b;
    }

    /* renamed from: e */
    public int m6593e() {
        return this.f27580e;
    }

    /* renamed from: e */
    public void m6592e(int i) {
        this.f27580e = i;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        boolean z = false;
        if (obj instanceof C12236h) {
            C12236h hVar = (C12236h) obj;
            z = false;
            if (hVar.f27576a == this.f27576a) {
                z = false;
                if (hVar.f27579d == this.f27579d) {
                    if (hVar.f27577b != this.f27577b) {
                        z = false;
                    } else {
                        Object obj2 = this.f27581f;
                        if (obj2 != null) {
                            Object obj3 = hVar.f27581f;
                            if (obj3 == null) {
                                return false;
                            }
                            if (obj2 instanceof long[]) {
                                if (!(obj3 instanceof long[])) {
                                    return false;
                                }
                                return Arrays.equals((long[]) obj2, (long[]) obj3);
                            } else if (obj2 instanceof C12240l[]) {
                                if (!(obj3 instanceof C12240l[])) {
                                    return false;
                                }
                                return Arrays.equals((C12240l[]) obj2, (C12240l[]) obj3);
                            } else if (!(obj2 instanceof byte[])) {
                                return obj2.equals(obj3);
                            } else {
                                if (!(obj3 instanceof byte[])) {
                                    return false;
                                }
                                return Arrays.equals((byte[]) obj2, (byte[]) obj3);
                            }
                        } else {
                            z = false;
                            if (hVar.f27581f == null) {
                                z = true;
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: f */
    public int m6591f() {
        return this.f27582g;
    }

    /* renamed from: f */
    public void m6590f(int i) {
        this.f27582g = i;
    }

    /* renamed from: g */
    public boolean m6588g(int i) {
        return m6597c(new int[]{i});
    }

    /* renamed from: g */
    public byte[] m6589g() {
        return (byte[]) this.f27581f;
    }

    /* renamed from: h */
    public short m6587h() {
        return this.f27576a;
    }

    /* renamed from: i */
    public Object m6585i() {
        return this.f27581f;
    }

    /* renamed from: j */
    public int[] m6584j() {
        Object obj = this.f27581f;
        int[] iArr = null;
        if (obj == null) {
            return null;
        }
        if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            int[] iArr2 = new int[jArr.length];
            int i = 0;
            while (true) {
                iArr = iArr2;
                if (i >= jArr.length) {
                    break;
                }
                iArr2[i] = (int) jArr[i];
                i++;
            }
        }
        return iArr;
    }

    /* renamed from: k */
    public boolean m6583k() {
        return this.f27578c;
    }

    /* renamed from: l */
    public boolean m6582l() {
        return this.f27581f != null;
    }

    public String toString() {
        return String.format("tag id: %04X\n", Short.valueOf(this.f27576a)) + "ifd id: " + this.f27580e + "\ntype: " + m6615a(this.f27577b) + "\ncount: " + this.f27579d + "\noffset: " + this.f27582g + "\nvalue: " + m6618a() + "\n";
    }
}
