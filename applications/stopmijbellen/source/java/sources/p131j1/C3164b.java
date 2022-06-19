package p131j1;

import android.animation.ValueAnimator;
import p131j1.C3166d;
/* renamed from: j1.b */
/* loaded from: classes-dex2jar.jar:j1/b.class */
public class C3164b implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ C3166d.C3167a f10636a;

    /* renamed from: b */
    public final /* synthetic */ C3166d f10637b;

    public C3164b(C3166d c3166d, C3166d.C3167a c3167a) {
        this.f10637b = c3166d;
        this.f10636a = c3167a;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f10637b.m2581d(floatValue, this.f10636a);
        this.f10637b.m2584a(floatValue, this.f10636a, false);
        this.f10637b.invalidateSelf();
    }
}
