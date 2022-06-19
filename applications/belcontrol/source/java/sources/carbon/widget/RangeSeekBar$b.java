package carbon.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
/* loaded from: classes-dex2jar.jar:carbon/widget/RangeSeekBar$b.class */
public class RangeSeekBar$b extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ RangeSeekBar f2315a;

    public RangeSeekBar$b(RangeSeekBar rangeSeekBar) {
        this.f2315a = rangeSeekBar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        RangeSeekBar.r(this.f2315a, (ValueAnimator) null);
    }
}
