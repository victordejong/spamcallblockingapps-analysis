package p193e.p194a.p1126p2;

import android.animation.ValueAnimator;
import com.truecaller.aftercall.AfterCallPromotionActivity;
import java.util.Objects;
/* renamed from: e.a.p2.b */
/* loaded from: classes3-dex2jar.jar:e/a/p2/b.class */
public final /* synthetic */ class C19205b implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ AfterCallPromotionActivity f53575a;

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        AfterCallPromotionActivity afterCallPromotionActivity = this.f53575a;
        Objects.requireNonNull(afterCallPromotionActivity);
        float animatedFraction = valueAnimator.getAnimatedFraction();
        afterCallPromotionActivity.i = valueAnimator.getCurrentPlayTime();
        afterCallPromotionActivity.d.setTranslationY(((Float) valueAnimator.getAnimatedValue()).floatValue());
        afterCallPromotionActivity.d.setAlpha(animatedFraction);
    }
}
