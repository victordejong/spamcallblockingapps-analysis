package androidx.recyclerview.widget;

import android.animation.ValueAnimator;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d$d.class */
class d$d implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    final /* synthetic */ d f2380a;

    d$d(d dVar) {
        this.f2380a = dVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
        this.f2380a.c.setAlpha(floatValue);
        this.f2380a.d.setAlpha(floatValue);
        this.f2380a.v();
    }
}
