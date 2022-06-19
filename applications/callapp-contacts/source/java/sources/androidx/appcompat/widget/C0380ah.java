package androidx.appcompat.widget;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import androidx.core.view.C0926v;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.appcompat.widget.ah */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ah.class */
public final class C0380ah {

    /* renamed from: a */
    private static Method f1538a;

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                Method declaredMethod = View.class.getDeclaredMethod("computeFitSystemWindows", Rect.class, Rect.class);
                f1538a = declaredMethod;
                if (declaredMethod.isAccessible()) {
                    return;
                }
                f1538a.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
        }
    }

    private C0380ah() {
    }

    /* renamed from: a */
    public static void m45769a(View view, Rect rect, Rect rect2) {
        Method method = f1538a;
        if (method != null) {
            try {
                method.invoke(view, rect, rect2);
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: a */
    public static boolean m45770a(View view) {
        return C0926v.m44097f(view) == 1;
    }

    /* renamed from: b */
    public static void m45768b(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            try {
                Method method = view.getClass().getMethod("makeOptionalFitsSystemWindows", new Class[0]);
                if (!method.isAccessible()) {
                    method.setAccessible(true);
                }
                method.invoke(view, new Object[0]);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            }
        }
    }
}
