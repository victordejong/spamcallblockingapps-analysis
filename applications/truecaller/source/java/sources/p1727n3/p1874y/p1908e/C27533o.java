package p1727n3.p1874y.p1908e;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: n3.y.e.o */
/* loaded from: classes-dex2jar.jar:n3/y/e/o.class */
public class C27533o extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ k f77565a;

    public C27533o(k kVar) {
        this.f77565a = kVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f77565a.J.setVisibility(0);
        this.f77565a.N.setVisibility(0);
    }
}
