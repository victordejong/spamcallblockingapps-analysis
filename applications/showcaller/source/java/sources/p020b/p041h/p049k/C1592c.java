package p020b.p041h.p049k;

import android.os.Build;
import java.util.Arrays;
import java.util.Objects;
/* renamed from: b.h.k.c */
/* loaded from: classes-dex2jar.jar:b/h/k/c.class */
public class C1592c {
    /* renamed from: a */
    public static boolean m29668a(Object obj, Object obj2) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Objects.equals(obj, obj2);
        }
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* renamed from: b */
    public static int m29667b(Object... objArr) {
        return Build.VERSION.SDK_INT >= 19 ? Objects.hash(objArr) : Arrays.hashCode(objArr);
    }

    /* renamed from: c */
    public static String m29666c(Object obj, String str) {
        if (obj != null) {
            str = obj.toString();
        }
        return str;
    }
}
