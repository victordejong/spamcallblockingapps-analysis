package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.os.Build;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.transition.b */
/* loaded from: classes-dex2jar.jar:androidx/transition/b.class */
class C0488b {

    /* renamed from: a */
    private static Method f2716a;

    /* renamed from: b */
    private static Method f2717b;

    /* renamed from: c */
    private static boolean f2718c;

    @SuppressLint({"SoonBlockedPrivateApi"})
    /* renamed from: a */
    static void m12050a(Canvas canvas, boolean z) {
        Method method;
        int i = Build.VERSION.SDK_INT;
        if (i < 21) {
            return;
        }
        if (i >= 29) {
            if (z) {
                canvas.enableZ();
            } else {
                canvas.disableZ();
            }
        } else if (i == 28) {
            throw new IllegalStateException("This method doesn't work on Pie!");
        } else {
            if (!f2718c) {
                try {
                    Method declaredMethod = Canvas.class.getDeclaredMethod("insertReorderBarrier", new Class[0]);
                    f2716a = declaredMethod;
                    declaredMethod.setAccessible(true);
                    Method declaredMethod2 = Canvas.class.getDeclaredMethod("insertInorderBarrier", new Class[0]);
                    f2717b = declaredMethod2;
                    declaredMethod2.setAccessible(true);
                } catch (NoSuchMethodException e) {
                }
                f2718c = true;
            }
            if (z) {
                try {
                    Method method2 = f2716a;
                    if (method2 != null) {
                        method2.invoke(canvas, new Object[0]);
                    }
                } catch (IllegalAccessException e2) {
                    return;
                } catch (InvocationTargetException e3) {
                    throw new RuntimeException(e3.getCause());
                }
            }
            if (z || (method = f2717b) == null) {
                return;
            }
            method.invoke(canvas, new Object[0]);
        }
    }
}
