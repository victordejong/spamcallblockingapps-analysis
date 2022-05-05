package com.github.mikephil.charting.buffer;

import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.interfaces.datasets.IBarDataSet;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/buffer/BarBuffer.class */
public class BarBuffer extends AbstractBuffer<IBarDataSet> {
    protected boolean mContainsStacks;
    protected int mDataSetCount;
    protected int mDataSetIndex = 0;
    protected boolean mInverted = false;
    protected float mBarWidth = 1.0f;

    public BarBuffer(int i, int i2, boolean z) {
        super(i);
        this.mDataSetCount = 1;
        this.mContainsStacks = false;
        this.mDataSetCount = i2;
        this.mContainsStacks = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void addBar(float f, float f2, float f3, float f4) {
        float[] fArr = this.buffer;
        int i = this.index;
        this.index = i + 1;
        fArr[i] = f;
        float[] fArr2 = this.buffer;
        int i2 = this.index;
        this.index = i2 + 1;
        fArr2[i2] = f2;
        float[] fArr3 = this.buffer;
        int i3 = this.index;
        this.index = i3 + 1;
        fArr3[i3] = f3;
        float[] fArr4 = this.buffer;
        int i4 = this.index;
        this.index = i4 + 1;
        fArr4[i4] = f4;
    }

    public void feed(IBarDataSet iBarDataSet) {
        float f;
        float f2;
        float entryCount = iBarDataSet.getEntryCount();
        float f3 = this.phaseX;
        float f4 = this.mBarWidth / 2.0f;
        for (int i = 0; i < entryCount * f3; i++) {
            BarEntry barEntry = (BarEntry) iBarDataSet.getEntryForIndex(i);
            if (barEntry != null) {
                float x = barEntry.getX();
                float y = barEntry.getY();
                float[] yVals = barEntry.getYVals();
                if (!this.mContainsStacks || yVals == null) {
                    if (this.mInverted) {
                        y = y >= 0.0f ? y : 0.0f;
                        if (y > 0.0f) {
                            y = 0.0f;
                        }
                    } else {
                        y = y >= 0.0f ? y : 0.0f;
                        if (y > 0.0f) {
                            y = 0.0f;
                        }
                    }
                    if (y > 0.0f) {
                        y *= this.phaseY;
                    } else {
                        y *= this.phaseY;
                    }
                    addBar(x - f4, y, x + f4, y);
                } else {
                    float f5 = -barEntry.getNegativeSum();
                    float f6 = 0.0f;
                    for (float f7 : yVals) {
                        int i2 = (f7 > 0.0f ? 1 : (f7 == 0.0f ? 0 : -1));
                        if (i2 == 0 && (f6 == 0.0f || f5 == 0.0f)) {
                            f = f7;
                            f6 = f6;
                            f5 = f5;
                            f2 = f7;
                        } else if (i2 >= 0) {
                            f = f7 + f6;
                            f6 = f;
                            f5 = f5;
                            f2 = f6;
                        } else {
                            f = Math.abs(f7) + f5;
                            f5 = Math.abs(f7) + f5;
                            f2 = f5;
                            f6 = f6;
                        }
                        if (this.mInverted) {
                            f2 = f2 >= f ? f2 : f;
                            if (f2 > f) {
                                f2 = f;
                            }
                        } else {
                            f2 = f2 >= f ? f2 : f;
                            if (f2 > f) {
                                f2 = f;
                            }
                        }
                        addBar(x - f4, f2 * this.phaseY, x + f4, f2 * this.phaseY);
                    }
                }
            }
        }
        reset();
    }

    public void setBarWidth(float f) {
        this.mBarWidth = f;
    }

    public void setDataSet(int i) {
        this.mDataSetIndex = i;
    }

    public void setInverted(boolean z) {
        this.mInverted = z;
    }
}
