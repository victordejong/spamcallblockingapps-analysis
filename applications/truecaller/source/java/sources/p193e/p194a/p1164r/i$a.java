package p193e.p194a.p1164r;

import android.animation.ValueAnimator;
/* renamed from: e.a.r.i$a */
/* loaded from: classes16-dex2jar.jar:e/a/r/i$a.class */
public class i$a implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ float f54803a;

    /* renamed from: b */
    public final /* synthetic */ float f54804b;

    /* renamed from: c */
    public final /* synthetic */ i f54805c;

    public i$a(i iVar, float f, float f2) {
        this.f54805c = iVar;
        this.f54803a = f;
        this.f54804b = f2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        ((j) this.f54805c).h.setTranslationX(this.f54803a * floatValue);
        ((j) this.f54805c).h.setTranslationY(this.f54804b * floatValue);
    }
}
