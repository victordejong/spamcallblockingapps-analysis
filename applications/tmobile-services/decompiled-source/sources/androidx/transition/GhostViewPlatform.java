package androidx.transition;

import android.graphics.Matrix;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
@RequiresApi
/* loaded from: classes-dex2jar.jar:androidx/transition/GhostViewPlatform.class */
class GhostViewPlatform implements GhostView {

    /* renamed from: g */
    private static Class<?> f5159g;

    /* renamed from: h */
    private static boolean f5160h;

    /* renamed from: i */
    private static Method f5161i;

    /* renamed from: j */
    private static boolean f5162j;

    /* renamed from: k */
    private static Method f5163k;

    /* renamed from: l */
    private static boolean f5164l;

    /* renamed from: f */
    private final View f5165f;

    private GhostViewPlatform(@NonNull View view) {
        this.f5165f = view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static GhostView m16825b(View view, ViewGroup viewGroup, Matrix matrix) {
        m16824c();
        Method method = f5161i;
        if (method == null) {
            return null;
        }
        try {
            return new GhostViewPlatform((View) method.invoke(null, view, viewGroup, matrix));
        } catch (IllegalAccessException e) {
            return null;
        } catch (InvocationTargetException e2) {
            throw new RuntimeException(e2.getCause());
        }
    }

    /* renamed from: c */
    private static void m16824c() {
        if (!f5162j) {
            try {
                m16823d();
                Method declaredMethod = f5159g.getDeclaredMethod("addGhost", View.class, ViewGroup.class, Matrix.class);
                f5161i = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("GhostViewApi21", "Failed to retrieve addGhost method", e);
            }
            f5162j = true;
        }
    }

    /* renamed from: d */
    private static void m16823d() {
        if (!f5160h) {
            try {
                f5159g = Class.forName("android.view.GhostView");
            } catch (ClassNotFoundException e) {
                Log.i("GhostViewApi21", "Failed to retrieve GhostView class", e);
            }
            f5160h = true;
        }
    }

    /* renamed from: e */
    private static void m16822e() {
        if (!f5164l) {
            try {
                m16823d();
                Method declaredMethod = f5159g.getDeclaredMethod("removeGhost", View.class);
                f5163k = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("GhostViewApi21", "Failed to retrieve removeGhost method", e);
            }
            f5164l = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static void m16821f(View view) {
        m16822e();
        Method method = f5163k;
        if (method != null) {
            try {
                method.invoke(null, view);
            } catch (IllegalAccessException e) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    @Override // androidx.transition.GhostView
    /* renamed from: a */
    public void mo16820a(ViewGroup viewGroup, View view) {
    }

    @Override // androidx.transition.GhostView
    public void setVisibility(int i) {
        this.f5165f.setVisibility(i);
    }
}
