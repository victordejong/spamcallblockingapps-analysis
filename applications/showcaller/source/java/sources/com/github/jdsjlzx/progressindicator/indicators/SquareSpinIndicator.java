package com.github.jdsjlzx.progressindicator.indicators;

import android.animation.ValueAnimator;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.animation.LinearInterpolator;
import com.github.jdsjlzx.progressindicator.AbstractC4508a;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/progressindicator/indicators/SquareSpinIndicator.class */
public class SquareSpinIndicator extends AbstractC4508a {
    private Camera mCamera = new Camera();
    private Matrix mMatrix = new Matrix();
    private float rotateX;
    private float rotateY;

    @Override // com.github.jdsjlzx.progressindicator.AbstractC4508a
    public void draw(Canvas canvas, Paint paint) {
        this.mMatrix.reset();
        this.mCamera.save();
        this.mCamera.rotateX(this.rotateX);
        this.mCamera.rotateY(this.rotateY);
        this.mCamera.getMatrix(this.mMatrix);
        this.mCamera.restore();
        this.mMatrix.preTranslate(-centerX(), -centerY());
        this.mMatrix.postTranslate(centerX(), centerY());
        canvas.concat(this.mMatrix);
        canvas.drawRect(new RectF(getWidth() / 5, getHeight() / 5, (getWidth() * 4) / 5, (getHeight() * 4) / 5), paint);
    }

    @Override // com.github.jdsjlzx.progressindicator.AbstractC4508a
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 180.0f, 180.0f, 0.0f, 0.0f);
        addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.jdsjlzx.progressindicator.indicators.SquareSpinIndicator.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                SquareSpinIndicator.this.rotateX = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                SquareSpinIndicator.this.postInvalidate();
            }
        });
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.setRepeatCount(-1);
        ofFloat.setDuration(2500L);
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 0.0f, 180.0f, 180.0f, 0.0f);
        addUpdateListener(ofFloat2, new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.jdsjlzx.progressindicator.indicators.SquareSpinIndicator.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                SquareSpinIndicator.this.rotateY = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                SquareSpinIndicator.this.postInvalidate();
            }
        });
        ofFloat2.setInterpolator(new LinearInterpolator());
        ofFloat2.setRepeatCount(-1);
        ofFloat2.setDuration(2500L);
        arrayList.add(ofFloat);
        arrayList.add(ofFloat2);
        return arrayList;
    }
}
