package androidx.transition;

import android.graphics.Canvas;
import android.os.Build;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/transition/b.class */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private static Method f5788a;

    /* renamed from: b  reason: collision with root package name */
    private static Method f5789b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f5790c;

    private b() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Canvas canvas, boolean z) {
        Method method;
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            if (z) {
                canvas.enableZ();
            } else {
                canvas.disableZ();
            }
        } else if (Build.VERSION.SDK_INT != 28) {
            if (!f5790c) {
                try {
                    Method declaredMethod = Canvas.class.getDeclaredMethod("insertReorderBarrier", new Class[0]);
                    f5788a = declaredMethod;
                    declaredMethod.setAccessible(true);
                    Method declaredMethod2 = Canvas.class.getDeclaredMethod("insertInorderBarrier", new Class[0]);
                    f5789b = declaredMethod2;
                    declaredMethod2.setAccessible(true);
                } catch (NoSuchMethodException e) {
                }
                f5790c = true;
            }
            if (z) {
                try {
                    Method method2 = f5788a;
                    if (method2 != null) {
                        method2.invoke(canvas, new Object[0]);
                    }
                } catch (IllegalAccessException e2) {
                    return;
                } catch (InvocationTargetException e3) {
                    throw new RuntimeException(e3.getCause());
                }
            }
            if (!z && (method = f5789b) != null) {
                method.invoke(canvas, new Object[0]);
            }
        } else {
            throw new IllegalStateException("This method doesn't work on Pie!");
        }
    }
}
