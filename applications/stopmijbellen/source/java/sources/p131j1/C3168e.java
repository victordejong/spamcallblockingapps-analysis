package p131j1;

import android.view.animation.Animation;
import android.view.animation.Transformation;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
/* renamed from: j1.e */
/* loaded from: classes-dex2jar.jar:j1/e.class */
public class C3168e extends Animation {

    /* renamed from: a */
    public final /* synthetic */ SwipeRefreshLayout f10670a;

    public C3168e(SwipeRefreshLayout swipeRefreshLayout) {
        this.f10670a = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        this.f10670a.setAnimationProgress(f);
    }
}
