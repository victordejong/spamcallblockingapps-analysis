package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$d.class */
class SwipeRefreshLayout$d extends Animation {

    /* renamed from: b */
    final /* synthetic */ int f2576b;

    /* renamed from: c */
    final /* synthetic */ int f2577c;

    /* renamed from: d */
    final /* synthetic */ SwipeRefreshLayout f2578d;

    SwipeRefreshLayout$d(SwipeRefreshLayout swipeRefreshLayout, int i, int i2) {
        this.f2578d = swipeRefreshLayout;
        this.f2576b = i;
        this.f2577c = i2;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        C0476b c0476b = this.f2578d.C;
        int i = this.f2576b;
        c0476b.setAlpha((int) (i + ((this.f2577c - i) * f)));
    }
}
