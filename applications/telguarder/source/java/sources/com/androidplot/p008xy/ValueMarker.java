package com.androidplot.p008xy;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.core.internal.view.SupportMenu;
import com.androidplot.p007ui.PositionMetric;
import com.androidplot.p007ui.TextOrientation;
import com.androidplot.util.FontUtils;
/* renamed from: com.androidplot.xy.ValueMarker */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/ValueMarker.class */
public abstract class ValueMarker<PositionMetricType extends PositionMetric> {
    private static final int MARKER_LABEL_SPACING = 2;
    private Paint linePaint;
    private String text;
    private int textMargin;
    private TextOrientation textOrientation;
    private Paint textPaint;
    private PositionMetricType textPosition;
    private Number value;

    public ValueMarker(Number number, String str, PositionMetricType positionmetrictype) {
        this.textMargin = 2;
        Paint paint = new Paint();
        this.linePaint = paint;
        paint.setColor(SupportMenu.CATEGORY_MASK);
        this.linePaint.setAntiAlias(true);
        this.linePaint.setStyle(Paint.Style.STROKE);
        Paint paint2 = new Paint();
        this.textPaint = paint2;
        paint2.setAntiAlias(true);
        this.textPaint.setColor(SupportMenu.CATEGORY_MASK);
        this.value = number;
        this.textPosition = positionmetrictype;
        this.text = str;
    }

    public ValueMarker(Number number, String str, PositionMetricType positionmetrictype, int i, int i2) {
        this(number, str, positionmetrictype);
        this.linePaint.setColor(i);
        this.textPaint.setColor(i2);
    }

    public ValueMarker(Number number, String str, PositionMetricType positionmetrictype, Paint paint, Paint paint2) {
        this(number, str, positionmetrictype);
        this.linePaint = paint;
        this.textPaint = paint2;
    }

    public abstract void draw(Canvas canvas, XYPlot xYPlot, RectF rectF);

    public void drawMarkerText(Canvas canvas, String str, RectF rectF, float f, float f2) {
        if (getText() != null) {
            RectF rectF2 = new RectF(FontUtils.getStringDimensions(str, getTextPaint()));
            rectF2.offsetTo(f + 2.0f, (f2 - 2.0f) - rectF2.height());
            if (rectF2.right > rectF.right) {
                rectF2.offset(-(rectF2.right - rectF.right), 0.0f);
            }
            if (rectF2.top < rectF.top) {
                rectF2.offset(0.0f, rectF.top - rectF2.top);
            }
            canvas.drawText(str, rectF2.left, rectF2.bottom, getTextPaint());
        }
    }

    public Paint getLinePaint() {
        return this.linePaint;
    }

    public String getText() {
        return this.text;
    }

    public int getTextMargin() {
        return this.textMargin;
    }

    public TextOrientation getTextOrientation() {
        return this.textOrientation;
    }

    public Paint getTextPaint() {
        return this.textPaint;
    }

    public PositionMetricType getTextPosition() {
        return this.textPosition;
    }

    public Number getValue() {
        return this.value;
    }

    public void setLinePaint(Paint paint) {
        this.linePaint = paint;
    }

    public void setText(String str) {
        this.text = str;
    }

    public void setTextMargin(int i) {
        this.textMargin = i;
    }

    public void setTextOrientation(TextOrientation textOrientation) {
        this.textOrientation = textOrientation;
    }

    public void setTextPaint(Paint paint) {
        this.textPaint = paint;
    }

    public void setTextPosition(PositionMetricType positionmetrictype) {
        this.textPosition = positionmetrictype;
    }

    public void setValue(Number number) {
        this.value = number;
    }
}
