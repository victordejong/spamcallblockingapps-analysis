package com.androidplot.p008xy;

import android.content.Context;
import android.graphics.Paint;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import com.androidplot.p007ui.SeriesRenderer;
import com.androidplot.util.PixelUtils;
/* renamed from: com.androidplot.xy.CandlestickFormatter */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/CandlestickFormatter.class */
public class CandlestickFormatter extends XYSeriesFormatter<XYRegionFormatter> {
    private BodyStyle bodyStyle;
    private float bodyWidth;
    private Paint fallingBodyFillPaint;
    private Paint fallingBodyStrokePaint;
    private Paint lowerCapPaint;
    private float lowerCapWidth;
    private Paint risingBodyFillPaint;
    private Paint risingBodyStrokePaint;
    private Paint upperCapPaint;
    private float upperCapWidth;
    private Paint wickPaint;
    private static final float DEFAULT_WIDTH_PIX = PixelUtils.dpToPix(10.0f);
    private static final float DEFAULT_STROKE_PIX = PixelUtils.dpToPix(4.0f);

    /* renamed from: com.androidplot.xy.CandlestickFormatter$BodyStyle */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/CandlestickFormatter$BodyStyle.class */
    public enum BodyStyle {
        SQUARE,
        TRIANGULAR
    }

    public CandlestickFormatter() {
        this(getDefaultStrokePaint(InputDeviceCompat.SOURCE_ANY), getDefaultFillPaint(-16711936), getDefaultFillPaint(SupportMenu.CATEGORY_MASK), getDefaultStrokePaint(-16711936), getDefaultStrokePaint(SupportMenu.CATEGORY_MASK), getDefaultStrokePaint(InputDeviceCompat.SOURCE_ANY), getDefaultStrokePaint(InputDeviceCompat.SOURCE_ANY), BodyStyle.SQUARE);
    }

    public CandlestickFormatter(Context context, int i) {
        this();
        configure(context, i);
    }

    public CandlestickFormatter(Paint paint, Paint paint2, Paint paint3, Paint paint4, Paint paint5, Paint paint6, Paint paint7, BodyStyle bodyStyle) {
        float f = DEFAULT_WIDTH_PIX;
        this.bodyWidth = f;
        this.upperCapWidth = f;
        this.lowerCapWidth = f;
        setWickPaint(paint);
        setRisingBodyFillPaint(paint2);
        setFallingBodyFillPaint(paint3);
        setRisingBodyStrokePaint(paint4);
        setFallingBodyStrokePaint(paint5);
        setUpperCapPaint(paint6);
        setLowerCapPaint(paint7);
        setBodyStyle(bodyStyle);
    }

    protected static Paint getDefaultFillPaint(int i) {
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(i);
        return paint;
    }

    protected static Paint getDefaultStrokePaint(int i) {
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(DEFAULT_STROKE_PIX);
        paint.setColor(i);
        paint.setAntiAlias(true);
        return paint;
    }

    public SeriesRenderer doGetRendererInstance(XYPlot xYPlot) {
        return new CandlestickRenderer(xYPlot);
    }

    public BodyStyle getBodyStyle() {
        return this.bodyStyle;
    }

    public float getBodyWidth() {
        return this.bodyWidth;
    }

    public Paint getFallingBodyFillPaint() {
        return this.fallingBodyFillPaint;
    }

    public Paint getFallingBodyStrokePaint() {
        return this.fallingBodyStrokePaint;
    }

    public Paint getLowerCapPaint() {
        return this.lowerCapPaint;
    }

    public float getLowerCapWidth() {
        return this.lowerCapWidth;
    }

    @Override // com.androidplot.p007ui.Formatter
    public Class<? extends SeriesRenderer> getRendererClass() {
        return CandlestickRenderer.class;
    }

    public Paint getRisingBodyFillPaint() {
        return this.risingBodyFillPaint;
    }

    public Paint getRisingBodyStrokePaint() {
        return this.risingBodyStrokePaint;
    }

    public Paint getUpperCapPaint() {
        return this.upperCapPaint;
    }

    public float getUpperCapWidth() {
        return this.upperCapWidth;
    }

    public Paint getWickPaint() {
        return this.wickPaint;
    }

    public void setBodyStyle(BodyStyle bodyStyle) {
        this.bodyStyle = bodyStyle;
    }

    public void setBodyWidth(float f) {
        this.bodyWidth = f;
    }

    public void setCapAndWickPaint(Paint paint) {
        setUpperCapPaint(paint);
        setLowerCapPaint(paint);
        setWickPaint(paint);
    }

    public void setFallingBodyFillPaint(Paint paint) {
        this.fallingBodyFillPaint = paint;
    }

    public void setFallingBodyStrokePaint(Paint paint) {
        this.fallingBodyStrokePaint = paint;
    }

    public void setLowerCapPaint(Paint paint) {
        this.lowerCapPaint = paint;
    }

    public void setLowerCapWidth(float f) {
        this.lowerCapWidth = f;
    }

    public void setRisingBodyFillPaint(Paint paint) {
        this.risingBodyFillPaint = paint;
    }

    public void setRisingBodyStrokePaint(Paint paint) {
        this.risingBodyStrokePaint = paint;
    }

    public void setUpperCapPaint(Paint paint) {
        this.upperCapPaint = paint;
    }

    public void setUpperCapWidth(float f) {
        this.upperCapWidth = f;
    }

    public void setWickPaint(Paint paint) {
        this.wickPaint = paint;
    }
}
