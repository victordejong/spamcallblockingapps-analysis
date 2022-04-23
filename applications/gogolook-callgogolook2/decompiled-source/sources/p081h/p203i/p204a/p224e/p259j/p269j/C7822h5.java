package p081h.p203i.p204a.p224e.p259j.p269j;

import java.nio.charset.Charset;
import java.util.Arrays;
/* renamed from: h.i.a.e.j.j.h5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/h5.class */
public final class C7822h5 {

    /* renamed from: a */
    public static final Charset f18339a = Charset.forName("UTF-8");

    /* renamed from: b */
    public static final Object f18340b = new Object();

    static {
        Charset.forName("ISO-8859-1");
    }

    /* renamed from: a */
    public static int m19357a(int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            return 0;
        }
        return Arrays.hashCode(iArr);
    }

    /* renamed from: a */
    public static int m19355a(Object[] objArr) {
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
    public static void m19358a(AbstractC7788d5 d5Var, AbstractC7788d5 d5Var2) {
        C7805f5 f5Var = d5Var.f18218b;
        if (f5Var != null) {
            d5Var2.f18218b = (C7805f5) f5Var.clone();
        }
    }

    /* renamed from: a */
    public static boolean m19356a(int[] iArr, int[] iArr2) {
        return (iArr == null || iArr.length == 0) ? iArr2 == null || iArr2.length == 0 : Arrays.equals(iArr, iArr2);
    }

    /* renamed from: a */
    public static boolean m19354a(Object[] objArr, Object[] objArr2) {
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
