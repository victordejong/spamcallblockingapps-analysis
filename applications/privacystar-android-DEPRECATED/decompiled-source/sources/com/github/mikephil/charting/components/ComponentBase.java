package com.github.mikephil.charting.components;

import android.graphics.Typeface;
import android.support.p001v4.view.ViewCompat;
import com.github.mikephil.charting.utils.Utils;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/components/ComponentBase.class */
public abstract class ComponentBase {
    protected boolean mEnabled = true;
    protected float mXOffset = 5.0f;
    protected float mYOffset = 5.0f;
    protected Typeface mTypeface = null;
    protected float mTextSize = Utils.convertDpToPixel(10.0f);
    protected int mTextColor = ViewCompat.MEASURED_STATE_MASK;

    public int getTextColor() {
        return this.mTextColor;
    }

    public float getTextSize() {
        return this.mTextSize;
    }

    public Typeface getTypeface() {
        return this.mTypeface;
    }

    public float getXOffset() {
        return this.mXOffset;
    }

    public float getYOffset() {
        return this.mYOffset;
    }

    public boolean isEnabled() {
        return this.mEnabled;
    }

    public void setEnabled(boolean z) {
        this.mEnabled = z;
    }

    public void setTextColor(int i) {
        this.mTextColor = i;
    }

    public void setTextSize(float f) {
        float f2 = f;
        if (f > 24.0f) {
            f2 = 24.0f;
        }
        float f3 = f2;
        if (f2 < 6.0f) {
            f3 = 6.0f;
        }
        this.mTextSize = Utils.convertDpToPixel(f3);
    }

    public void setTypeface(Typeface typeface) {
        this.mTypeface = typeface;
    }

    public void setXOffset(float f) {
        this.mXOffset = Utils.convertDpToPixel(f);
    }

    public void setYOffset(float f) {
        this.mYOffset = Utils.convertDpToPixel(f);
    }
}
