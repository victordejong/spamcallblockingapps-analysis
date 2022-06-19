package androidx.transition;

import android.graphics.Matrix;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: androidx.transition.j */
/* loaded from: classes-dex2jar.jar:androidx/transition/j.class */
class C1143j {
    /* renamed from: a */
    public static AbstractC1132f m30876a(View view, ViewGroup viewGroup, Matrix matrix) {
        return Build.VERSION.SDK_INT == 28 ? C1138h.m30891b(view, viewGroup, matrix) : C1140i.m30885b(view, viewGroup, matrix);
    }

    /* renamed from: b */
    public static void m30875b(View view) {
        if (Build.VERSION.SDK_INT == 28) {
            C1138h.m30887f(view);
        } else {
            C1140i.m30881f(view);
        }
    }
}
