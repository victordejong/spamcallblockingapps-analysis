package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$b.class */
public class SwipeRefreshLayout$b extends Animation {

    /* renamed from: a */
    public final /* synthetic */ SwipeRefreshLayout f1427a;

    public SwipeRefreshLayout$b(SwipeRefreshLayout swipeRefreshLayout) {
        this.f1427a = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        this.f1427a.setAnimationProgress(1.0f - f);
    }
}
