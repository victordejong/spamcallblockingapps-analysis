package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$h.class */
class SwipeRefreshLayout$h extends Animation {

    /* renamed from: b */
    final /* synthetic */ SwipeRefreshLayout f2582b;

    SwipeRefreshLayout$h(SwipeRefreshLayout swipeRefreshLayout) {
        this.f2582b = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        SwipeRefreshLayout swipeRefreshLayout = this.f2582b;
        float f2 = swipeRefreshLayout.y;
        swipeRefreshLayout.setAnimationProgress(f2 + ((-f2) * f));
        this.f2582b.o(f);
    }
}
