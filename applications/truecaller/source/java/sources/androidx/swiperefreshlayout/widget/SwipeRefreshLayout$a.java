package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$a.class */
public class SwipeRefreshLayout$a implements Animation.AnimationListener {

    /* renamed from: a */
    public final /* synthetic */ SwipeRefreshLayout f1426a;

    public SwipeRefreshLayout$a(SwipeRefreshLayout swipeRefreshLayout) {
        this.f1426a = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        SwipeRefreshLayout$h swipeRefreshLayout$h;
        SwipeRefreshLayout swipeRefreshLayout = this.f1426a;
        if (!swipeRefreshLayout.c) {
            swipeRefreshLayout.h();
            return;
        }
        swipeRefreshLayout.z.setAlpha(255);
        this.f1426a.z.start();
        SwipeRefreshLayout swipeRefreshLayout2 = this.f1426a;
        if (swipeRefreshLayout2.E && (swipeRefreshLayout$h = swipeRefreshLayout2.b) != null) {
            swipeRefreshLayout$h.mo10874a();
        }
        SwipeRefreshLayout swipeRefreshLayout3 = this.f1426a;
        swipeRefreshLayout3.n = swipeRefreshLayout3.t.getTop();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
