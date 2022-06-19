package com.androidplot.p008xy;

import com.androidplot.Region;
import java.util.Arrays;
/* renamed from: com.androidplot.xy.StepModelFit */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/StepModelFit.class */
public class StepModelFit extends StepModel {
    private Region scale;
    private double[] steps;

    public StepModelFit(Region region, double[] dArr, double d) {
        super(StepMode.INCREMENT_BY_FIT, d);
        setSteps(dArr);
        setScale(region);
    }

    public Region getScale() {
        return this.scale;
    }

    public double[] getSteps() {
        return this.steps;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v20, types: [double] */
    /* JADX WARN: Type inference failed for: r0v28, types: [double] */
    /* JADX WARN: Type inference failed for: r0v35, types: [double] */
    @Override // com.androidplot.p008xy.StepModel
    public double getValue() {
        Region region;
        if (this.steps == null || (region = this.scale) == null || !region.isDefined()) {
            return super.getValue();
        }
        int i = 0;
        char c = this.steps[0];
        char abs = Math.abs((this.scale.length().doubleValue() / c) - super.getValue());
        double[] dArr = this.steps;
        int length = dArr.length;
        while (i < length) {
            ?? r0 = dArr[i];
            ?? abs2 = Math.abs((this.scale.length().doubleValue() / r0) - super.getValue());
            char c2 = abs;
            if (abs2 < abs) {
                c = r0;
                c2 = abs2;
            }
            i++;
            abs = c2;
        }
        return c;
    }

    public void setScale(Region region) {
        this.scale = region;
    }

    public void setSteps(double[] dArr) {
        if (dArr == null || dArr.length == 0) {
            return;
        }
        for (double d : dArr) {
            if (d <= 0.0d) {
                return;
            }
        }
        this.steps = dArr;
    }

    public String toString() {
        return "StepModelFit{steps=" + Arrays.toString(this.steps) + ", scale=" + this.scale + ", current stepping=" + getValue() + '}';
    }
}
