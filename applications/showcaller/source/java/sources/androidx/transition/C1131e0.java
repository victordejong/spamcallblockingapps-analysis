package androidx.transition;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.transition.e0 */
/* loaded from: classes-dex2jar.jar:androidx/transition/e0.class */
class C1131e0 {

    /* renamed from: a */
    private static boolean f4907a = true;

    /* renamed from: b */
    private static Method f4908b;

    /* renamed from: c */
    private static boolean f4909c;

    /* renamed from: a */
    public static int m30913a(ViewGroup viewGroup, int i) {
        if (Build.VERSION.SDK_INT >= 29) {
            return viewGroup.getChildDrawingOrder(i);
        }
        if (!f4909c) {
            try {
                Class cls = Integer.TYPE;
                Method declaredMethod = ViewGroup.class.getDeclaredMethod("getChildDrawingOrder", cls, cls);
                f4908b = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            f4909c = true;
        }
        Method method = f4908b;
        if (method != null) {
            try {
                return ((Integer) method.invoke(viewGroup, Integer.valueOf(viewGroup.getChildCount()), Integer.valueOf(i))).intValue();
            } catch (IllegalAccessException | InvocationTargetException e2) {
            }
        }
        return i;
    }

    /* renamed from: b */
    public static AbstractC1125d0 m30912b(ViewGroup viewGroup) {
        return Build.VERSION.SDK_INT >= 18 ? new C1123c0(viewGroup) : C1121b0.m30936g(viewGroup);
    }

    @SuppressLint({"NewApi"})
    /* renamed from: c */
    private static void m30911c(ViewGroup viewGroup, boolean z) {
        if (f4907a) {
            try {
                viewGroup.suppressLayout(z);
            } catch (NoSuchMethodError e) {
                f4907a = false;
            }
        }
    }

    /* renamed from: d */
    public static void m30910d(ViewGroup viewGroup, boolean z) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            viewGroup.suppressLayout(z);
        } else if (i >= 18) {
            m30911c(viewGroup, z);
        } else {
            C1133f0.m30908b(viewGroup, z);
        }
    }
}
