package androidx.p045j;

import android.view.ViewGroup;
import androidx.p045j.C0803j;
/* renamed from: androidx.j.l */
/* loaded from: classes-dex2jar.jar:androidx/j/l.class */
public class C0806l {

    /* renamed from: a */
    private ViewGroup f2758a;

    /* renamed from: b */
    private Runnable f2759b;

    /* renamed from: a */
    public static C0806l m19425a(ViewGroup viewGroup) {
        return (C0806l) viewGroup.getTag(C0803j.C0804a.transition_current_scene);
    }

    /* renamed from: a */
    public static void m19424a(ViewGroup viewGroup, C0806l c0806l) {
        viewGroup.setTag(C0803j.C0804a.transition_current_scene, c0806l);
    }

    /* renamed from: a */
    public void m19426a() {
        if (m19425a(this.f2758a) != this || this.f2759b == null) {
            return;
        }
        this.f2759b.run();
    }
}
