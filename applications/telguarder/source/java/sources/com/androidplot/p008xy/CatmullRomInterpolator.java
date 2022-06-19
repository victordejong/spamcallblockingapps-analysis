package com.androidplot.p008xy;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.androidplot.xy.CatmullRomInterpolator */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/CatmullRomInterpolator.class */
public class CatmullRomInterpolator implements Interpolator<Params> {

    /* renamed from: com.androidplot.xy.CatmullRomInterpolator$ExtrapolatedXYSeries */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/CatmullRomInterpolator$ExtrapolatedXYSeries.class */
    public static class ExtrapolatedXYSeries implements XYSeries {
        private final XYCoords first;
        private final XYCoords last;
        private final XYSeries series;

        public ExtrapolatedXYSeries(XYSeries xYSeries, XYCoords xYCoords, XYCoords xYCoords2) {
            this.series = xYSeries;
            this.first = xYCoords;
            this.last = xYCoords2;
        }

        @Override // com.androidplot.Series
        public String getTitle() {
            return this.series.getTitle();
        }

        @Override // com.androidplot.p008xy.XYSeries
        public Number getX(int i) {
            return i == 0 ? this.first.f84x : i == this.series.size() + 1 ? this.last.f84x : this.series.getX(i - 1);
        }

        @Override // com.androidplot.p008xy.XYSeries
        public Number getY(int i) {
            return i == 0 ? this.first.f85y : i == this.series.size() + 1 ? this.last.f85y : this.series.getY(i - 1);
        }

        @Override // com.androidplot.p008xy.XYSeries
        public int size() {
            return this.series.size() + 2;
        }
    }

    /* renamed from: com.androidplot.xy.CatmullRomInterpolator$Params */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/CatmullRomInterpolator$Params.class */
    public static class Params implements InterpolationParams {
        private int pointPerSegment;
        private Type type;

        public Params(int i, Type type) {
            this.pointPerSegment = i;
            this.type = type;
        }

        @Override // com.androidplot.p008xy.InterpolationParams
        public Class<CatmullRomInterpolator> getInterpolatorClass() {
            return CatmullRomInterpolator.class;
        }

        public int getPointPerSegment() {
            return this.pointPerSegment;
        }

        public Type getType() {
            return this.type;
        }

        public void setPointPerSegment(int i) {
            this.pointPerSegment = i;
        }

        public void setType(Type type) {
            this.type = type;
        }
    }

    /* renamed from: com.androidplot.xy.CatmullRomInterpolator$Type */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/CatmullRomInterpolator$Type.class */
    public enum Type {
        Uniform,
        Centripetal
    }

