package p193e.p194a.p1164r.p1182x;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.ViewGroup;
/* renamed from: e.a.r.x.o */
/* loaded from: classes16-dex2jar.jar:e/a/r/x/o.class */
public class C19785o extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ n f54831a;

    public C19785o(n nVar) {
        this.f54831a = nVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        ViewGroup viewGroup = (ViewGroup) this.f54831a.getView();
        if (viewGroup != null) {
            viewGroup.removeViewAt(1);
        }
    }
}
