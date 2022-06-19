package carbon.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
/* loaded from: classes-dex2jar.jar:carbon/widget/RangeSeekBar$a.class */
public class RangeSeekBar$a extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ RangeSeekBar f2314a;

    public RangeSeekBar$a(RangeSeekBar rangeSeekBar) {
        this.f2314a = rangeSeekBar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        RangeSeekBar.r(this.f2314a, (ValueAnimator) null);
    }
}
