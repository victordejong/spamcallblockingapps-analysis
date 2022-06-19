package com.github.jdsjlzx.progressindicator.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/progressindicator/indicators/BallScaleRippleMultipleIndicator.class */
public class BallScaleRippleMultipleIndicator extends BallScaleMultipleIndicator {
    @Override // com.github.jdsjlzx.progressindicator.indicators.BallScaleMultipleIndicator, com.github.jdsjlzx.progressindicator.AbstractC4508a
    public void draw(Canvas canvas, Paint paint) {
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(3.0f);
        super.draw(canvas, paint);
    }

    @Override // com.github.jdsjlzx.progressindicator.indicators.BallScaleMultipleIndicator, com.github.jdsjlzx.progressindicator.AbstractC4508a
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        long[] jArr = {0, 200, 400};
        for (int i = 0; i < 3; i++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            ofFloat.setInterpolator(new LinearInterpolator());
            ofFloat.setDuration(1000L);
            ofFloat.setRepeatCount(-1);
            final int i2 = i;
            addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.jdsjlzx.progressindicator.indicators.BallScaleRippleMultipleIndicator.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallScaleRippleMultipleIndicator.this.scaleFloats[i2] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallScaleRippleMultipleIndicator.this.postInvalidate();
                }
            });
            ofFloat.setStartDelay(jArr[i]);
            ValueAnimator ofInt = ValueAnimator.ofInt(0, 255);
            ofFloat.setInterpolator(new LinearInterpolator());
            ofInt.setDuration(1000L);
            ofInt.setRepeatCount(-1);
            final int i3 = i;
            addUpdateListener(ofInt, new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.jdsjlzx.progressindicator.indicators.BallScaleRippleMultipleIndicator.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallScaleRippleMultipleIndicator.this.alphaInts[i3] = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    BallScaleRippleMultipleIndicator.this.postInvalidate();
                }
            });
            ofFloat.setStartDelay(jArr[i]);
            arrayList.add(ofFloat);
            arrayList.add(ofInt);
        }
        return arrayList;
    }
}
