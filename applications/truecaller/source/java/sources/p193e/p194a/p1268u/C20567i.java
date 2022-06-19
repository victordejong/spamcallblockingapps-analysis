package p193e.p194a.p1268u;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
/* renamed from: e.a.u.i */
/* loaded from: classes16-dex2jar.jar:e/a/u/i.class */
public final class C20567i extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ View f57659a;

    public C20567i(View view) {
        this.f57659a = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        this.f57659a.setVisibility(0);
    }
}
