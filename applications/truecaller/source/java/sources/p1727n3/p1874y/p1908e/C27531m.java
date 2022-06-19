package p1727n3.p1874y.p1908e;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: n3.y.e.m */
/* loaded from: classes-dex2jar.jar:n3/y/e/m.class */
public class C27531m extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ k f77563a;

    public C27531m(k kVar) {
        this.f77563a = kVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f77563a.J.setVisibility(4);
        this.f77563a.N.setVisibility(4);
    }
}
