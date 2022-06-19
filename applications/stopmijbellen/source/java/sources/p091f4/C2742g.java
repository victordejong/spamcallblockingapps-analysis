package p091f4;

import android.animation.ValueAnimator;
import com.google.android.material.textfield.C1815b;
/* renamed from: f4.g */
/* loaded from: classes-dex2jar.jar:f4/g.class */
public class C2742g implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ C1815b f9398a;

    public C2742g(C1815b c1815b) {
        this.f9398a = c1815b;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f9398a.f9405c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
