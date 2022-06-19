package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$c.class */
public class SwipeRefreshLayout$c extends Animation {

    /* renamed from: a */
    public final /* synthetic */ SwipeRefreshLayout f1472a;

    public SwipeRefreshLayout$c(SwipeRefreshLayout swipeRefreshLayout) {
        this.f1472a = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        this.f1472a.setAnimationProgress(1.0f - f);
    }
}
