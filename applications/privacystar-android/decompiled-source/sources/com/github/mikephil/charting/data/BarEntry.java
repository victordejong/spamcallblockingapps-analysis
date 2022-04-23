package com.github.mikephil.charting.data;

import android.annotation.SuppressLint;
import android.graphics.drawable.Drawable;
import com.github.mikephil.charting.highlight.Range;
@SuppressLint({"ParcelCreator"})
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/data/BarEntry.class */
public class BarEntry extends Entry {
    private float mNegativeSum;
    private float mPositiveSum;
    private Range[] mRanges;
    private float[] mYVals;

    public BarEntry(float f, float f2) {
        super(f, f2);
    }

    public BarEntry(float f, float f2, Drawable drawable) {
        super(f, f2, drawable);
    }

    public BarEntry(float f, float f2, Drawable drawable, Object obj) {
        super(f, f2, drawable, obj);
    }

    public BarEntry(float f, float f2, Object obj) {
        super(f, f2, obj);
    }

    public BarEntry(float f, float[] fArr) {
        super(f, calcSum(fArr));
        this.mYVals = fArr;
        calcPosNegSum();
        calcRanges();
    }

    public BarEntry(float f, float[] fArr, Drawable drawable) {
        super(f, calcSum(fArr), drawable);
        this.mYVals = fArr;
        calcPosNegSum();
        calcRanges();
    }

    public BarEntry(float f, float[] fArr, Drawable drawable, Object obj) {
        super(f, calcSum(fArr), drawable, obj);
        this.mYVals = fArr;
        calcPosNegSum();
        calcRanges();
    }

    public BarEntry(float f, float[] fArr, Object obj) {
        super(f, calcSum(fArr), obj);
        this.mYVals = fArr;
        calcPosNegSum();
        calcRanges();
    }

    private void calcPosNegSum() {
        float[] fArr;
        if (this.mYVals == null) {
            this.mNegativeSum = 0.0f;
            this.mPositiveSum = 0.0f;
            return;
        }
        float f = 0.0f;
        float f2 = 0.0f;
        for (float f3 : this.mYVals) {
            if (f3 <= 0.0f) {
                f += Math.abs(f3);
            } else {
                f2 += f3;
            }
        }
        this.mNegativeSum = f;
        this.mPositiveSum = f2;
    }

    private static float calcSum(float[] fArr) {
        float f = 0.0f;
        if (fArr == null) {
            return 0.0f;
        }
        for (float f2 : fArr) {
            f += f2;
        }
        return f;
    }

    protected void calcRanges() {
        float[] yVals = getYVals();
        if (!(yVals == null || yVals.length == 0)) {
            this.mRanges = new Range[yVals.length];
            float f = -getNegativeSum();
            float f2 = 0.0f;
            for (int i = 0; i < this.mRanges.length; i++) {
                float f3 = yVals[i];
                if (f3 < 0.0f) {
                    float f4 = f - f3;
                    this.mRanges[i] = new Range(f, f4);
                    f = f4;
                } else {
                    float f5 = f3 + f2;
                    this.mRanges[i] = new Range(f2, f5);
                    f2 = f5;
                }
            }
        }
    }

    @Override // com.github.mikephil.charting.data.Entry
    public BarEntry copy() {
        BarEntry barEntry = new BarEntry(getX(), getY(), getData());
        barEntry.setVals(this.mYVals);
        return barEntry;
    }

    @Deprecated
    public float getBelowSum(int i) {
        return getSumBelow(i);
    }

    public float getNegativeSum() {
        return this.mNegativeSum;
    }

    public float getPositiveSum() {
        return this.mPositiveSum;
    }

    public Range[] getRanges() {
        return this.mRanges;
    }

    public float getSumBelow(int i) {
        float f = 0.0f;
        if (this.mYVals == null) {
            return 0.0f;
        }
        for (int length = this.mYVals.length - 1; length > i && length >= 0; length--) {
            f += this.mYVals[length];
        }
        return f;
    }

    @Override // com.github.mikephil.charting.data.BaseEntry
    public float getY() {
        return super.getY();
    }

    public float[] getYVals() {
        return this.mYVals;
    }

    public boolean isStacked() {
        return this.mYVals != null;
    }

    public void setVals(float[] fArr) {
        setY(calcSum(fArr));
        this.mYVals = fArr;
        calcPosNegSum();
        calcRanges();
    }
}
