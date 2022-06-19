package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$f.class */
public class SwipeRefreshLayout$f extends Animation {

    /* renamed from: a */
    public final /* synthetic */ SwipeRefreshLayout f1433a;

    public SwipeRefreshLayout$f(SwipeRefreshLayout swipeRefreshLayout) {
        this.f1433a = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        this.f1433a.f(f);
    }
}
