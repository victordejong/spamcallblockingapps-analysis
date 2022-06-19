package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$e.class */
public class SwipeRefreshLayout$e implements Animation.AnimationListener {

    /* renamed from: a */
    public final /* synthetic */ SwipeRefreshLayout f1476a;

    public SwipeRefreshLayout$e(SwipeRefreshLayout swipeRefreshLayout) {
        this.f1476a = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        SwipeRefreshLayout swipeRefreshLayout = this.f1476a;
        if (!swipeRefreshLayout.t) {
            swipeRefreshLayout.q((Animation.AnimationListener) null);
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
