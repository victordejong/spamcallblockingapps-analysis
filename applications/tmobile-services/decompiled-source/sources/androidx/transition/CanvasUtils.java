package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.os.Build;
import androidx.annotation.NonNull;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/transition/CanvasUtils.class */
class CanvasUtils {

    /* renamed from: a */
    private static Method f5065a;

    /* renamed from: b */
    private static Method f5066b;

    /* renamed from: c */
    private static boolean f5067c;

    private CanvasUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"SoonBlockedPrivateApi"})
    /* renamed from: a */
    public static void m16904a(@NonNull Canvas canvas, boolean z) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            if (i >= 29) {
                if (z) {
                    canvas.enableZ();
                } else {
                    canvas.disableZ();
                }
            } else if (i != 28) {
                if (!f5067c) {
                    try {
                        Method declaredMethod = Canvas.class.getDeclaredMethod("insertReorderBarrier", new Class[0]);
                        f5065a = declaredMethod;
                        declaredMethod.setAccessible(true);
                        Method declaredMethod2 = Canvas.class.getDeclaredMethod("insertInorderBarrier", new Class[0]);
                        f5066b = declaredMethod2;
                        declaredMethod2.setAccessible(true);
                    } catch (NoSuchMethodException e) {
                    }
                    f5067c = true;
                }
                if (z) {
                    try {
                        if (f5065a != null) {
                            f5065a.invoke(canvas, new Object[0]);
                        }
                    } catch (IllegalAccessException e2) {
                        return;
                    } catch (InvocationTargetException e3) {
                        throw new RuntimeException(e3.getCause());
                    }
                }
                if (!z && f5066b != null) {
                    f5066b.invoke(canvas, new Object[0]);
                }
            } else {
                throw new IllegalStateException("This method doesn't work on Pie!");
            }
        }
    }
}
