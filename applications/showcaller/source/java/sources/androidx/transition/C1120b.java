package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.os.Build;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.transition.b */
/* loaded from: classes-dex2jar.jar:androidx/transition/b.class */
class C1120b {

    /* renamed from: a */
    private static Method f4887a;

    /* renamed from: b */
    private static Method f4888b;

    /* renamed from: c */
    private static boolean f4889c;

    @SuppressLint({"SoonBlockedPrivateApi"})
    /* renamed from: a */
    public static void m30937a(Canvas canvas, boolean z) {
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
            if (!f4889c) {
                try {
                    Method declaredMethod = Canvas.class.getDeclaredMethod("insertReorderBarrier", new Class[0]);
                    f4887a = declaredMethod;
                    declaredMethod.setAccessible(true);
                    Method declaredMethod2 = Canvas.class.getDeclaredMethod("insertInorderBarrier", new Class[0]);
                    f4888b = declaredMethod2;
                    declaredMethod2.setAccessible(true);
                } catch (NoSuchMethodException e) {
                }
                f4889c = true;
            }
            if (z) {
                try {
                    Method method2 = f4887a;
                    if (method2 != null) {
                        method2.invoke(canvas, new Object[0]);
                    }
                } catch (IllegalAccessException e2) {
                    return;
                } catch (InvocationTargetException e3) {
                    throw new RuntimeException(e3.getCause());
                }
            }
            if (z || (method = f4888b) == null) {
                return;
            }
            method.invoke(canvas, new Object[0]);
        }
    }
}
