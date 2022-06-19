package androidx.p045j;

import android.util.Log;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.j.aa */
/* loaded from: classes-dex2jar.jar:androidx/j/aa.class */
class C0789aa {

    /* renamed from: a */
    private static Method f2553a;

    /* renamed from: b */
    private static boolean f2554b;

    /* renamed from: a */
    private static void m5349a() {
        if (!f2554b) {
            try {
                f2553a = ViewGroup.class.getDeclaredMethod("suppressLayout", Boolean.TYPE);
                f2553a.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi18", "Failed to retrieve suppressLayout method", e);
            }
            f2554b = true;
        }
    }

    /* renamed from: a */
    public static void m5348a(ViewGroup viewGroup, boolean z) {
        m5349a();
        Method method = f2553a;
        if (method != null) {
            try {
                method.invoke(viewGroup, Boolean.valueOf(z));
            } catch (IllegalAccessException e) {
                Log.i("ViewUtilsApi18", "Failed to invoke suppressLayout method", e);
            } catch (InvocationTargetException e2) {
                Log.i("ViewUtilsApi18", "Error invoking suppressLayout method", e2);
            }
        }
    }
}
