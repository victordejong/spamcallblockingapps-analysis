package p193e.p194a.p1126p2;

import android.animation.ValueAnimator;
import com.truecaller.aftercall.AfterCallPromotionActivity;
import java.util.Objects;
/* renamed from: e.a.p2.f */
/* loaded from: classes3-dex2jar.jar:e/a/p2/f.class */
public final /* synthetic */ class C19209f implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ AfterCallPromotionActivity f53585a;

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        AfterCallPromotionActivity afterCallPromotionActivity = this.f53585a;
        Objects.requireNonNull(afterCallPromotionActivity);
        float animatedFraction = valueAnimator.getAnimatedFraction();
        afterCallPromotionActivity.j = valueAnimator.getCurrentPlayTime();
        afterCallPromotionActivity.d.setAlpha(1.0f - animatedFraction);
        afterCallPromotionActivity.d.setTranslationY(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
