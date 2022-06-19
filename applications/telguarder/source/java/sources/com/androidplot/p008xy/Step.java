package com.androidplot.p008xy;
/* renamed from: com.androidplot.xy.Step */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/Step.class */
public class Step {
    private final double stepCount;
    private final double stepPix;
    private final double stepVal;

    public Step(double d, double d2, double d3) {
        this.stepCount = d;
        this.stepPix = d2;
        this.stepVal = d3;
    }

    public double getStepCount() {
        return this.stepCount;
    }

    public double getStepPix() {
        return this.stepPix;
    }

    public double getStepVal() {
        return this.stepVal;
    }
}
