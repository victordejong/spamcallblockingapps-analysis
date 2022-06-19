package androidx.core.p022f;

import android.os.Build;
import java.util.Arrays;
import java.util.Objects;
/* renamed from: androidx.core.f.c */
/* loaded from: classes-dex2jar.jar:androidx/core/f/c.class */
public class C0497c {
    /* renamed from: a */
    public static int m6467a(Object... objArr) {
        return Build.VERSION.SDK_INT >= 19 ? Objects.hash(objArr) : Arrays.hashCode(objArr);
    }

    /* renamed from: a */
    public static boolean m6468a(Object obj, Object obj2) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Objects.equals(obj, obj2);
        }
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }
}
