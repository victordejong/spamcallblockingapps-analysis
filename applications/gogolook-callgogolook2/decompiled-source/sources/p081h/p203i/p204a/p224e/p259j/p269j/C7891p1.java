package p081h.p203i.p204a.p224e.p259j.p269j;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* renamed from: h.i.a.e.j.j.p1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/p1.class */
public final class C7891p1 {

    /* renamed from: a */
    public static final Charset f18512a = Charset.forName("UTF-8");

    /* renamed from: b */
    public static final byte[] f18513b;

    static {
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f18513b = bArr;
        ByteBuffer.wrap(bArr);
        byte[] bArr2 = f18513b;
        AbstractC7890p0.m19110a(bArr2, 0, bArr2.length, false);
    }

    /* renamed from: a */
    public static int m19108a(int i, byte[] bArr, int i2, int i3) {
        int i4 = i;
        for (int i5 = i2; i5 < i2 + i3; i5++) {
            i4 = (i4 * 31) + bArr[i5];
        }
        return i4;
    }

    /* renamed from: a */
    public static int m19107a(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: a */
    public static int m19102a(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: a */
    public static int m19101a(byte[] bArr) {
        int length = bArr.length;
        int a = m19108a(length, bArr, 0, length);
        int i = a;
        if (a == 0) {
            i = 1;
        }
        return i;
    }

    /* renamed from: a */
    public static <T> T m19105a(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    /* renamed from: a */
    public static Object m19104a(Object obj, Object obj2) {
        AbstractC7932u2 f = ((AbstractC7925t2) obj).mo18881f();
        f.mo18841a((AbstractC7925t2) obj2);
        return f.mo18865K();
    }

    /* renamed from: a */
    public static <T> T m19103a(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: a */
    public static boolean m19106a(AbstractC7925t2 t2Var) {
        return false;
    }

    /* renamed from: b */
    public static boolean m19100b(byte[] bArr) {
        return C7858l4.m19253a(bArr);
    }

    /* renamed from: c */
    public static String m19099c(byte[] bArr) {
        return new String(bArr, f18512a);
    }
}
