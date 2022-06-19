package androidx.transition;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.transition.e0 */
/* loaded from: classes-dex2jar.jar:androidx/transition/e0.class */
class C0490e0 {

    /* renamed from: a */
    private static boolean f2720a = true;

    /* renamed from: b */
    private static Method f2721b;

    /* renamed from: c */
    private static boolean f2722c;

    /* renamed from: a */
    public static int m12048a(ViewGroup viewGroup, int i) {
        if (Build.VERSION.SDK_INT >= 29) {
            return viewGroup.getChildDrawingOrder(i);
        }
        if (!f2722c) {
            try {
                Class cls = Integer.TYPE;
                Method declaredMethod = ViewGroup.class.getDeclaredMethod("getChildDrawingOrder", cls, cls);
                f2721b = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            f2722c = true;
        }
        Method method = f2721b;
        if (method != null) {
            try {
                return ((Integer) method.invoke(viewGroup, Integer.valueOf(viewGroup.getChildCount()), Integer.valueOf(i))).intValue();
            } catch (IllegalAccessException | InvocationTargetException e2) {
            }
        }
        return i;
    }

    /* renamed from: b */
    public static d0 m12047b(ViewGroup viewGroup) {
        return Build.VERSION.SDK_INT >= 18 ? new c0(viewGroup) : b0.g(viewGroup);
    }

    @SuppressLint({"NewApi"})
    /* renamed from: c */
    private static void m12046c(ViewGroup viewGroup, boolean z) {
        if (f2720a) {
            try {
                viewGroup.suppressLayout(z);
            } catch (NoSuchMethodError e) {
                f2720a = false;
            }
        }
    }

    /* renamed from: d */
    static void m12045d(ViewGroup viewGroup, boolean z) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            viewGroup.suppressLayout(z);
        } else if (i >= 18) {
            m12046c(viewGroup, z);
        } else {
            C0492f0.m12042b(viewGroup, z);
        }
    }
}
