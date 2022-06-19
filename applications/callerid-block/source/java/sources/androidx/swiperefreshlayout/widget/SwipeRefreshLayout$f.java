package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$f.class */
class SwipeRefreshLayout$f extends Animation {

    /* renamed from: b */
    final /* synthetic */ SwipeRefreshLayout f2580b;

    SwipeRefreshLayout$f(SwipeRefreshLayout swipeRefreshLayout) {
        this.f2580b = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        SwipeRefreshLayout swipeRefreshLayout = this.f2580b;
        int abs = !swipeRefreshLayout.K ? swipeRefreshLayout.A - Math.abs(swipeRefreshLayout.z) : swipeRefreshLayout.A;
        SwipeRefreshLayout swipeRefreshLayout2 = this.f2580b;
        int i = swipeRefreshLayout2.x;
        this.f2580b.setTargetOffsetTopAndBottom((i + ((int) ((abs - i) * f))) - swipeRefreshLayout2.v.getTop());
        this.f2580b.C.m12186e(1.0f - f);
    }
}
