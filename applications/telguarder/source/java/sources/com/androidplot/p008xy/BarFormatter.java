package com.androidplot.p008xy;

import android.content.Context;
import android.graphics.Paint;
import com.androidplot.p007ui.SeriesRenderer;
/* renamed from: com.androidplot.xy.BarFormatter */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/BarFormatter.class */
public class BarFormatter extends LineAndPointFormatter {
    private Paint borderPaint;
    private Paint fillPaint;
    private float marginBottom;
    private float marginLeft;
    private float marginRight;
    private float marginTop;

    public BarFormatter() {
        Paint paint = new Paint();
        this.fillPaint = paint;
        paint.setStyle(Paint.Style.FILL);
        this.fillPaint.setAlpha(100);
        Paint paint2 = new Paint();
        this.borderPaint = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        this.borderPaint.setAlpha(100);
    }

    public BarFormatter(int i, int i2) {
        this();
        this.fillPaint.setColor(i);
        this.borderPaint.setColor(i2);
    }

    public BarFormatter(Context context, int i) {
        this();
        configure(context, i);
    }

    @Override // com.androidplot.p008xy.LineAndPointFormatter
    public SeriesRenderer doGetRendererInstance(XYPlot xYPlot) {
        return new BarRenderer(xYPlot);
    }

    public Paint getBorderPaint() {
        return this.borderPaint;
    }

    @Override // com.androidplot.p008xy.LineAndPointFormatter
    public Paint getFillPaint() {
        return this.fillPaint;
    }

    public float getMarginBottom() {
        return this.marginBottom;
    }

    public float getMarginLeft() {
        return this.marginLeft;
    }

    public float getMarginRight() {
        return this.marginRight;
    }

    public float getMarginTop() {
        return this.marginTop;
    }

    @Override // com.androidplot.p008xy.LineAndPointFormatter, com.androidplot.p007ui.Formatter
    public Class<? extends SeriesRenderer> getRendererClass() {
        return BarRenderer.class;
    }

    public void setBorderPaint(Paint paint) {
        this.borderPaint = paint;
    }

    @Override // com.androidplot.p008xy.LineAndPointFormatter
    public void setFillPaint(Paint paint) {
        this.fillPaint = paint;
    }

    public void setMarginBottom(float f) {
        this.marginBottom = f;
    }

    public void setMarginLeft(float f) {
        this.marginLeft = f;
    }

    public void setMarginRight(float f) {
        this.marginRight = f;
    }

    public void setMarginTop(float f) {
        this.marginTop = f;
    }
}
