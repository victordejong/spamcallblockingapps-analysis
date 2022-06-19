package androidx.p045j;

import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.j.ah */
/* loaded from: classes-dex2jar.jar:androidx/j/ah.class */
class C0799ah extends C0798ag {

    /* renamed from: a */
    private static Method f2575a;

    /* renamed from: b */
    private static boolean f2576b;

    /* renamed from: a */
    private void m5320a() {
        if (!f2576b) {
            try {
                f2575a = View.class.getDeclaredMethod("setLeftTopRightBottom", Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE);
                f2575a.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi22", "Failed to retrieve setLeftTopRightBottom method", e);
            }
            f2576b = true;
        }
    }

    @Override // androidx.p045j.C0800ai
    /* renamed from: a */
    public void mo5317a(View view, int i, int i2, int i3, int i4) {
        m5320a();
        Method method = f2575a;
        if (method != null) {
            try {
                method.invoke(view, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
            } catch (IllegalAccessException e) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }
}
