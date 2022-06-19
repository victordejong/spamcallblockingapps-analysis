package p193e.p1577m.p1578a.p1677g.p1680b;

import android.animation.ValueAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
/* renamed from: e.m.a.g.b.c */
/* loaded from: classes3-dex2jar.jar:e/m/a/g/b/c.class */
public class C25170c implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ CoordinatorLayout f70422a;

    /* renamed from: b */
    public final /* synthetic */ AppBarLayout f70423b;

    /* renamed from: c */
    public final /* synthetic */ AppBarLayout.BaseBehavior f70424c;

    public C25170c(AppBarLayout.BaseBehavior baseBehavior, CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
        this.f70424c = baseBehavior;
        this.f70422a = coordinatorLayout;
        this.f70423b = appBarLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f70424c.F(this.f70422a, this.f70423b, ((Integer) valueAnimator.getAnimatedValue()).intValue());
    }
}
