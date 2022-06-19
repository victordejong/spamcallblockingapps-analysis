package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;
import java.util.Objects;
import p1727n3.p1786f0.p1787a.C26171d;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$e.class */
public class SwipeRefreshLayout$e extends Animation {

    /* renamed from: a */
    public final /* synthetic */ SwipeRefreshLayout f1432a;

    public SwipeRefreshLayout$e(SwipeRefreshLayout swipeRefreshLayout) {
        this.f1432a = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        Objects.requireNonNull(this.f1432a);
        SwipeRefreshLayout swipeRefreshLayout = this.f1432a;
        int i = swipeRefreshLayout.x;
        int abs = Math.abs(swipeRefreshLayout.w);
        SwipeRefreshLayout swipeRefreshLayout2 = this.f1432a;
        int i2 = swipeRefreshLayout2.v;
        int i3 = (int) (((i - abs) - i2) * f);
        this.f1432a.setTargetOffsetTopAndBottom((i2 + i3) - swipeRefreshLayout2.t.getTop());
        C26171d c26171d = this.f1432a.z;
        float f2 = 1.0f - f;
        C26171d.C26172a c26172a = c26171d.f72955a;
        if (f2 != c26172a.f72976p) {
            c26172a.f72976p = f2;
        }
        c26171d.invalidateSelf();
    }
}
