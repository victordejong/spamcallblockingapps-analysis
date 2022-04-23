package com.github.mikephil.charting.data.filter;

import android.annotation.TargetApi;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/data/filter/Approximator.class */
public class Approximator {

    /* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/data/filter/Approximator$Line.class */
    private class Line {

        /* renamed from: dx */
        private float f145dx;

        /* renamed from: dy */
        private float f146dy;
        private float exsy;
        private float length;
        private float[] points;
        private float sxey;

        public Line(float f, float f2, float f3, float f4) {
            this.f145dx = f - f3;
            this.f146dy = f2 - f4;
            this.sxey = f * f4;
            this.exsy = f3 * f2;
            this.length = (float) Math.sqrt((this.f145dx * this.f145dx) + (this.f146dy * this.f146dy));
            this.points = new float[]{f, f2, f3, f4};
        }

        public float distance(float f, float f2) {
            return Math.abs((((this.f146dy * f) - (this.f145dx * f2)) + this.sxey) - this.exsy) / this.length;
        }

        public float[] getPoints() {
            return this.points;
        }
    }

    float[] concat(float[]... fArr) {
        int i = 0;
        for (float[] fArr2 : fArr) {
            i += fArr2.length;
        }
        float[] fArr3 = new float[i];
        int i2 = 0;
        for (float[] fArr4 : fArr) {
            for (float f : fArr4) {
                fArr3[i2] = f;
                i2++;
            }
        }
        return fArr3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10, types: [float[], float[][]] */
    @TargetApi(9)
    public float[] reduceWithDouglasPeucker(float[] fArr, float f) {
        Line line = new Line(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1]);
        float f2 = 0.0f;
        int i = 0;
        for (int i2 = 2; i2 < fArr.length - 2; i2 += 2) {
            float distance = line.distance(fArr[i2], fArr[i2 + 1]);
            f2 = f2;
            if (distance > f2) {
                i = i2;
                f2 = distance;
            }
        }
        if (f2 <= f) {
            return line.getPoints();
        }
        float[] reduceWithDouglasPeucker = reduceWithDouglasPeucker(Arrays.copyOfRange(fArr, 0, i + 2), f);
        float[] reduceWithDouglasPeucker2 = reduceWithDouglasPeucker(Arrays.copyOfRange(fArr, i, fArr.length), f);
        return concat(new float[]{reduceWithDouglasPeucker, Arrays.copyOfRange(reduceWithDouglasPeucker2, 2, reduceWithDouglasPeucker2.length)});
    }
}
