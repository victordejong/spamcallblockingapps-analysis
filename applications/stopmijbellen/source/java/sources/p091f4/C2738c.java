package p091f4;

import android.animation.ValueAnimator;
import com.google.android.material.textfield.C1808a;
/* renamed from: f4.c */
/* loaded from: classes-dex2jar.jar:f4/c.class */
public class C2738c implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ C1808a f9393a;

    public C2738c(C1808a c1808a) {
        this.f9393a = c1808a;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f9393a.f9405c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
