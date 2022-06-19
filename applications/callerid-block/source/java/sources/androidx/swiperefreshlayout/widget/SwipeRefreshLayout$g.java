package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$g.class */
class SwipeRefreshLayout$g extends Animation {

    /* renamed from: b */
    final /* synthetic */ SwipeRefreshLayout f2581b;

    SwipeRefreshLayout$g(SwipeRefreshLayout swipeRefreshLayout) {
        this.f2581b = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        this.f2581b.o(f);
    }
}
