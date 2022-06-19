package p1727n3.p1874y.p1908e;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: n3.y.e.p */
/* loaded from: classes-dex2jar.jar:n3/y/e/p.class */
public class C27534p extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ k f77566a;

    public C27534p(k kVar) {
        this.f77566a = kVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        k kVar = this.f77566a;
        kVar.p = 1;
        if (kVar.z) {
            kVar.post(kVar.L0);
            this.f77566a.z = false;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f77566a.p = 3;
    }
}
