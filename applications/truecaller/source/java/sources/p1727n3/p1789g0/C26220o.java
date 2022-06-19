package p1727n3.p1789g0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: n3.g0.o */
/* loaded from: classes-dex2jar.jar:n3/g0/o.class */
public class C26220o extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ AbstractC26214m f73109a;

    public C26220o(AbstractC26214m abstractC26214m) {
        this.f73109a = abstractC26214m;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f73109a.m2534o();
        animator.removeListener(this);
    }
}
