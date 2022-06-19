package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$f.class */
public class SwipeRefreshLayout$f extends Animation {

    /* renamed from: a */
    public final /* synthetic */ SwipeRefreshLayout f1477a;

    public SwipeRefreshLayout$f(SwipeRefreshLayout swipeRefreshLayout) {
        this.f1477a = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        SwipeRefreshLayout swipeRefreshLayout = this.f1477a;
        int abs = !swipeRefreshLayout.L ? swipeRefreshLayout.B - Math.abs(swipeRefreshLayout.A) : swipeRefreshLayout.B;
        SwipeRefreshLayout swipeRefreshLayout2 = this.f1477a;
        int i = swipeRefreshLayout2.y;
        this.f1477a.setTargetOffsetTopAndBottom((i + ((int) ((abs - i) * f))) - swipeRefreshLayout2.w.getTop());
        this.f1477a.D.e(1.0f - f);
    }
}
