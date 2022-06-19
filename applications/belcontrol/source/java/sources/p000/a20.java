package p000;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.os.Build;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: a20 */
/* loaded from: classes-dex2jar.jar:a20.class */
public class a20 {

    /* renamed from: a */
    public static Method f35a;

    /* renamed from: b */
    public static Method f36b;

    /* renamed from: c */
    public static boolean f37c;

    @SuppressLint({"SoonBlockedPrivateApi"})
    /* renamed from: a */
    public static void m7408a(Canvas canvas, boolean z) {
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
            if (!f37c) {
                try {
                    Method declaredMethod = Canvas.class.getDeclaredMethod("insertReorderBarrier", new Class[0]);
                    f35a = declaredMethod;
                    declaredMethod.setAccessible(true);
                    Method declaredMethod2 = Canvas.class.getDeclaredMethod("insertInorderBarrier", new Class[0]);
                    f36b = declaredMethod2;
                    declaredMethod2.setAccessible(true);
                } catch (NoSuchMethodException e) {
                }
                f37c = true;
            }
            if (z) {
                try {
                    Method method2 = f35a;
                    if (method2 != null) {
                        method2.invoke(canvas, new Object[0]);
                    }
                } catch (IllegalAccessException e2) {
                    return;
                } catch (InvocationTargetException e3) {
                    throw new RuntimeException(e3.getCause());
                }
            }
            if (z || (method = f36b) == null) {
                return;
            }
            method.invoke(canvas, new Object[0]);
        }
    }
}
