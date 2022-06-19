package androidx.appcompat.widget;

import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import androidx.core.p026h.C0595u;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.appcompat.widget.av */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/av.class */
public class C0327av {

    /* renamed from: a */
    private static Method f1385a;

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                f1385a = View.class.getDeclaredMethod("computeFitSystemWindows", Rect.class, Rect.class);
                if (f1385a.isAccessible()) {
                    return;
                }
                f1385a.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.d("ViewUtils", "Could not find method computeFitSystemWindows. Oh well.");
            }
        }
    }

    /* renamed from: a */
    public static void m21388a(View view, Rect rect, Rect rect2) {
        if (f1385a != null) {
            try {
                f1385a.invoke(view, rect, rect2);
            } catch (Exception e) {
                Log.d("ViewUtils", "Could not invoke computeFitSystemWindows", e);
            }
        }
    }

    /* renamed from: a */
    public static boolean m21389a(View view) {
        boolean z = true;
        if (C0595u.m20320g(view) != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public static void m21387b(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            try {
                Method method = view.getClass().getMethod("makeOptionalFitsSystemWindows", new Class[0]);
                if (!method.isAccessible()) {
                    method.setAccessible(true);
                }
                method.invoke(view, new Object[0]);
            } catch (IllegalAccessException e) {
                Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e);
            } catch (NoSuchMethodException e2) {
                Log.d("ViewUtils", "Could not find method makeOptionalFitsSystemWindows. Oh well...");
            } catch (InvocationTargetException e3) {
                Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e3);
            }
        }
    }
}
