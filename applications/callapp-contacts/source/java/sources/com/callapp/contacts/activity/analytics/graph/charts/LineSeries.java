package com.callapp.contacts.activity.analytics.graph.charts;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.Log;
import com.callapp.contacts.activity.analytics.graph.DecoView;
import com.callapp.contacts.activity.analytics.graph.charts.SeriesItem;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/LineSeries.class */
public class LineSeries extends ChartSeries {

    /* renamed from: a */
    private final String f20036a;

    /* renamed from: b */
    private final Path f20037b = new Path();

    /* renamed from: p */
    private DecoView.HorizGravity f20038p = DecoView.HorizGravity.GRAVITY_HORIZONTAL_CENTER;

    /* renamed from: q */
    private DecoView.VertGravity f20039q = DecoView.VertGravity.GRAVITY_VERTICAL_CENTER;

    /* renamed from: com.callapp.contacts.activity.analytics.graph.charts.LineSeries$1 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/LineSeries$1.class */
    static /* synthetic */ class C57601 {

        /* renamed from: a */
        static final /* synthetic */ int[] f20040a;

        /* renamed from: b */
        static final /* synthetic */ int[] f20041b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0055 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:22:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:28:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:24:0x0049). Please submit an issue!!! */
        static {
            int[] iArr = new int[DecoView.HorizGravity.values().length];
            f20041b = iArr;
            try {
                iArr[DecoView.HorizGravity.GRAVITY_HORIZONTAL_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f20041b[DecoView.HorizGravity.GRAVITY_HORIZONTAL_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f20041b[DecoView.HorizGravity.GRAVITY_HORIZONTAL_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[DecoView.VertGravity.values().length];
            f20040a = iArr2;
            try {
                iArr2[DecoView.VertGravity.GRAVITY_VERTICAL_TOP.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f20040a[DecoView.VertGravity.GRAVITY_VERTICAL_BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f20040a[DecoView.VertGravity.GRAVITY_VERTICAL_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    public LineSeries(SeriesItem seriesItem, int i, int i2) {
        super(seriesItem, i, i2);
        String simpleName = getClass().getSimpleName();
        this.f20036a = simpleName;
        Log.e(simpleName, "LineSeries is experimental. Not all functionality is implemented.");
    }

    private boolean isHorizontal() {
        return this.f19991d.getChartStyle() == SeriesItem.ChartStyle.STYLE_LINE_HORIZONTAL;
    }

    @Override // com.callapp.contacts.activity.analytics.graph.charts.ChartSeries
    /* renamed from: a */
    protected final void mo31583a() {
        if (Color.alpha(this.f19991d.getSecondaryColor()) != 0) {
            this.f20002o.setShader(new LinearGradient(this.f19998k.left, this.f19998k.top, this.f19998k.right, this.f19998k.bottom, this.f19991d.getSpinClockwise() ? this.f19991d.getColor() : this.f19991d.getSecondaryColor(), this.f19991d.getSpinClockwise() ? this.f19991d.getSecondaryColor() : this.f19991d.getColor(), Shader.TileMode.CLAMP));
        }
    }

    @Override // com.callapp.contacts.activity.analytics.graph.charts.ChartSeries
    /* renamed from: a */
    public final boolean mo31581a(Canvas canvas, RectF rectF) {
        float f;
        float f2;
        if (super.mo31581a(canvas, rectF)) {
            return true;
        }
        boolean z = !this.f19991d.getSpinClockwise();
        float f3 = 0.0f;
        float f4 = this.f19991d.getInset() != null ? this.f19991d.getInset().x : 0.0f;
        if (this.f19991d.getInset() != null) {
            f3 = this.f19991d.getInset().y;
        }
        float lineWidth = getSeriesItem().getLineWidth() / 2.0f;
        float maxValue = this.f19996i / (getSeriesItem().getMaxValue() - getSeriesItem().getMinValue());
        float f5 = maxValue;
        if (getSeriesItem().f20042a) {
            f5 = maxValue;
            if (Math.abs(maxValue) < 0.01f) {
                f5 = 0.01f;
            }
        }
        float f6 = lineWidth * 2.0f;
        float width = (canvas.getWidth() - f6) * f5;
        float height = f5 * (canvas.getHeight() - f6);
        float width2 = !z ? lineWidth : canvas.getWidth() - lineWidth;
        float height2 = !z ? lineWidth : canvas.getHeight() - lineWidth;
        float f7 = !z ? width + lineWidth : width2 - width;
        float f8 = !z ? height + lineWidth : height2 - height;
        if (isHorizontal()) {
            int i = C57601.f20040a[this.f20039q.ordinal()];
            if (i == 1) {
                f = (lineWidth / 2.0f) + f3;
            } else if (i != 2) {
                if (i != 3) {
                    Log.w(this.f20036a, "Invalid Gravity set, VERTICAL_CENTER set (" + this.f20039q + ")");
                }
                f = (canvas.getHeight() / 2) + f3;
            } else {
                f = (canvas.getHeight() - lineWidth) - f3;
            }
            f8 = f;
        } else {
            int i2 = C57601.f20041b[this.f20038p.ordinal()];
            if (i2 == 1) {
                f2 = lineWidth + f4;
            } else if (i2 != 2) {
                if (i2 != 3) {
                    Log.w(this.f20036a, "Invalid Gravity set, HORIZONTAL_CENTER set (" + this.f20038p + ")");
                }
                f2 = (canvas.getWidth() / 2) + f4;
            } else {
                f2 = (canvas.getWidth() - lineWidth) - f4;
            }
            f7 = f2;
            width2 = f2;
            f = height2;
        }
        this.f20037b.reset();
        this.f20037b.moveTo(width2, f);
        this.f20037b.lineTo(f7, f8);
        canvas.drawPath(this.f20037b, this.f20002o);
        return true;
    }

    public void setHorizGravity(DecoView.HorizGravity horizGravity) {
        this.f20038p = horizGravity;
    }

    public void setVertGravity(DecoView.VertGravity vertGravity) {
        this.f20039q = vertGravity;
    }
}
