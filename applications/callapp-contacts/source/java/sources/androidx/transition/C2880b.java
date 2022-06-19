package androidx.transition;

import android.graphics.Canvas;
import android.os.Build;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.transition.b */
/* loaded from: classes-dex2jar.jar:androidx/transition/b.class */
final class C2880b {

    /* renamed from: a */
    private static Method f10849a;

    /* renamed from: b */
    private static Method f10850b;

    /* renamed from: c */
    private static boolean f10851c;

    private C2880b() {
    }

    /* renamed from: a */
    public static void m39720a(Canvas canvas, boolean z) {
        Method method;
        if (Build.VERSION.SDK_INT >= 21) {
            if (Build.VERSION.SDK_INT >= 29) {
                if (z) {
                    canvas.enableZ();
                } else {
                    canvas.disableZ();
                }
            } else if (Build.VERSION.SDK_INT == 28) {
                throw new IllegalStateException("This method doesn't work on Pie!");
            } else {
                if (!f10851c) {
                    try {
                        Method declaredMethod = Canvas.class.getDeclaredMethod("insertReorderBarrier", new Class[0]);
                        f10849a = declaredMethod;
                        declaredMethod.setAccessible(true);
                        Method declaredMethod2 = Canvas.class.getDeclaredMethod("insertInorderBarrier", new Class[0]);
                        f10850b = declaredMethod2;
                        declaredMethod2.setAccessible(true);
                    } catch (NoSuchMethodException e) {
                    }
                    f10851c = true;
                }
                if (z) {
                    try {
                        Method method2 = f10849a;
                        if (method2 != null) {
                            method2.invoke(canvas, new Object[0]);
                        }
                    } catch (IllegalAccessException e2) {
                        return;
                    } catch (InvocationTargetException e3) {
                        throw new RuntimeException(e3.getCause());
                    }
                }
                if (z || (method = f10850b) == null) {
                    return;
                }
                method.invoke(canvas, new Object[0]);
            }
        }
    }
}
