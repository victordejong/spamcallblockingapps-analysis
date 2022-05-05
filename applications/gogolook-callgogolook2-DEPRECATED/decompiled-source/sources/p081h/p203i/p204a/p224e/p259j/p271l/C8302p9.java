package p081h.p203i.p204a.p224e.p259j.p271l;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* renamed from: h.i.a.e.j.l.p9 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/p9.class */
public final class C8302p9 {

    /* renamed from: a */
    public static final Charset f19250a = Charset.forName("UTF-8");

    /* renamed from: b */
    public static final byte[] f19251b;

    static {
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f19251b = bArr;
        ByteBuffer.wrap(bArr);
        byte[] bArr2 = f19251b;
        AbstractC8428w8.m18104a(bArr2, 0, bArr2.length, false);
    }

    /* renamed from: a */
    public static int m18208a(int i, byte[] bArr, int i2, int i3) {
        int i4 = i;
        for (int i5 = i2; i5 < i2 + i3; i5++) {
            i4 = (i4 * 31) + bArr[i5];
        }
        return i4;
    }

    /* renamed from: a */
    public static int m18207a(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: a */
    public static int m18202a(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: a */
    public static int m18201a(byte[] bArr) {
        int length = bArr.length;
        int a = m18208a(length, bArr, 0, length);
        int i = a;
        if (a == 0) {
            i = 1;
        }
        return i;
    }

    /* renamed from: a */
    public static <T> T m18205a(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    /* renamed from: a */
    public static Object m18204a(Object obj, Object obj2) {
        AbstractC8451xa a = ((AbstractC8390ua) obj).mo18135a();
        a.mo17996a((AbstractC8390ua) obj2);
        return a.mo17997M();
    }

    /* renamed from: a */
    public static <T> T m18203a(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: a */
    public static boolean m18206a(AbstractC8390ua uaVar) {
        if (!(uaVar instanceof AbstractC8106f8)) {
            return false;
        }
        AbstractC8106f8 f8Var = (AbstractC8106f8) uaVar;
        return false;
    }

    /* renamed from: b */
    public static boolean m18200b(byte[] bArr) {
        return C8252n.m18267a(bArr);
    }

    /* renamed from: c */
    public static String m18199c(byte[] bArr) {
        return new String(bArr, f19250a);
    }
}
