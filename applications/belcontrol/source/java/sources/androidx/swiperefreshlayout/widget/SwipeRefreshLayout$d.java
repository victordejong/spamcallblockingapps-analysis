package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$d.class */
public class SwipeRefreshLayout$d extends Animation {

    /* renamed from: a */
    public final /* synthetic */ int f1473a;

    /* renamed from: b */
    public final /* synthetic */ int f1474b;

    /* renamed from: c */
    public final /* synthetic */ SwipeRefreshLayout f1475c;

    public SwipeRefreshLayout$d(SwipeRefreshLayout swipeRefreshLayout, int i, int i2) {
        this.f1475c = swipeRefreshLayout;
        this.f1473a = i;
        this.f1474b = i2;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        y10 y10Var = this.f1475c.D;
        int i = this.f1473a;
        y10Var.setAlpha((int) (i + ((this.f1474b - i) * f)));
    }
}
