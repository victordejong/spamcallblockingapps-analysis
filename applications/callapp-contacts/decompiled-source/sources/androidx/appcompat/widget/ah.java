package androidx.appcompat.widget;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import androidx.core.view.v;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ah.class */
public final class ah {

    /* renamed from: a  reason: collision with root package name */
    private static Method f1068a;

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                Method declaredMethod = View.class.getDeclaredMethod("computeFitSystemWindows", Rect.class, Rect.class);
                f1068a = declaredMethod;
                if (!declaredMethod.isAccessible()) {
                    f1068a.setAccessible(true);
                }
            } catch (NoSuchMethodException e) {
            }
        }
    }

    private ah() {
    }

    public static void a(View view, Rect rect, Rect rect2) {
        Method method = f1068a;
        if (method != null) {
            try {
                method.invoke(view, rect, rect2);
            } catch (Exception e) {
            }
        }
    }

    public static boolean a(View view) {
        return v.f(view) == 1;
    }

    public static void b(View view) {
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
