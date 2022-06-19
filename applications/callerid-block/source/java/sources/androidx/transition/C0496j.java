package androidx.transition;

import android.graphics.Matrix;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: androidx.transition.j */
/* loaded from: classes-dex2jar.jar:androidx/transition/j.class */
class C0496j {
    /* renamed from: a */
    static AbstractC0491f m12025a(View view, ViewGroup viewGroup, Matrix matrix) {
        return Build.VERSION.SDK_INT == 28 ? h.b(view, viewGroup, matrix) : i.b(view, viewGroup, matrix);
    }

    /* renamed from: b */
    static void m12024b(View view) {
        if (Build.VERSION.SDK_INT == 28) {
            h.f(view);
        } else {
            i.f(view);
        }
    }
}
