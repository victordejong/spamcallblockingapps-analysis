package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$a.class */
class SwipeRefreshLayout$a implements Animation.AnimationListener {

    /* renamed from: a */
    final /* synthetic */ SwipeRefreshLayout f2573a;

    SwipeRefreshLayout$a(SwipeRefreshLayout swipeRefreshLayout) {
        this.f2573a = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        SwipeRefreshLayout$j swipeRefreshLayout$j;
        SwipeRefreshLayout swipeRefreshLayout = this.f2573a;
        if (!swipeRefreshLayout.d) {
            swipeRefreshLayout.q();
            return;
        }
        swipeRefreshLayout.C.setAlpha(255);
        this.f2573a.C.start();
        SwipeRefreshLayout swipeRefreshLayout2 = this.f2573a;
        if (swipeRefreshLayout2.I && (swipeRefreshLayout$j = swipeRefreshLayout2.c) != null) {
            swipeRefreshLayout$j.m12194a();
        }
        SwipeRefreshLayout swipeRefreshLayout3 = this.f2573a;
        swipeRefreshLayout3.n = swipeRefreshLayout3.v.getTop();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
