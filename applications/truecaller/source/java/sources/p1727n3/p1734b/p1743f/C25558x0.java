package p1727n3.p1734b.p1743f;

import android.graphics.Rect;
import android.view.View;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
/* renamed from: n3.b.f.x0 */
/* loaded from: classes-dex2jar.jar:n3/b/f/x0.class */
public class C25558x0 {

    /* renamed from: a */
    public static Method f71542a;

    static {
        try {
            Method declaredMethod = View.class.getDeclaredMethod("computeFitSystemWindows", Rect.class, Rect.class);
            f71542a = declaredMethod;
            if (declaredMethod.isAccessible()) {
                return;
            }
            f71542a.setAccessible(true);
        } catch (NoSuchMethodException e) {
        }
    }

    /* renamed from: a */
    public static boolean m3244a(View view) {
        AtomicInteger atomicInteger = C26614s.f74505a;
        boolean z = true;
        if (view.getLayoutDirection() != 1) {
            z = false;
        }
        return z;
    }
}
