package p153l1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: l1.i */
/* loaded from: classes-dex2jar.jar:l1/i.class */
public class C3457i extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ AbstractC3451g f11548a;

    public C3457i(AbstractC3451g abstractC3451g) {
        this.f11548a = abstractC3451g;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f11548a.m2276m();
        animator.removeListener(this);
    }
}
