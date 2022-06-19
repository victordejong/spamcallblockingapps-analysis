package com.androidplot.p008xy;
/* renamed from: com.androidplot.xy.ScalingXYSeries */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/ScalingXYSeries.class */
public class ScalingXYSeries implements XYSeries {
    private Mode mode;
    private double scale;
    private XYSeries series;

    /* renamed from: com.androidplot.xy.ScalingXYSeries$Mode */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/ScalingXYSeries$Mode.class */
    public enum Mode {
        X_ONLY,
        Y_ONLY,
        X_AND_Y
    }

    public ScalingXYSeries(XYSeries xYSeries, double d, Mode mode) {
        this.series = xYSeries;
        this.scale = d;
        this.mode = mode;
    }

    public double getScale() {
        return this.scale;
    }

    @Override // com.androidplot.Series
    public String getTitle() {
        return this.series.getTitle();
    }

    @Override // com.androidplot.p008xy.XYSeries
    public Number getX(int i) {
        Number x = this.series.getX(i);
        if (this.mode == Mode.X_ONLY || this.mode == Mode.X_AND_Y) {
            return x == null ? null : Double.valueOf(x.doubleValue() * this.scale);
        }
        return x;
    }

    @Override // com.androidplot.p008xy.XYSeries
    public Number getY(int i) {
        Number y = this.series.getY(i);
        if (this.mode == Mode.Y_ONLY || this.mode == Mode.X_AND_Y) {
            return y == null ? null : Double.valueOf(y.doubleValue() * this.scale);
        }
        return y;
    }

    public void setScale(double d) {
        this.scale = d;
    }

    @Override // com.androidplot.p008xy.XYSeries
    public int size() {
        return this.series.size();
    }
}