    protected static double interpolate(double[] dArr, double[] dArr2, double d) {
        double d2 = (dArr[0] * (dArr2[1] - d)) / (dArr2[1] - dArr2[0]);
        double d3 = (dArr[1] * (d - dArr2[0])) / (dArr2[1] - dArr2[0]);
        double d4 = ((dArr[1] * (dArr2[2] - d)) / (dArr2[2] - dArr2[1])) + ((dArr[2] * (d - dArr2[1])) / (dArr2[2] - dArr2[1]));
        double d5 = (dArr[2] * (dArr2[3] - d)) / (dArr2[3] - dArr2[2]);
        double d6 = (dArr[3] * (d - dArr2[2])) / (dArr2[3] - dArr2[2]);
        return ((((((d2 + d3) * (dArr2[2] - d)) / (dArr2[2] - dArr2[0])) + (((d - dArr2[0]) * d4) / (dArr2[2] - dArr2[0]))) * (dArr2[2] - d)) / (dArr2[2] - dArr2[1])) + (((((d4 * (dArr2[3] - d)) / (dArr2[3] - dArr2[1])) + (((d5 + d6) * (d - dArr2[1])) / (dArr2[3] - dArr2[1]))) * (d - dArr2[1])) / (dArr2[2] - dArr2[1]));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v39 */
    /* JADX WARN: Type inference failed for: r0v41 */
    /* JADX WARN: Type inference failed for: r0v53 */
    /* JADX WARN: Type inference failed for: r0v55, types: [double] */
    /* JADX WARN: Type inference failed for: r0v6, types: [double[]] */
    /* JADX WARN: Type inference failed for: r0v60, types: [double] */
    /* JADX WARN: Type inference failed for: r0v64, types: [double] */
    protected List<XYCoords> interpolate(XYSeries xYSeries, int i, Params params) {
        ArrayList arrayList = new ArrayList();
        double[] dArr = new double[4];
        double[] dArr2 = new double[4];
        ?? r0 = new double[4];
        for (int i2 = 0; i2 < 4; i2++) {
            int i3 = i + i2;
            dArr[i2] = xYSeries.getX(i3).doubleValue();
            dArr2[i2] = xYSeries.getY(i3).doubleValue();
            r0[i2] = i2;
        }
        char c = 0;
        char c2 = 0;
        if (params.getType() != Type.Uniform) {
            boolean z = false;
            int i4 = 1;
            while (i4 < 4) {
                double d = dArr[i4];
                int i5 = i4 - 1;
                double d2 = d - dArr[i5];
                double d3 = dArr2[i4] - dArr2[i5];
                char pow = params.getType() == Type.Centripetal ? Math.pow((d2 * d2) + (d3 * d3), 0.25d) : Math.pow((d2 * d2) + (d3 * d3), 0.5d);
                char c3 = z ? 1 : 0;
                boolean z2 = z ? 1 : 0;
                boolean z3 = c3 + pow;
                long j = z3 ? 1 : 0;
                long j2 = z3 ? 1 : 0;
                r0[i4] = j;
                i4++;
                z = z3;
            }
            c = r0[1];
            c2 = r0[2];
        }
        int pointPerSegment = params.getPointPerSegment() - 1;
        int i6 = i + 1;
        arrayList.add(new XYCoords(xYSeries.getX(i6), xYSeries.getY(i6)));
        for (int i7 = 1; i7 < pointPerSegment; i7++) {
            double d4 = ((i7 * (c2 - c)) / pointPerSegment) + c;
            arrayList.add(new XYCoords(Double.valueOf(interpolate(dArr, (double[]) r0, d4)), Double.valueOf(interpolate(dArr2, (double[]) r0, d4))));
        }
        int i8 = i + 2;
        arrayList.add(new XYCoords(xYSeries.getX(i8), xYSeries.getY(i8)));
        return arrayList;
    }

    public List<XYCoords> interpolate(XYSeries xYSeries, Params params) {
        if (params.getPointPerSegment() >= 2) {
            if (xYSeries.size() < 3) {
                throw new IllegalArgumentException("Cannot interpolate a series with fewer than 3 vertices.");
            }
            XYCoords xYCoords = new XYCoords(Double.valueOf(xYSeries.getX(0).doubleValue() - (xYSeries.getX(1).doubleValue() - xYSeries.getX(0).doubleValue())), Double.valueOf(xYSeries.getY(0).doubleValue() - (xYSeries.getY(1).doubleValue() - xYSeries.getY(0).doubleValue())));
            int size = xYSeries.size() - 1;
            double doubleValue = xYSeries.getX(size).doubleValue();
            int i = size - 1;
            ExtrapolatedXYSeries extrapolatedXYSeries = new ExtrapolatedXYSeries(xYSeries, xYCoords, new XYCoords(Double.valueOf(xYSeries.getX(size).doubleValue() + (doubleValue - xYSeries.getX(i).doubleValue())), Double.valueOf(xYSeries.getY(size).doubleValue() + (xYSeries.getY(size).doubleValue() - xYSeries.getY(i).doubleValue()))));
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < extrapolatedXYSeries.size() - 3; i2++) {
                List<XYCoords> interpolate = interpolate(extrapolatedXYSeries, i2, params);
                if (arrayList.size() > 0) {
                    interpolate.remove(0);
                }
                arrayList.addAll(interpolate);
            }
            return arrayList;
        }
        throw new IllegalArgumentException("pointsPerSegment must be greater than 2, since 2 points is just the linear segment.");
    }
}
