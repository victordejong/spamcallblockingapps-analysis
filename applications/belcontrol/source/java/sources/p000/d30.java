package p000;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: d30 */
/* loaded from: classes-dex2jar.jar:d30.class */
public class d30 {

    /* renamed from: a */
    public static boolean f5746a = true;

    /* renamed from: b */
    public static Method f5747b;

    /* renamed from: c */
    public static boolean f5748c;

    /* renamed from: a */
    public static int m2899a(ViewGroup viewGroup, int i) {
        if (Build.VERSION.SDK_INT >= 29) {
            return viewGroup.getChildDrawingOrder(i);
        }
        if (!f5748c) {
            try {
                Class cls = Integer.TYPE;
                Method declaredMethod = ViewGroup.class.getDeclaredMethod("getChildDrawingOrder", cls, cls);
                f5747b = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            f5748c = true;
        }
        Method method = f5747b;
        if (method != null) {
            try {
                return ((Integer) method.invoke(viewGroup, Integer.valueOf(viewGroup.getChildCount()), Integer.valueOf(i))).intValue();
            } catch (IllegalAccessException | InvocationTargetException e2) {
            }
        }
        return i;
    }

    /* renamed from: b */
    public static c30 m2898b(ViewGroup viewGroup) {
        return Build.VERSION.SDK_INT >= 18 ? new b30(viewGroup) : a30.c(viewGroup);
    }

    @SuppressLint({"NewApi"})
    /* renamed from: c */
    public static void m2897c(ViewGroup viewGroup, boolean z) {
        if (f5746a) {
            try {
                viewGroup.suppressLayout(z);
            } catch (NoSuchMethodError e) {
                f5746a = false;
            }
        }
    }

    /* renamed from: d */
    public static void m2896d(ViewGroup viewGroup, boolean z) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            viewGroup.suppressLayout(z);
        } else if (i >= 18) {
            m2897c(viewGroup, z);
        } else {
            e30.m2261b(viewGroup, z);
        }
    }
}
