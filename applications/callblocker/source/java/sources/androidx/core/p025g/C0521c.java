package androidx.core.p025g;

import android.os.Build;
import java.util.Arrays;
import java.util.Objects;
/* renamed from: androidx.core.g.c */
/* loaded from: classes-dex2jar.jar:androidx/core/g/c.class */
public class C0521c {
    /* renamed from: a */
    public static int m20647a(Object... objArr) {
        return Build.VERSION.SDK_INT >= 19 ? Objects.hash(objArr) : Arrays.hashCode(objArr);
    }

    /* renamed from: a */
    public static boolean m20648a(Object obj, Object obj2) {
        return Build.VERSION.SDK_INT >= 19 ? Objects.equals(obj, obj2) : obj == obj2 || (obj != null && obj.equals(obj2));
    }
}
