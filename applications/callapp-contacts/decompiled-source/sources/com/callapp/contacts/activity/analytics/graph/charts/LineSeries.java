package com.callapp.contacts.activity.analytics.graph.charts;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.Log;
import com.callapp.contacts.activity.analytics.graph.DecoView;
import com.callapp.contacts.activity.analytics.graph.charts.SeriesItem;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/LineSeries.class */
public class LineSeries extends ChartSeries {

    /* renamed from: a  reason: collision with root package name */
    private final String f10958a;

    /* renamed from: b  reason: collision with root package name */
    private final Path f10959b = new Path();
    private DecoView.HorizGravity p = DecoView.HorizGravity.GRAVITY_HORIZONTAL_CENTER;
    private DecoView.VertGravity q = DecoView.VertGravity.GRAVITY_VERTICAL_CENTER;

    /* renamed from: com.callapp.contacts.activity.analytics.graph.charts.LineSeries$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/charts/LineSeries$1.class */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10960a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f10961b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0055 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:22:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:28:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:24:0x0049). Please submit an issue!!! */
        static {
            int[] iArr = new int[DecoView.HorizGravity.values().length];
            f10961b = iArr;
            try {
                iArr[DecoView.HorizGravity.GRAVITY_HORIZONTAL_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10961b[DecoView.HorizGravity.GRAVITY_HORIZONTAL_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f10961b[DecoView.HorizGravity.GRAVITY_HORIZONTAL_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[DecoView.VertGravity.values().length];
            f10960a = iArr2;
            try {
                iArr2[DecoView.VertGravity.GRAVITY_VERTICAL_TOP.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f10960a[DecoView.VertGravity.GRAVITY_VERTICAL_BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f10960a[DecoView.VertGravity.GRAVITY_VERTICAL_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    public LineSeries(SeriesItem seriesItem, int i, int i2) {
        super(seriesItem, i, i2);
        String simpleName = getClass().getSimpleName();
        this.f10958a = simpleName;
        Log.e(simpleName, "LineSeries is experimental. Not all functionality is implemented.");
    }

    private boolean isHorizontal() {
        return this.f10930d.getChartStyle() == SeriesItem.ChartStyle.STYLE_LINE_HORIZONTAL;
    }

    @Override // com.callapp.contacts.activity.analytics.graph.charts.ChartSeries
    protected final void a() {
        if (Color.alpha(this.f10930d.getSecondaryColor()) != 0) {
            this.o.setShader(new LinearGradient(this.k.left, this.k.top, this.k.right, this.k.bottom, this.f10930d.getSpinClockwise() ? this.f10930d.getColor() : this.f10930d.getSecondaryColor(), this.f10930d.getSpinClockwise() ? this.f10930d.getSecondaryColor() : this.f10930d.getColor(), Shader.TileMode.CLAMP));
        }
    }

    @Override // com.callapp.contacts.activity.analytics.graph.charts.ChartSeries
    public final boolean a(Canvas canvas, RectF rectF) {
        float f;
        float f2;
        if (super.a(canvas, rectF)) {
            return true;
        }
        boolean z = !this.f10930d.getSpinClockwise();
        PointF inset = this.f10930d.getInset();
        float f3 = BitmapDescriptorFactory.HUE_RED;
        float f4 = inset != null ? this.f10930d.getInset().x : BitmapDescriptorFactory.HUE_RED;
        if (this.f10930d.getInset() != null) {
            f3 = this.f10930d.getInset().y;
        }
        float lineWidth = getSeriesItem().getLineWidth() / 2.0f;
        float maxValue = this.i / (getSeriesItem().getMaxValue() - getSeriesItem().getMinValue());
        float f5 = maxValue;
        if (getSeriesItem().f10962a) {
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
            int i = AnonymousClass1.f10960a[this.q.ordinal()];
            if (i == 1) {
                f = (lineWidth / 2.0f) + f3;
            } else if (i != 2) {
                if (i != 3) {
                    Log.w(this.f10958a, "Invalid Gravity set, VERTICAL_CENTER set (" + this.q + ")");
                }
                f = (canvas.getHeight() / 2) + f3;
            } else {
                f = (canvas.getHeight() - lineWidth) - f3;
            }
            f8 = f;
        } else {
            int i2 = AnonymousClass1.f10961b[this.p.ordinal()];
            if (i2 == 1) {
                f2 = lineWidth + f4;
            } else if (i2 != 2) {
                if (i2 != 3) {
                    Log.w(this.f10958a, "Invalid Gravity set, HORIZONTAL_CENTER set (" + this.p + ")");
                }
                f2 = (canvas.getWidth() / 2) + f4;
            } else {
                f2 = (canvas.getWidth() - lineWidth) - f4;
            }
            f7 = f2;
            width2 = f2;
            f = height2;
        }
        this.f10959b.reset();
        this.f10959b.moveTo(width2, f);
        this.f10959b.lineTo(f7, f8);
        canvas.drawPath(this.f10959b, this.o);
        return true;
    }

    public void setHorizGravity(DecoView.HorizGravity horizGravity) {
        this.p = horizGravity;
    }

    public void setVertGravity(DecoView.VertGravity vertGravity) {
        this.q = vertGravity;
    }
}
