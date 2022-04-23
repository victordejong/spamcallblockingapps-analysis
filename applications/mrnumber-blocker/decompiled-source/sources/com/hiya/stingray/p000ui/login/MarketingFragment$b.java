package com.hiya.stingray.p000ui.login;

import android.animation.Animator;
/* renamed from: com.hiya.stingray.ui.login.MarketingFragment$b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/login/MarketingFragment$b.class */
class MarketingFragment$b implements Animator.AnimatorListener {

    /* renamed from: a */
    final /* synthetic */ boolean f2a;

    /* renamed from: b */
    final /* synthetic */ MarketingFragment f3b;

    MarketingFragment$b(MarketingFragment marketingFragment, boolean z) {
        this.f3b = marketingFragment;
        this.f2a = z;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        MarketingFragment.g1(this.f3b, this.f2a);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        MarketingFragment.g1(this.f3b, this.f2a);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
    }
}
