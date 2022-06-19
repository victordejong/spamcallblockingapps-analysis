package androidx.p045j;

import android.graphics.Matrix;
import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.j.ag */
/* loaded from: classes-dex2jar.jar:androidx/j/ag.class */
public class C0798ag extends C0797af {

    /* renamed from: a */
    private static Method f2571a;

    /* renamed from: b */
    private static boolean f2572b;

    /* renamed from: c */
    private static Method f2573c;

    /* renamed from: d */
    private static boolean f2574d;

    /* renamed from: a */
    private void m5322a() {
        if (!f2572b) {
            try {
                f2571a = View.class.getDeclaredMethod("transformMatrixToGlobal", Matrix.class);
                f2571a.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi21", "Failed to retrieve transformMatrixToGlobal method", e);
            }
            f2572b = true;
        }
    }

    /* renamed from: b */
    private void m5321b() {
        if (!f2574d) {
            try {
                f2573c = View.class.getDeclaredMethod("transformMatrixToLocal", Matrix.class);
                f2573c.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi21", "Failed to retrieve transformMatrixToLocal method", e);
            }
            f2574d = true;
        }
    }

    @Override // androidx.p045j.C0800ai
    /* renamed from: a */
    public void mo5316a(View view, Matrix matrix) {
        m5322a();
        Method method = f2571a;
        if (method != null) {
            try {
                method.invoke(view, matrix);
            } catch (IllegalAccessException e) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    @Override // androidx.p045j.C0800ai
    /* renamed from: b */
    public void mo5314b(View view, Matrix matrix) {
        m5321b();
        Method method = f2573c;
        if (method != null) {
            try {
                method.invoke(view, matrix);
            } catch (IllegalAccessException e) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }
}
