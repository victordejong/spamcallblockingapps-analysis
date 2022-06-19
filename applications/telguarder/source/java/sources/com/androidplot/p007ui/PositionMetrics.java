package com.androidplot.p007ui;
/* renamed from: com.androidplot.ui.PositionMetrics */
/* loaded from: classes-dex2jar.jar:com/androidplot/ui/PositionMetrics.class */
public class PositionMetrics implements Comparable<PositionMetrics> {
    private Anchor anchor;
    private HorizontalPosition horizontalPosition;
    private float layerDepth;
    private VerticalPosition verticalPosition;

    public PositionMetrics(float f, HorizontalPositioning horizontalPositioning, float f2, VerticalPositioning verticalPositioning, Anchor anchor) {
        setXPositionMetric(new HorizontalPosition(f, horizontalPositioning));
        setYPositionMetric(new VerticalPosition(f2, verticalPositioning));
        setAnchor(anchor);
    }

    public int compareTo(PositionMetrics positionMetrics) {
        float f = this.layerDepth;
        float f2 = positionMetrics.layerDepth;
        if (f < f2) {
            return -1;
        }
        return f == f2 ? 0 : 1;
    }

    public Anchor getAnchor() {
        return this.anchor;
    }

    public HorizontalPosition getXPositionMetric() {
        return this.horizontalPosition;
    }

    public VerticalPosition getYPositionMetric() {
        return this.verticalPosition;
    }

    public void setAnchor(Anchor anchor) {
        this.anchor = anchor;
    }

    public void setXPositionMetric(HorizontalPosition horizontalPosition) {
        this.horizontalPosition = horizontalPosition;
    }

    public void setYPositionMetric(VerticalPosition verticalPosition) {
        this.verticalPosition = verticalPosition;
    }
}
