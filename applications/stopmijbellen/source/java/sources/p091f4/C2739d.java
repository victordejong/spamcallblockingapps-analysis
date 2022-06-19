package p091f4;

import android.animation.ValueAnimator;
import com.google.android.material.textfield.C1808a;
/* renamed from: f4.d */
/* loaded from: classes-dex2jar.jar:f4/d.class */
public class C2739d implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ C1808a f9394a;

    public C2739d(C1808a c1808a) {
        this.f9394a = c1808a;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f9394a.f9405c.setScaleX(floatValue);
        this.f9394a.f9405c.setScaleY(floatValue);
    }
}
