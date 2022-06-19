package carbon.widget;

import android.animation.ValueAnimator;
/* loaded from: classes-dex2jar.jar:carbon/widget/RangeSeekBar$c.class */
public class RangeSeekBar$c implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ RangeSeekBar f2316a;

    public RangeSeekBar$c(RangeSeekBar rangeSeekBar) {
        this.f2316a = rangeSeekBar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f2316a.T = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f2316a.postInvalidate();
    }
}
