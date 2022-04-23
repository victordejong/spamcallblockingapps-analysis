package androidx.transition;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/transition/aj.class */
class aj extends ao {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f5775a = true;

    @Override // androidx.transition.ao
    public float a(View view) {
        if (f5775a) {
            try {
                return view.getTransitionAlpha();
            } catch (NoSuchMethodError e) {
                f5775a = false;
            }
        }
        return view.getAlpha();
    }

    @Override // androidx.transition.ao
    public void a(View view, float f) {
        if (f5775a) {
            try {
                view.setTransitionAlpha(f);
                return;
            } catch (NoSuchMethodError e) {
                f5775a = false;
            }
        }
        view.setAlpha(f);
    }

    @Override // androidx.transition.ao
    public final void b(View view) {
    }

    @Override // androidx.transition.ao
    public final void c(View view) {
    }
}
