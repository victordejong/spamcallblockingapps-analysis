package com.github.mikephil.charting.buffer;

import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.interfaces.datasets.IBarDataSet;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/buffer/HorizontalBarBuffer.class */
public class HorizontalBarBuffer extends BarBuffer {
    public HorizontalBarBuffer(int i, int i2, boolean z) {
        super(i, i2, z);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.github.mikephil.charting.buffer.BarBuffer
    public void feed(IBarDataSet iBarDataSet) {
        float f;
        float f2;
        float f3;
        float entryCount = iBarDataSet.getEntryCount();
        float f4 = this.phaseX;
        float f5 = this.mBarWidth / 2.0f;
        for (int i = 0; i < entryCount * f4; i++) {
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
                    addBar(y, x + f5, y, x - f5);
                } else {
                    float f6 = -barEntry.getNegativeSum();
                    float f7 = 0.0f;
                    for (float f8 : yVals) {
                        if (f8 >= 0.0f) {
                            float f9 = f8 + f7;
                            f7 = f9;
                            f = f9;
                            f6 = f6;
                        } else {
                            float abs = Math.abs(f8);
                            f7 = f7;
                            f7 = f6;
                            f6 = Math.abs(f8) + f6;
                            f = abs + f6;
                        }
                        if (this.mInverted) {
                            float f10 = f7 >= f ? f7 : f;
                            f2 = f10;
                            f3 = f;
                            if (f7 <= f) {
                                f2 = f10;
                                f3 = f7;
                            }
                        } else {
                            f3 = f7 >= f ? f7 : f;
                            f2 = f;
                            if (f7 <= f) {
                                f2 = f7;
                            }
                        }
                        addBar(f2 * this.phaseY, x + f5, f3 * this.phaseY, x - f5);
                    }
                }
            }
        }
        reset();
    }
}
