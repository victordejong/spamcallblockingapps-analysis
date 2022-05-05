package p081h.p203i.p204a.p224e.p259j.p276q;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* renamed from: h.i.a.e.j.q.e4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/e4.class */
public final class C8591e4 {

    /* renamed from: a */
    public static final Charset f19671a = Charset.forName("UTF-8");

    /* renamed from: b */
    public static final byte[] f19672b;

    static {
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f19672b = bArr;
        ByteBuffer.wrap(bArr);
        byte[] bArr2 = f19672b;
        AbstractC8590e3.m17693a(bArr2, 0, bArr2.length, false);
    }

    /* renamed from: a */
    public static int m17691a(int i, byte[] bArr, int i2, int i3) {
        int i4 = i;
        for (int i5 = i2; i5 < i2 + i3; i5++) {
            i4 = (i4 * 31) + bArr[i5];
        }
        return i4;
    }

    /* renamed from: a */
    public static int m17690a(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: a */
    public static int m17685a(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: a */
    public static int m17684a(byte[] bArr) {
        int length = bArr.length;
        int a = m17691a(length, bArr, 0, length);
        int i = a;
        if (a == 0) {
            i = 1;
        }
        return i;
    }

    /* renamed from: a */
    public static <T> T m17688a(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    /* renamed from: a */
    public static Object m17687a(Object obj, Object obj2) {
        AbstractC8657k5 e = ((AbstractC8648j5) obj).mo17432e();
        e.mo17393a((AbstractC8648j5) obj2);
        return e.mo17428L();
    }

    /* renamed from: a */
    public static <T> T m17686a(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: a */
    public static boolean m17689a(AbstractC8648j5 j5Var) {
        return false;
    }

    /* renamed from: b */
    public static boolean m17683b(byte[] bArr) {
        return C8798z6.m16928a(bArr);
    }

    /* renamed from: c */
    public static String m17682c(byte[] bArr) {
        return new String(bArr, f19671a);
    }
}
