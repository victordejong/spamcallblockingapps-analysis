package com.capricorn;

import android.view.animation.Animation;
import android.view.animation.Transformation;
/* loaded from: classes-dex2jar.jar:com/capricorn/RotateAndTranslateAnimation.class */
public class RotateAndTranslateAnimation extends Animation {
    private float mFromDegrees;
    private float mFromXDelta;
    private int mFromXType;
    private float mFromXValue;
    private float mFromYDelta;
    private int mFromYType;
    private float mFromYValue;
    private float mPivotX;
    private int mPivotXType;
    private float mPivotXValue;
    private float mPivotY;
    private int mPivotYType;
    private float mPivotYValue;
    private float mToDegrees;
    private float mToXDelta;
    private int mToXType;
    private float mToXValue;
    private float mToYDelta;
    private int mToYType;
    private float mToYValue;

    public RotateAndTranslateAnimation(float f, float f2, float f3, float f4, float f5, float f6) {
        this.mFromXType = 0;
        this.mToXType = 0;
        this.mFromYType = 0;
        this.mToYType = 0;
        this.mFromXValue = 0.0f;
        this.mToXValue = 0.0f;
        this.mFromYValue = 0.0f;
        this.mToYValue = 0.0f;
        this.mPivotXType = 0;
        this.mPivotYType = 0;
        this.mPivotXValue = 0.0f;
        this.mPivotYValue = 0.0f;
        this.mFromXValue = f;
        this.mToXValue = f2;
        this.mFromYValue = f3;
        this.mToYValue = f4;
        this.mFromXType = 0;
        this.mToXType = 0;
        this.mFromYType = 0;
        this.mToYType = 0;
        this.mFromDegrees = f5;
        this.mToDegrees = f6;
        this.mPivotXValue = 0.5f;
        this.mPivotXType = 1;
        this.mPivotYValue = 0.5f;
        this.mPivotYType = 1;
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f, Transformation transformation) {
        float f2 = this.mFromDegrees;
        float f3 = f2 + ((this.mToDegrees - f2) * f);
        if (this.mPivotX == 0.0f && this.mPivotY == 0.0f) {
            transformation.getMatrix().setRotate(f3);
        } else {
            transformation.getMatrix().setRotate(f3, this.mPivotX, this.mPivotY);
        }
        float f4 = this.mFromXDelta;
        float f5 = this.mFromYDelta;
        float f6 = this.mToXDelta;
        float f7 = f4;
        if (f4 != f6) {
            f7 = f4 + ((f6 - f4) * f);
        }
        float f8 = this.mToYDelta;
        float f9 = f5;
        if (f5 != f8) {
            f9 = f5 + ((f8 - f5) * f);
        }
        transformation.getMatrix().postTranslate(f7, f9);
    }

    @Override // android.view.animation.Animation
    public void initialize(int i, int i2, int i3, int i4) {
        super.initialize(i, i2, i3, i4);
        this.mFromXDelta = resolveSize(this.mFromXType, this.mFromXValue, i, i3);
        this.mToXDelta = resolveSize(this.mToXType, this.mToXValue, i, i3);
        this.mFromYDelta = resolveSize(this.mFromYType, this.mFromYValue, i2, i4);
        this.mToYDelta = resolveSize(this.mToYType, this.mToYValue, i2, i4);
        this.mPivotX = resolveSize(this.mPivotXType, this.mPivotXValue, i, i3);
        this.mPivotY = resolveSize(this.mPivotYType, this.mPivotYValue, i2, i4);
    }
}
