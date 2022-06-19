package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$a.class */
public class SwipeRefreshLayout$a implements Animation.AnimationListener {

    /* renamed from: a */
    public final /* synthetic */ SwipeRefreshLayout f1470a;

    public SwipeRefreshLayout$a(SwipeRefreshLayout swipeRefreshLayout) {
        this.f1470a = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        SwipeRefreshLayout$j swipeRefreshLayout$j;
        SwipeRefreshLayout swipeRefreshLayout = this.f1470a;
        if (!swipeRefreshLayout.c) {
            swipeRefreshLayout.k();
            return;
        }
        swipeRefreshLayout.D.setAlpha(255);
        this.f1470a.D.start();
        SwipeRefreshLayout swipeRefreshLayout2 = this.f1470a;
        if (swipeRefreshLayout2.J && (swipeRefreshLayout$j = swipeRefreshLayout2.b) != null) {
            swipeRefreshLayout$j.m6025a();
        }
        SwipeRefreshLayout swipeRefreshLayout3 = this.f1470a;
        swipeRefreshLayout3.o = swipeRefreshLayout3.w.getTop();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
