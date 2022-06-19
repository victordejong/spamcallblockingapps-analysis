package p1727n3.p1807k.p1821i;

import android.content.Context;
import android.os.Build;
import android.util.TypedValue;
import android.view.ViewConfiguration;
import java.lang.reflect.Method;
/* renamed from: n3.k.i.y */
/* loaded from: classes-dex2jar.jar:n3/k/i/y.class */
public final class C26624y {

    /* renamed from: a */
    public static Method f74522a;

    static {
        if (Build.VERSION.SDK_INT == 25) {
            try {
                f74522a = ViewConfiguration.class.getDeclaredMethod("getScaledScrollFactor", new Class[0]);
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: a */
    public static float m1552a(ViewConfiguration viewConfiguration, Context context) {
        Method method;
        if (Build.VERSION.SDK_INT >= 25 && (method = f74522a) != null) {
            try {
                return ((Integer) method.invoke(viewConfiguration, new Object[0])).intValue();
            } catch (Exception e) {
            }
        }
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(16842829, typedValue, true)) {
            return typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return 0.0f;
    }
}
