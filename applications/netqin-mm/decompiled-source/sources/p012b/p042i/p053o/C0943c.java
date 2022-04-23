package p012b.p042i.p053o;

import android.os.Build;
import java.util.Arrays;
import java.util.Objects;
/* renamed from: b.i.o.c */
/* loaded from: classes-dex2jar.jar:b/i/o/c.class */
public class C0943c {
    /* renamed from: a */
    public static int m35449a(Object obj) {
        return obj != null ? obj.hashCode() : 0;
    }

    /* renamed from: a */
    public static int m35447a(Object... objArr) {
        return Build.VERSION.SDK_INT >= 19 ? Objects.hash(objArr) : Arrays.hashCode(objArr);
    }

    /* renamed from: a */
    public static boolean m35448a(Object obj, Object obj2) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Objects.equals(obj, obj2);
        }
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }
}
