package androidx.transition;

import android.view.ViewGroup;
/* renamed from: androidx.transition.r */
/* loaded from: classes-dex2jar.jar:androidx/transition/r.class */
public class C1162r {

    /* renamed from: a */
    private ViewGroup f4965a;

    /* renamed from: b */
    private Runnable f4966b;

    /* renamed from: b */
    public static C1162r m30835b(ViewGroup viewGroup) {
        return (C1162r) viewGroup.getTag(C1158p.transition_current_scene);
    }

    /* renamed from: c */
    public static void m30834c(ViewGroup viewGroup, C1162r c1162r) {
        viewGroup.setTag(C1158p.transition_current_scene, c1162r);
    }

    /* renamed from: a */
    public void m30836a() {
        Runnable runnable;
        if (m30835b(this.f4965a) != this || (runnable = this.f4966b) == null) {
            return;
        }
        runnable.run();
    }
}
