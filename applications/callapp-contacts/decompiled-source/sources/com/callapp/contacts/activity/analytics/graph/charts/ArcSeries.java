package com.callapp.contacts.activity.analytics.graph.charts;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.SweepGradient;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/ArcSeries.class */
public abstract class ArcSeries extends ChartSeries {

    /* renamed from: a  reason: collision with root package name */
    protected float f10925a;

    /* renamed from: b  reason: collision with root package name */
    protected float f10926b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArcSeries(SeriesItem seriesItem, int i, int i2) {
        super(seriesItem, i, i2);
    }

    @Override // com.callapp.contacts.activity.analytics.graph.charts.ChartSeries
    protected final void a() {
        SweepGradient sweepGradient;
        if (Color.alpha(this.f10930d.getSecondaryColor()) != 0) {
            if (this.n < 360) {
                sweepGradient = new SweepGradient(this.k.centerX(), this.k.centerY(), new int[]{this.f10930d.getColor(), this.f10930d.getSecondaryColor()}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f});
                Matrix matrix = new Matrix();
                matrix.preRotate(this.m - ((360.0f - this.n) / 2.0f), this.k.centerX(), this.k.centerY());
                sweepGradient.setLocalMatrix(matrix);
            } else {
                sweepGradient = new SweepGradient(this.k.centerX(), this.k.centerY(), new int[]{this.f10930d.getSecondaryColor(), this.f10930d.getColor(), this.f10930d.getSecondaryColor()}, new float[]{BitmapDescriptorFactory.HUE_RED, (this.n / 360.0f) * 0.5f, 1.0f});
            }
            this.o.setShader(sweepGradient);
        }
    }

    abstract void a(Canvas canvas);

    @Override // com.callapp.contacts.activity.analytics.graph.charts.ChartSeries
    public boolean a(Canvas canvas, RectF rectF) {
        if (super.a(canvas, rectF)) {
            return true;
        }
        this.f10926b = a(c(a(this.g, this.h, this.f10930d.getMinValue(), this.f10930d.getMaxValue(), this.j) * this.n));
        this.f10925a = this.m;
        if (!this.f10930d.getDrawAsPoint()) {
            return this.f10926b == BitmapDescriptorFactory.HUE_RED;
        }
        this.f10925a = b(this.f10926b);
        this.f10926b = a(getMinSweepAngle());
        return false;
    }
}
