package com.androidplot.p008xy;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import com.androidplot.p007ui.Formatter;
import com.androidplot.p007ui.RenderStack;
import com.androidplot.p007ui.SeriesBundle;
import com.androidplot.p008xy.CandlestickFormatter;
import java.util.List;
/* renamed from: com.androidplot.xy.CandlestickRenderer */
/* loaded from: classes-dex2jar.jar:com/androidplot/xy/CandlestickRenderer.class */
public class CandlestickRenderer<FormatterType extends CandlestickFormatter> extends GroupRenderer<FormatterType> {
    protected static final int CLOSE_INDEX = 3;
    protected static final int HIGH_INDEX = 0;
    protected static final int LOW_INDEX = 1;
    protected static final int OPEN_INDEX = 2;

    /* renamed from: com.androidplot.xy.CandlestickRenderer$1 */
    /* loaded from: classes-dex2jar.jar:com/androidplot/xy/CandlestickRenderer$1.class */
    public static /* synthetic */ class C07771 {
        static final /* synthetic */ int[] $SwitchMap$com$androidplot$xy$CandlestickFormatter$BodyStyle;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[CandlestickFormatter.BodyStyle.values().length];
            $SwitchMap$com$androidplot$xy$CandlestickFormatter$BodyStyle = iArr;
            try {
                iArr[CandlestickFormatter.BodyStyle.SQUARE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$androidplot$xy$CandlestickFormatter$BodyStyle[CandlestickFormatter.BodyStyle.TRIANGULAR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public CandlestickRenderer(XYPlot xYPlot) {
        super(xYPlot);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.androidplot.p007ui.SeriesRenderer
    protected /* bridge */ /* synthetic */ void doDrawLegendIcon(Canvas canvas, RectF rectF, Formatter formatter) {
        doDrawLegendIcon(canvas, rectF, (RectF) ((CandlestickFormatter) formatter));
    }

    protected void doDrawLegendIcon(Canvas canvas, RectF rectF, FormatterType formattertype) {
    }

    protected void drawBody(Canvas canvas, PointF pointF, PointF pointF2, FormatterType formattertype) {
        float bodyWidth = formattertype.getBodyWidth() / 2.0f;
        RectF rectF = new RectF(pointF.x - bodyWidth, pointF.y, pointF2.x + bodyWidth, pointF2.y);
        Paint risingBodyFillPaint = pointF.y >= pointF2.y ? formattertype.getRisingBodyFillPaint() : formattertype.getFallingBodyFillPaint();
        Paint risingBodyStrokePaint = pointF.y >= pointF2.y ? formattertype.getRisingBodyStrokePaint() : formattertype.getFallingBodyStrokePaint();
        int i = C07771.$SwitchMap$com$androidplot$xy$CandlestickFormatter$BodyStyle[formattertype.getBodyStyle().ordinal()];
        if (i == 1) {
            canvas.drawRect(rectF, risingBodyFillPaint);
            canvas.drawRect(rectF, risingBodyStrokePaint);
        } else if (i != 2) {
        } else {
            drawTriangle(canvas, rectF, risingBodyFillPaint, risingBodyStrokePaint);
        }
    }

    protected void drawLowerCap(Canvas canvas, PointF pointF, FormatterType formattertype) {
        float lowerCapWidth = formattertype.getLowerCapWidth();
        canvas.drawLine(pointF.x - lowerCapWidth, pointF.y, pointF.x + lowerCapWidth, pointF.y, formattertype.getLowerCapPaint());
    }

    protected void drawTextLabel(Canvas canvas, PointF pointF, String str, PointLabelFormatter pointLabelFormatter) {
        if (str != null) {
            canvas.drawText(str, pointF.x + pointLabelFormatter.hOffset, pointF.y + pointLabelFormatter.vOffset, pointLabelFormatter.getTextPaint());
        }
    }

    protected void drawTriangle(Canvas canvas, RectF rectF, Paint paint, Paint paint2) {
        Path path = new Path();
        path.moveTo(rectF.centerX(), rectF.bottom);
        path.lineTo(rectF.left, rectF.top);
        path.lineTo(rectF.right, rectF.top);
        path.close();
        canvas.drawPath(path, paint);
        canvas.drawPath(path, paint2);
    }

    protected void drawUpperCap(Canvas canvas, PointF pointF, FormatterType formattertype) {
        float upperCapWidth = formattertype.getUpperCapWidth();
        canvas.drawLine(pointF.x - upperCapWidth, pointF.y, pointF.x + upperCapWidth, pointF.y, formattertype.getUpperCapPaint());
    }

    protected void drawWick(Canvas canvas, PointF pointF, PointF pointF2, FormatterType formattertype) {
        canvas.drawLine(pointF.x, pointF.y, pointF2.x, pointF2.y, formattertype.getWickPaint());
    }

    @Override // com.androidplot.p008xy.GroupRenderer
    public void onRender(Canvas canvas, RectF rectF, List<SeriesBundle<XYSeries, ? extends FormatterType>> list, int i, RenderStack renderStack) {
        FormatterType formatter = list.get(0).getFormatter();
        for (int i2 = 0; i2 < i; i2++) {
            XYSeries series = list.get(0).getSeries();
            XYSeries series2 = list.get(1).getSeries();
            XYSeries series3 = list.get(2).getSeries();
            XYSeries series4 = list.get(3).getSeries();
            Number x = series.getX(i2);
            Number y = series.getY(i2);
            Number y2 = series2.getY(i2);
            Number y3 = series3.getY(i2);
            Number y4 = series4.getY(i2);
            PointF transformScreen = ((XYPlot) getPlot()).getBounds().transformScreen(x, y, rectF);
            PointF transformScreen2 = ((XYPlot) getPlot()).getBounds().transformScreen(x, y2, rectF);
            PointF transformScreen3 = ((XYPlot) getPlot()).getBounds().transformScreen(x, y3, rectF);
            PointF transformScreen4 = ((XYPlot) getPlot()).getBounds().transformScreen(x, y4, rectF);
            drawWick(canvas, transformScreen, transformScreen2, formatter);
            drawBody(canvas, transformScreen3, transformScreen4, formatter);
            drawUpperCap(canvas, transformScreen, formatter);
            drawLowerCap(canvas, transformScreen2, formatter);
            PointLabelFormatter pointLabelFormatter = formatter.hasPointLabelFormatter() ? formatter.getPointLabelFormatter() : null;
            PointLabeler pointLabeler = formatter.getPointLabeler();
            if (pointLabelFormatter != null && pointLabeler != null) {
                drawTextLabel(canvas, transformScreen, pointLabeler.getLabel(series, i2), pointLabelFormatter);
                drawTextLabel(canvas, transformScreen2, pointLabeler.getLabel(series2, i2), pointLabelFormatter);
                drawTextLabel(canvas, transformScreen3, pointLabeler.getLabel(series3, i2), pointLabelFormatter);
                drawTextLabel(canvas, transformScreen4, pointLabeler.getLabel(series4, i2), pointLabelFormatter);
            }
        }
    }
}
