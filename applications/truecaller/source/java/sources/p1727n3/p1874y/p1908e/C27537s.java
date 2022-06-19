package p1727n3.p1874y.p1908e;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: n3.y.e.s */
/* loaded from: classes-dex2jar.jar:n3/y/e/s.class */
public class C27537s extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ k f77569a;

    public C27537s(k kVar) {
        this.f77569a = kVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f77569a.p = 0;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f77569a.p = 3;
    }
}
