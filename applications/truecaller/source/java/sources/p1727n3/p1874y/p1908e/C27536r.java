package p1727n3.p1874y.p1908e;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: n3.y.e.r */
/* loaded from: classes-dex2jar.jar:n3/y/e/r.class */
public class C27536r extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ k f77568a;

    public C27536r(k kVar) {
        this.f77568a = kVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        k kVar = this.f77568a;
        kVar.p = 2;
        if (kVar.z) {
            kVar.post(kVar.L0);
            this.f77568a.z = false;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f77568a.p = 3;
    }
}
