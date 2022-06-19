package androidx.core.p036e;

import android.os.Build;
import java.util.Arrays;
import java.util.Objects;
/* renamed from: androidx.core.e.a */
/* loaded from: classes-dex2jar.jar:androidx/core/e/a.class */
public final class C0827a {
    private C0827a() {
    }

    /* renamed from: a */
    public static int m44413a(Object... objArr) {
        return Build.VERSION.SDK_INT >= 19 ? Objects.hash(objArr) : Arrays.hashCode(objArr);
    }

    /* renamed from: a */
    public static boolean m44414a(Object obj, Object obj2) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Objects.equals(obj, obj2);
        }
        if (obj == obj2) {
            return true;
        }
        return obj != null && obj.equals(obj2);
    }
}
