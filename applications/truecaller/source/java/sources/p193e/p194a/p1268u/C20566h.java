package p193e.p194a.p1268u;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
/* renamed from: e.a.u.h */
/* loaded from: classes16-dex2jar.jar:e/a/u/h.class */
public final class C20566h extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ View f57658a;

    public C20566h(View view) {
        this.f57658a = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        this.f57658a.setVisibility(8);
    }
}
