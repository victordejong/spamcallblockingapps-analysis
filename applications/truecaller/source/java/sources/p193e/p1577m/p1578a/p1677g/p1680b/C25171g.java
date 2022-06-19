package p193e.p1577m.p1578a.p1677g.p1680b;

import android.animation.ValueAnimator;
import com.google.android.material.appbar.CollapsingToolbarLayout;
/* renamed from: e.m.a.g.b.g */
/* loaded from: classes3-dex2jar.jar:e/m/a/g/b/g.class */
public class C25171g implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ CollapsingToolbarLayout f70425a;

    public C25171g(CollapsingToolbarLayout collapsingToolbarLayout) {
        this.f70425a = collapsingToolbarLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f70425a.setScrimAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
    }
}
