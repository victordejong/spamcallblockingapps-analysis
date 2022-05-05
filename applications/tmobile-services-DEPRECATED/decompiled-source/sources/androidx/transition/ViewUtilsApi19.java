package androidx.transition;

import android.annotation.SuppressLint;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
@RequiresApi
/* loaded from: classes-dex2jar.jar:androidx/transition/ViewUtilsApi19.class */
class ViewUtilsApi19 extends ViewUtilsBase {

    /* renamed from: f */
    private static boolean f5306f = true;

    @Override // androidx.transition.ViewUtilsBase
    /* renamed from: a */
    public void mo16676a(@NonNull View view) {
    }

    @Override // androidx.transition.ViewUtilsBase
    @SuppressLint({"NewApi"})
    /* renamed from: c */
    public float mo16674c(@NonNull View view) {
        if (f5306f) {
            try {
                return view.getTransitionAlpha();
            } catch (NoSuchMethodError e) {
                f5306f = false;
            }
        }
        return view.getAlpha();
    }

    @Override // androidx.transition.ViewUtilsBase
    /* renamed from: d */
    public void mo16673d(@NonNull View view) {
    }

    @Override // androidx.transition.ViewUtilsBase
    @SuppressLint({"NewApi"})
    /* renamed from: g */
    public void mo16670g(@NonNull View view, float f) {
        if (f5306f) {
            try {
                view.setTransitionAlpha(f);
                return;
            } catch (NoSuchMethodError e) {
                f5306f = false;
            }
        }
        view.setAlpha(f);
    }
}
