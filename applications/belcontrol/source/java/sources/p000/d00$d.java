package p000;

import android.animation.ValueAnimator;
/* renamed from: d00$d */
/* loaded from: classes-dex2jar.jar:d00$d.class */
public class d00$d implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ d00 f5738a;

    public d00$d(d00 d00Var) {
        this.f5738a = d00Var;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
        this.f5738a.c.setAlpha(floatValue);
        this.f5738a.d.setAlpha(floatValue);
        this.f5738a.p();
    }
}
