package p1727n3.p1874y.p1908e;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: n3.y.e.q */
/* loaded from: classes-dex2jar.jar:n3/y/e/q.class */
public class C27535q extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ k f77567a;

    public C27535q(k kVar) {
        this.f77567a = kVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        k kVar = this.f77567a;
        kVar.p = 2;
        if (kVar.z) {
            kVar.post(kVar.L0);
            this.f77567a.z = false;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f77567a.p = 3;
    }
}
