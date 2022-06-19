package com.androidplot.p008xy;
/* renamed from: com.androidplot.xy.StepModel */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/StepModel.class */
public class StepModel {
    private StepMode mode;
    private double value;

    public StepModel(StepMode stepMode, double d) {
        setMode(stepMode);
        setValue(d);
    }

    public StepMode getMode() {
        return this.mode;
    }

    public double getValue() {
        return this.value;
    }

    public void setMode(StepMode stepMode) {
        this.mode = stepMode;
    }

    public void setValue(double d) {
        this.value = d;
    }
}
