package androidx.transition;

import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.transition.aj */
/* loaded from: classes-dex2jar.jar:androidx/transition/aj.class */
public class C2870aj extends C2875ao {

    /* renamed from: a */
    private static boolean f10835a = true;

    @Override // androidx.transition.C2875ao
    /* renamed from: a */
    public float mo39733a(View view) {
        if (f10835a) {
            try {
                return view.getTransitionAlpha();
            } catch (NoSuchMethodError e) {
                f10835a = false;
            }
        }
        return view.getAlpha();
    }

    @Override // androidx.transition.C2875ao
    /* renamed from: a */
    public void mo39732a(View view, float f) {
        if (f10835a) {
            try {
                view.setTransitionAlpha(f);
                return;
            } catch (NoSuchMethodError e) {
                f10835a = false;
            }
        }
        view.setAlpha(f);
    }

    @Override // androidx.transition.C2875ao
    /* renamed from: b */
    public final void mo39728b(View view) {
    }

    @Override // androidx.transition.C2875ao
    /* renamed from: c */
    public final void mo39726c(View view) {
    }
}
