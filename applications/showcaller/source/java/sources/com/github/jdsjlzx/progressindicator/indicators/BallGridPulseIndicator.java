package com.github.jdsjlzx.progressindicator.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.github.jdsjlzx.progressindicator.AbstractC4508a;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/progressindicator/indicators/BallGridPulseIndicator.class */
public class BallGridPulseIndicator extends AbstractC4508a {
    public static final int ALPHA = 255;
    public static final float SCALE = 1.0f;
    int[] alphas = {255, 255, 255, 255, 255, 255, 255, 255, 255};
    float[] scaleFloats = {1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f};

    @Override // com.github.jdsjlzx.progressindicator.AbstractC4508a
    public void draw(Canvas canvas, Paint paint) {
        float width = (getWidth() - 16.0f) / 6.0f;
        float width2 = getWidth() / 2;
        float f = 2.0f * width;
        float f2 = f + 4.0f;
        float width3 = getWidth() / 2;
        for (int i = 0; i < 3; i++) {
            for (int i2 = 0; i2 < 3; i2++) {
                canvas.save();
                float f3 = i2;
                float f4 = i;
                canvas.translate((f * f3) + (width2 - f2) + (f3 * 4.0f), (f * f4) + (width3 - f2) + (f4 * 4.0f));
                float[] fArr = this.scaleFloats;
                int i3 = (i * 3) + i2;
                canvas.scale(fArr[i3], fArr[i3]);
                paint.setAlpha(this.alphas[i3]);
                canvas.drawCircle(0.0f, 0.0f, width, paint);
                canvas.restore();
            }
        }
    }

    @Override // com.github.jdsjlzx.progressindicator.AbstractC4508a
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        int[] iArr = {720, 1020, 1280, 1420, 1450, 1180, 870, 1450, 1060};
        int[] iArr2 = {-60, 250, -170, 480, 310, 30, 460, 780, 450};
        for (int i = 0; i < 9; i++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.5f, 1.0f);
            ofFloat.setDuration(iArr[i]);
            ofFloat.setRepeatCount(-1);
            ofFloat.setStartDelay(iArr2[i]);
            final int i2 = i;
            addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.jdsjlzx.progressindicator.indicators.BallGridPulseIndicator.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallGridPulseIndicator.this.scaleFloats[i2] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallGridPulseIndicator.this.postInvalidate();
                }
            });
            ValueAnimator ofInt = ValueAnimator.ofInt(255, 210, 122, 255);
            ofInt.setDuration(iArr[i]);
            ofInt.setRepeatCount(-1);
            ofInt.setStartDelay(iArr2[i]);
            final int i3 = i;
            addUpdateListener(ofInt, new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.jdsjlzx.progressindicator.indicators.BallGridPulseIndicator.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallGridPulseIndicator.this.alphas[i3] = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    BallGridPulseIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofFloat);
            arrayList.add(ofInt);
        }
        return arrayList;
    }
}
