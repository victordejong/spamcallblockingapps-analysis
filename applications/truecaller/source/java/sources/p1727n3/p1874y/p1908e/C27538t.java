package p1727n3.p1874y.p1908e;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: n3.y.e.t */
/* loaded from: classes-dex2jar.jar:n3/y/e/t.class */
public class C27538t extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ k f77570a;

    public C27538t(k kVar) {
        this.f77570a = kVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f77570a.p = 0;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f77570a.p = 3;
    }
}
