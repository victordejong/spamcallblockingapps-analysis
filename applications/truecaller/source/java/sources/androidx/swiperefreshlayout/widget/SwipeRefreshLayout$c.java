package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;
import p1727n3.p1786f0.p1787a.C26171d;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$c.class */
public class SwipeRefreshLayout$c extends Animation {

    /* renamed from: a */
    public final /* synthetic */ int f1428a;

    /* renamed from: b */
    public final /* synthetic */ int f1429b;

    /* renamed from: c */
    public final /* synthetic */ SwipeRefreshLayout f1430c;

    public SwipeRefreshLayout$c(SwipeRefreshLayout swipeRefreshLayout, int i, int i2) {
        this.f1430c = swipeRefreshLayout;
        this.f1428a = i;
        this.f1429b = i2;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        C26171d c26171d = this.f1430c.z;
        int i = this.f1428a;
        c26171d.setAlpha((int) (((this.f1429b - i) * f) + i));
    }
}
