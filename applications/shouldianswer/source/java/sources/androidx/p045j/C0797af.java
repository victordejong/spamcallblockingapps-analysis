package androidx.p045j;

import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.j.af */
/* loaded from: classes-dex2jar.jar:androidx/j/af.class */
public class C0797af extends C0800ai {

    /* renamed from: a */
    private static Method f2567a;

    /* renamed from: b */
    private static boolean f2568b;

    /* renamed from: c */
    private static Method f2569c;

    /* renamed from: d */
    private static boolean f2570d;

    /* renamed from: a */
    private void m5324a() {
        if (!f2568b) {
            try {
                f2567a = View.class.getDeclaredMethod("setTransitionAlpha", Float.TYPE);
                f2567a.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi19", "Failed to retrieve setTransitionAlpha method", e);
            }
            f2568b = true;
        }
    }

    /* renamed from: b */
    private void m5323b() {
        if (!f2570d) {
            try {
                f2569c = View.class.getDeclaredMethod("getTransitionAlpha", new Class[0]);
                f2569c.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi19", "Failed to retrieve getTransitionAlpha method", e);
            }
            f2570d = true;
        }
    }

    @Override // androidx.p045j.C0800ai
    /* renamed from: a */
    public float mo5319a(View view) {
        m5323b();
        Method method = f2569c;
        if (method != null) {
            try {
                return ((Float) method.invoke(view, new Object[0])).floatValue();
            } catch (IllegalAccessException e) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
        return super.mo5319a(view);
    }

    @Override // androidx.p045j.C0800ai
    /* renamed from: a */
    public void mo5318a(View view, float f) {
        m5324a();
        Method method = f2567a;
        if (method == null) {
            view.setAlpha(f);
            return;
        }
        try {
            method.invoke(view, Float.valueOf(f));
        } catch (IllegalAccessException e) {
        } catch (InvocationTargetException e2) {
            throw new RuntimeException(e2.getCause());
        }
    }

    @Override // androidx.p045j.C0800ai
    /* renamed from: b */
    public void mo5315b(View view) {
    }

    @Override // androidx.p045j.C0800ai
    /* renamed from: c */
    public void mo5313c(View view) {
    }
}
