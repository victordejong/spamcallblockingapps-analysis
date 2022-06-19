package androidx.transition;

import android.annotation.SuppressLint;
import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.transition.k0 */
/* loaded from: classes-dex2jar.jar:androidx/transition/k0.class */
public class C1148k0 extends C1159p0 {

    /* renamed from: f */
    private static boolean f4945f = true;

    @Override // androidx.transition.C1159p0
    /* renamed from: a */
    public void mo30851a(View view) {
    }

    @Override // androidx.transition.C1159p0
    @SuppressLint({"NewApi"})
    /* renamed from: c */
    public float mo30849c(View view) {
        if (f4945f) {
            try {
                return view.getTransitionAlpha();
            } catch (NoSuchMethodError e) {
                f4945f = false;
            }
        }
        return view.getAlpha();
    }

    @Override // androidx.transition.C1159p0
    /* renamed from: d */
    public void mo30848d(View view) {
    }

    @Override // androidx.transition.C1159p0
    @SuppressLint({"NewApi"})
    /* renamed from: g */
    public void mo30845g(View view, float f) {
        if (f4945f) {
            try {
                view.setTransitionAlpha(f);
                return;
            } catch (NoSuchMethodError e) {
                f4945f = false;
            }
        }
        view.setAlpha(f);
    }
}
