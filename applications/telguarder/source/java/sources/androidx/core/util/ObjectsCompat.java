package androidx.core.util;

import android.os.Build;
import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/core/util/ObjectsCompat.class */
public class ObjectsCompat {
    private ObjectsCompat() {
    }

    public static boolean equals(Object obj, Object obj2) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Objects.equals(obj, obj2);
        }
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int hash(Object... objArr) {
        return Build.VERSION.SDK_INT >= 19 ? Objects.hash(objArr) : Arrays.hashCode(objArr);
    }

    public static int hashCode(Object obj) {
        return obj != null ? obj.hashCode() : 0;
    }
}
