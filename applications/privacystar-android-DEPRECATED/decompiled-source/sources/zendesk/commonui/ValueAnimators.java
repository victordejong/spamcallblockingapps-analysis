package zendesk.commonui;

import android.animation.ValueAnimator;
import android.support.annotation.NonNull;
import android.view.View;
import android.widget.FrameLayout;
/* loaded from: classes3-dex2jar.jar:zendesk/commonui/ValueAnimators.class */
class ValueAnimators {
    private ValueAnimators() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ValueAnimator bottomPaddingAnimator(@NonNull final View view, int i, int i2, int i3) {
        final ValueAnimator ofInt = ValueAnimator.ofInt(i, i2);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: zendesk.commonui.ValueAnimators.2
            final int paddingLeft;
            final int paddingRight;
            final int paddingTop;

            {
                this.paddingLeft = view.getPaddingLeft();
                this.paddingRight = view.getPaddingRight();
                this.paddingTop = view.getPaddingTop();
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                view.setPadding(this.paddingLeft, this.paddingTop, this.paddingRight, ((Integer) ofInt.getAnimatedValue()).intValue());
            }
        });
        ofInt.setDuration(i3);
        return ofInt;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ValueAnimator minHeightAnimator(@NonNull final View view, int i, int i2, int i3) {
        ValueAnimator ofInt = ValueAnimator.ofInt(i, i2);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: zendesk.commonui.ValueAnimators.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                view.setMinimumHeight(((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        });
        ofInt.setDuration(i3);
        return ofInt;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ValueAnimator sideMarginsAnimator(@NonNull final View view, int i, int i2, int i3) {
        final FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        ValueAnimator ofInt = ValueAnimator.ofInt(i, i2);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: zendesk.commonui.ValueAnimators.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                layoutParams.leftMargin = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                layoutParams.rightMargin = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                view.requestLayout();
            }
        });
        ofInt.setDuration(i3);
        return ofInt;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ValueAnimator topPaddingAnimator(@NonNull final View view, int i, int i2, int i3) {
        final ValueAnimator ofInt = ValueAnimator.ofInt(i, i2);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: zendesk.commonui.ValueAnimators.1
            final int paddingBottom;
            final int paddingLeft;
            final int paddingRight;

            {
                this.paddingLeft = view.getPaddingLeft();
                this.paddingRight = view.getPaddingRight();
                this.paddingBottom = view.getPaddingBottom();
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                view.setPadding(this.paddingLeft, ((Integer) ofInt.getAnimatedValue()).intValue(), this.paddingRight, this.paddingBottom);
            }
        });
        ofInt.setDuration(i3);
        return ofInt;
    }
}
