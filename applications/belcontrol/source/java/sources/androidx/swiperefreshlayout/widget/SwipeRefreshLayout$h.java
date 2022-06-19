package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$h.class */
public class SwipeRefreshLayout$h extends Animation {

    /* renamed from: a */
    public final /* synthetic */ SwipeRefreshLayout f1479a;

    public SwipeRefreshLayout$h(SwipeRefreshLayout swipeRefreshLayout) {
        this.f1479a = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        SwipeRefreshLayout swipeRefreshLayout = this.f1479a;
        float f2 = swipeRefreshLayout.z;
        swipeRefreshLayout.setAnimationProgress(f2 + ((-f2) * f));
        this.f1479a.i(f);
    }
}
