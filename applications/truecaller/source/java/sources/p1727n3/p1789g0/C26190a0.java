package p1727n3.p1789g0;

import android.view.View;
/* renamed from: n3.g0.a0 */
/* loaded from: classes-dex2jar.jar:n3/g0/a0.class */
public class C26190a0 extends C26200f0 {

    /* renamed from: c */
    public static boolean f73035c = true;

    @Override // p1727n3.p1789g0.C26200f0
    /* renamed from: a */
    public void mo2559a(View view) {
    }

    @Override // p1727n3.p1789g0.C26200f0
    /* renamed from: b */
    public float mo2558b(View view) {
        if (f73035c) {
            try {
                return view.getTransitionAlpha();
            } catch (NoSuchMethodError e) {
                f73035c = false;
            }
        }
        return view.getAlpha();
    }

    @Override // p1727n3.p1789g0.C26200f0
    /* renamed from: c */
    public void mo2557c(View view) {
    }

    @Override // p1727n3.p1789g0.C26200f0
    /* renamed from: e */
    public void mo2555e(View view, float f) {
        if (f73035c) {
            try {
                view.setTransitionAlpha(f);
                return;
            } catch (NoSuchMethodError e) {
                f73035c = false;
            }
        }
        view.setAlpha(f);
    }
}
