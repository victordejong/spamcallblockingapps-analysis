package androidx.core.e;

import android.os.Build;
import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/core/e/a.class */
public final class a {
    private a() {
    }

    public static int a(Object... objArr) {
        return Build.VERSION.SDK_INT >= 19 ? Objects.hash(objArr) : Arrays.hashCode(objArr);
    }

    public static boolean a(Object obj, Object obj2) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Objects.equals(obj, obj2);
        }
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }
}
