package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$g.class */
public class SwipeRefreshLayout$g extends Animation {

    /* renamed from: a */
    public final /* synthetic */ SwipeRefreshLayout f1478a;

    public SwipeRefreshLayout$g(SwipeRefreshLayout swipeRefreshLayout) {
        this.f1478a = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        this.f1478a.i(f);
    }
}
