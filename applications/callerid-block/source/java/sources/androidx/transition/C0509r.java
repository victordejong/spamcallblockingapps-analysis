package androidx.transition;

import android.view.ViewGroup;
/* renamed from: androidx.transition.r */
/* loaded from: classes-dex2jar.jar:androidx/transition/r.class */
public class C0509r {

    /* renamed from: a */
    private ViewGroup f2755a;

    /* renamed from: b */
    private Runnable f2756b;

    /* renamed from: b */
    public static C0509r m11988b(ViewGroup viewGroup) {
        return (C0509r) viewGroup.getTag(C0506p.transition_current_scene);
    }

    /* renamed from: c */
    public static void m11987c(ViewGroup viewGroup, C0509r c0509r) {
        viewGroup.setTag(C0506p.transition_current_scene, c0509r);
    }

    /* renamed from: a */
    public void m11989a() {
        Runnable runnable;
        if (m11988b(this.f2755a) != this || (runnable = this.f2756b) == null) {
            return;
        }
        runnable.run();
    }
}
