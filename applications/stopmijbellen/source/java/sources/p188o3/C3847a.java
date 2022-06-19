package p188o3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: o3.a */
/* loaded from: classes-dex2jar.jar:o3/a.class */
public final class C3847a extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ AbstractC3850d f12337a;

    public C3847a(AbstractC3850d abstractC3850d) {
        this.f12337a = abstractC3850d;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f12337a.mo1518a();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f12337a.mo1517b();
    }
}
