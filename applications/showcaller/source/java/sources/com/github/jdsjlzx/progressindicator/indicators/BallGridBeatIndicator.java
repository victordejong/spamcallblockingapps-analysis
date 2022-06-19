package com.github.jdsjlzx.progressindicator.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.github.jdsjlzx.progressindicator.AbstractC4508a;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/progressindicator/indicators/BallGridBeatIndicator.class */
public class BallGridBeatIndicator extends AbstractC4508a {
    public static final int ALPHA = 255;
    int[] alphas = {255, 255, 255, 255, 255, 255, 255, 255, 255};

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
                paint.setAlpha(this.alphas[(i * 3) + i2]);
                canvas.drawCircle(0.0f, 0.0f, width, paint);
                canvas.restore();
            }
        }
    }

    @Override // com.github.jdsjlzx.progressindicator.AbstractC4508a
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        for (int i = 0; i < 9; i++) {
            ValueAnimator ofInt = ValueAnimator.ofInt(255, 168, 255);
            ofInt.setDuration(new int[]{960, 930, 1190, 1130, 1340, 940, 1200, 820, 1190}[i]);
            ofInt.setRepeatCount(-1);
            ofInt.setStartDelay(new int[]{360, 400, 680, 410, 710, -150, -120, 10, 320}[i]);
            final int i2 = i;
            addUpdateListener(ofInt, new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.jdsjlzx.progressindicator.indicators.BallGridBeatIndicator.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallGridBeatIndicator.this.alphas[i2] = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    BallGridBeatIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofInt);
        }
        return arrayList;
    }
}
