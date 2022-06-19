package com.callapp.contacts.activity.analytics.graph.charts;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.SweepGradient;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/ArcSeries.class */
public abstract class ArcSeries extends ChartSeries {

    /* renamed from: a */
    protected float f19986a;

    /* renamed from: b */
    protected float f19987b;

    public ArcSeries(SeriesItem seriesItem, int i, int i2) {
        super(seriesItem, i, i2);
    }

    @Override // com.callapp.contacts.activity.analytics.graph.charts.ChartSeries
    /* renamed from: a */
    protected final void mo31583a() {
        SweepGradient sweepGradient;
        if (Color.alpha(this.f19991d.getSecondaryColor()) != 0) {
            if (this.f20001n < 360) {
                sweepGradient = new SweepGradient(this.f19998k.centerX(), this.f19998k.centerY(), new int[]{this.f19991d.getColor(), this.f19991d.getSecondaryColor()}, new float[]{BitmapDescriptorFactory.HUE_RED, 1.0f});
                Matrix matrix = new Matrix();
                matrix.preRotate(this.f20000m - ((360.0f - this.f20001n) / 2.0f), this.f19998k.centerX(), this.f19998k.centerY());
                sweepGradient.setLocalMatrix(matrix);
            } else {
                sweepGradient = new SweepGradient(this.f19998k.centerX(), this.f19998k.centerY(), new int[]{this.f19991d.getSecondaryColor(), this.f19991d.getColor(), this.f19991d.getSecondaryColor()}, new float[]{BitmapDescriptorFactory.HUE_RED, (this.f20001n / 360.0f) * 0.5f, 1.0f});
            }
            this.f20002o.setShader(sweepGradient);
        }
    }

    /* renamed from: a */
    abstract void mo31582a(Canvas canvas);

    @Override // com.callapp.contacts.activity.analytics.graph.charts.ChartSeries
    /* renamed from: a */
    public boolean mo31581a(Canvas canvas, RectF rectF) {
        if (super.mo31581a(canvas, rectF)) {
            return true;
        }
        this.f19987b = m31602a(m31591c(m31601a(this.f19994g, this.f19995h, this.f19991d.getMinValue(), this.f19991d.getMaxValue(), this.f19997j) * this.f20001n));
        this.f19986a = this.f20000m;
        if (!this.f19991d.getDrawAsPoint()) {
            return this.f19987b == BitmapDescriptorFactory.HUE_RED;
        }
        this.f19986a = m31594b(this.f19987b);
        this.f19987b = m31602a(getMinSweepAngle());
        return false;
    }
}
