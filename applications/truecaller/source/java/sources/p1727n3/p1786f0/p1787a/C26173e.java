package p1727n3.p1786f0.p1787a;

import android.view.animation.Animation;
import android.view.animation.Transformation;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
/* renamed from: n3.f0.a.e */
/* loaded from: classes-dex2jar.jar:n3/f0/a/e.class */
public class C26173e extends Animation {

    /* renamed from: a */
    public final /* synthetic */ SwipeRefreshLayout f72982a;

    public C26173e(SwipeRefreshLayout swipeRefreshLayout) {
        this.f72982a = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        this.f72982a.setAnimationProgress(f);
    }
}
