package p193e.p194a.p1164r;

import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.graphics.drawable.GradientDrawable;
/* renamed from: e.a.r.j$a */
/* loaded from: classes16-dex2jar.jar:e/a/r/j$a.class */
public class j$a implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final ArgbEvaluator f54806a = new ArgbEvaluator();

    /* renamed from: b */
    public final /* synthetic */ int f54807b;

    /* renamed from: c */
    public final /* synthetic */ int f54808c;

    /* renamed from: d */
    public final /* synthetic */ float f54809d;

    /* renamed from: e */
    public final /* synthetic */ j f54810e;

    public j$a(j jVar, int i, int i2, float f) {
        this.f54810e = jVar;
        this.f54807b = i;
        this.f54808c = i2;
        this.f54809d = f;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        int intValue = ((Integer) this.f54806a.evaluate(floatValue, Integer.valueOf(this.f54807b), Integer.valueOf(this.f54808c))).intValue();
        this.f54810e.h.setTranslationX(floatValue * this.f54809d);
        ((GradientDrawable) this.f54810e.h.getDrawable()).setColor(intValue);
    }
}
