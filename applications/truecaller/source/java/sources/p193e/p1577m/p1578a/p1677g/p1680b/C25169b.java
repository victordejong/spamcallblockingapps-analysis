package p193e.p1577m.p1578a.p1677g.p1680b;

import android.animation.ValueAnimator;
import com.google.android.material.appbar.AppBarLayout;
import e.m.a.g.u.h;
/* renamed from: e.m.a.g.b.b */
/* loaded from: classes3-dex2jar.jar:e/m/a/g/b/b.class */
public class C25169b implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ h f70421a;

    public C25169b(AppBarLayout appBarLayout, h hVar) {
        this.f70421a = hVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f70421a.p(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
