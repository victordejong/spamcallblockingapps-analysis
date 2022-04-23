package p081h.p203i.p204a.p224e.p259j.p276q;

import java.nio.charset.Charset;
import java.util.Arrays;
/* renamed from: h.i.a.e.j.q.u7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/u7.class */
public final class C8750u7 {

    /* renamed from: a */
    public static final Charset f20011a = Charset.forName("UTF-8");

    /* renamed from: b */
    public static final Object f20012b = new Object();

    static {
        Charset.forName("ISO-8859-1");
    }

    /* renamed from: a */
    public static int m17112a(long[] jArr) {
        if (jArr == null || jArr.length == 0) {
            return 0;
        }
        return Arrays.hashCode(jArr);
    }

    /* renamed from: a */
    public static int m17110a(Object[] objArr) {
        int length = objArr == null ? 0 : objArr.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            Object obj = objArr[i2];
            i = i;
            if (obj != null) {
                i = (i * 31) + obj.hashCode();
            }
        }
        return i;
    }

    /* renamed from: a */
    public static void m17113a(AbstractC8714q7 q7Var, AbstractC8714q7 q7Var2) {
        C8732s7 s7Var = q7Var.f19936b;
        if (s7Var != null) {
            q7Var2.f19936b = (C8732s7) s7Var.clone();
        }
    }

    /* renamed from: a */
    public static boolean m17111a(long[] jArr, long[] jArr2) {
        return (jArr == null || jArr.length == 0) ? jArr2 == null || jArr2.length == 0 : Arrays.equals(jArr, jArr2);
    }

    /* renamed from: a */
    public static boolean m17109a(Object[] objArr, Object[] objArr2) {
        int length = objArr == null ? 0 : objArr.length;
        int length2 = objArr2 == null ? 0 : objArr2.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < length) {
                i3 = i2;
                if (objArr[i] == null) {
                    i++;
                }
            }
            while (i3 < length2 && objArr2[i3] == null) {
                i3++;
            }
            boolean z = i >= length;
            boolean z2 = i3 >= length2;
            if (z && z2) {
                return true;
            }
            if (z != z2 || !objArr[i].equals(objArr2[i3])) {
                return false;
            }
            i++;
            i2 = i3 + 1;
        }
    }
}
