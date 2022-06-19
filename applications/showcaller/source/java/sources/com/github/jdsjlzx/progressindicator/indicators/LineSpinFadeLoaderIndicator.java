package com.github.jdsjlzx.progressindicator.indicators;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.github.jdsjlzx.progressindicator.indicators.BallSpinFadeLoaderIndicator;
/* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/progressindicator/indicators/LineSpinFadeLoaderIndicator.class */
public class LineSpinFadeLoaderIndicator extends BallSpinFadeLoaderIndicator {
    @Override // com.github.jdsjlzx.progressindicator.indicators.BallSpinFadeLoaderIndicator, com.github.jdsjlzx.progressindicator.AbstractC4508a
    public void draw(Canvas canvas, Paint paint) {
        float width = getWidth() / 10;
        for (int i = 0; i < 8; i++) {
            canvas.save();
            BallSpinFadeLoaderIndicator.Point circleAt = circleAt(getWidth(), getHeight(), (getWidth() / 2.5f) - width, 0.7853981633974483d * i);
            canvas.translate(circleAt.f13822x, circleAt.f13823y);
            float[] fArr = this.scaleFloats;
            canvas.scale(fArr[i], fArr[i]);
            canvas.rotate(i * 45);
            paint.setAlpha(this.alphas[i]);
            float f = -width;
            canvas.drawRoundRect(new RectF(f, f / 1.5f, width * 1.5f, width / 1.5f), 5.0f, 5.0f, paint);
            canvas.restore();
        }
    }
}
