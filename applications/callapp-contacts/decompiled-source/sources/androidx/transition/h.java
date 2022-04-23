package androidx.transition;

import android.graphics.Matrix;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/transition/h.class */
final class h implements f {

    /* renamed from: a  reason: collision with root package name */
    static Class<?> f5810a;

    /* renamed from: b  reason: collision with root package name */
    static Method f5811b;

    /* renamed from: c  reason: collision with root package name */
    static boolean f5812c;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f5813d;
    private static Method e;
    private static boolean f;
    private final View g;

    private h(View view) {
        this.g = view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static f a(View view, ViewGroup viewGroup, Matrix matrix) {
        if (!f) {
            try {
                a();
                Method declaredMethod = f5810a.getDeclaredMethod("addGhost", View.class, ViewGroup.class, Matrix.class);
                e = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e2) {
            }
            f = true;
        }
        Method method = e;
        if (method == null) {
            return null;
        }
        try {
            return new h((View) method.invoke(null, view, viewGroup, matrix));
        } catch (IllegalAccessException e3) {
            return null;
        } catch (InvocationTargetException e4) {
            throw new RuntimeException(e4.getCause());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        if (!f5813d) {
            try {
                f5810a = Class.forName("android.view.GhostView");
            } catch (ClassNotFoundException e2) {
            }
            f5813d = true;
        }
    }

    @Override // androidx.transition.f
    public final void a(ViewGroup viewGroup, View view) {
    }

    @Override // androidx.transition.f
    public final void setVisibility(int i) {
        this.g.setVisibility(i);
    }
}
