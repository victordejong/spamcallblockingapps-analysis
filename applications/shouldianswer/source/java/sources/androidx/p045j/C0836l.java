package androidx.p045j;

import android.view.View;
import android.view.ViewGroup;
import androidx.p045j.C0833j;
/* renamed from: androidx.j.l */
/* loaded from: classes-dex2jar.jar:androidx/j/l.class */
public class C0836l {

    /* renamed from: a */
    private ViewGroup f2658a;

    /* renamed from: b */
    private Runnable f2659b;

    /* renamed from: a */
    public static C0836l m5260a(View view) {
        return (C0836l) view.getTag(C0833j.C0834a.transition_current_scene);
    }

    /* renamed from: a */
    public static void m5259a(View view, C0836l c0836l) {
        view.setTag(C0833j.C0834a.transition_current_scene, c0836l);
    }

    /* renamed from: a */
    public void m5261a() {
        Runnable runnable;
        if (m5260a(this.f2658a) != this || (runnable = this.f2659b) == null) {
            return;
        }
        runnable.run();
    }
}
