package com.androidplot.p007ui;

import java.lang.Enum;
/* renamed from: com.androidplot.ui.LayoutMetric */
/* loaded from: classes-dex2jar.jar:com/androidplot/ui/LayoutMetric.class */
public abstract class LayoutMetric<LayoutType extends Enum> {
    private LayoutType layoutType;
    private float value;

    public LayoutMetric(float f, LayoutType layouttype) {
        validatePair(f, layouttype);
        set(f, layouttype);
    }

    public LayoutType getLayoutType() {
        return this.layoutType;
    }

    public abstract float getPixelValue(float f);

    public float getValue() {
        return this.value;
    }

    public void set(float f, LayoutType layouttype) {
        validatePair(f, layouttype);
        this.value = f;
        this.layoutType = layouttype;
    }

    public void setLayoutType(LayoutType layouttype) {
        validatePair(this.value, layouttype);
        this.layoutType = layouttype;
    }

    public void setValue(float f) {
        validatePair(f, this.layoutType);
        this.value = f;
    }

    protected abstract void validatePair(float f, LayoutType layouttype);
}
