package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$e.class */
class SwipeRefreshLayout$e implements Animation.AnimationListener {

    /* renamed from: a */
    final /* synthetic */ SwipeRefreshLayout f2579a;

    SwipeRefreshLayout$e(SwipeRefreshLayout swipeRefreshLayout) {
        this.f2579a = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        SwipeRefreshLayout swipeRefreshLayout = this.f2579a;
        if (!swipeRefreshLayout.s) {
            swipeRefreshLayout.w((Animation.AnimationListener) null);
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
