package com.androidplot.p007ui.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import com.androidplot.p007ui.Anchor;
import com.androidplot.p007ui.LayoutManager;
import com.androidplot.p007ui.Size;
import com.androidplot.p007ui.SizeMode;
import com.androidplot.p007ui.TextOrientation;
import com.androidplot.util.FontUtils;
/* renamed from: com.androidplot.ui.widget.TextLabelWidget */
/* loaded from: classes-dex2jar.jar:com/androidplot/ui/widget/TextLabelWidget.class */
public class TextLabelWidget extends Widget {
    private boolean autoPackEnabled;
    private Paint labelPaint;
    private TextOrientation orientation;
    private String text;

    /* renamed from: com.androidplot.ui.widget.TextLabelWidget$1 */
    /* loaded from: classes-dex2jar.jar:com/androidplot/ui/widget/TextLabelWidget$1.class */
    public static /* synthetic */ class C07731 {
        static final /* synthetic */ int[] $SwitchMap$com$androidplot$ui$TextOrientation;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[TextOrientation.values().length];
            $SwitchMap$com$androidplot$ui$TextOrientation = iArr;
            try {
                iArr[TextOrientation.HORIZONTAL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$androidplot$ui$TextOrientation[TextOrientation.VERTICAL_ASCENDING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$androidplot$ui$TextOrientation[TextOrientation.VERTICAL_DESCENDING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public TextLabelWidget(LayoutManager layoutManager, Size size) {
        this(layoutManager, size, TextOrientation.HORIZONTAL);
    }

    public TextLabelWidget(LayoutManager layoutManager, Size size, TextOrientation textOrientation) {
        super(layoutManager, new Size(0.0f, SizeMode.ABSOLUTE, 0.0f, SizeMode.ABSOLUTE));
        this.autoPackEnabled = true;
        Paint paint = new Paint();
        this.labelPaint = paint;
        paint.setColor(-1);
        this.labelPaint.setAntiAlias(true);
        this.labelPaint.setTextAlign(Paint.Align.CENTER);
        setClippingEnabled(false);
        setSize(size);
        this.orientation = textOrientation;
    }

    public TextLabelWidget(LayoutManager layoutManager, String str, Size size, TextOrientation textOrientation) {
        this(layoutManager, size, textOrientation);
        setText(str);
    }

    @Override // com.androidplot.p007ui.widget.Widget
    public void doOnDraw(Canvas canvas, RectF rectF) {
        String str = this.text;
        if (str == null || str.length() == 0) {
            return;
        }
        float f = this.labelPaint.getFontMetrics().descent;
        PointF anchorCoordinates = getAnchorCoordinates(rectF, Anchor.CENTER);
        try {
            canvas.save();
            canvas.translate(anchorCoordinates.x, anchorCoordinates.y);
            int i = C07731.$SwitchMap$com$androidplot$ui$TextOrientation[this.orientation.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    canvas.rotate(-90.0f);
                } else if (i != 3) {
                    throw new UnsupportedOperationException("Orientation " + this.orientation + " not yet implemented for TextLabelWidget.");
                } else {
                    canvas.rotate(90.0f);
                }
            }
            canvas.drawText(this.text, 0.0f, f, this.labelPaint);
        } finally {
            canvas.restore();
        }
    }

    public Paint getLabelPaint() {
        return this.labelPaint;
    }

    public TextOrientation getOrientation() {
        return this.orientation;
    }

    public String getText() {
        return this.text;
    }

    public boolean isAutoPackEnabled() {
        return this.autoPackEnabled;
    }

    @Override // com.androidplot.p007ui.widget.Widget
    protected void onMetricsChanged(Size size, Size size2) {
        if (this.autoPackEnabled) {
            pack();
        }
    }

    @Override // com.androidplot.p007ui.widget.Widget
    public void onPostInit() {
        if (this.autoPackEnabled) {
            pack();
        }
    }

    public void pack() {
        Rect stringDimensions = FontUtils.getStringDimensions(this.text, getLabelPaint());
        if (stringDimensions == null) {
            return;
        }
        int i = C07731.$SwitchMap$com$androidplot$ui$TextOrientation[this.orientation.ordinal()];
        if (i == 1) {
            setSize(new Size(stringDimensions.height(), SizeMode.ABSOLUTE, stringDimensions.width() + 2, SizeMode.ABSOLUTE));
        } else if (i == 2 || i == 3) {
            setSize(new Size(stringDimensions.width(), SizeMode.ABSOLUTE, stringDimensions.height() + 2, SizeMode.ABSOLUTE));
        }
        refreshLayout();
    }

    public void setAutoPackEnabled(boolean z) {
        this.autoPackEnabled = z;
        if (z) {
            pack();
        }
    }

    public void setLabelPaint(Paint paint) {
        this.labelPaint = paint;
        if (this.autoPackEnabled) {
            pack();
        }
    }

    public void setOrientation(TextOrientation textOrientation) {
        this.orientation = textOrientation;
        if (this.autoPackEnabled) {
            pack();
        }
    }

    public void setText(String str) {
        this.text = str;
        if (this.autoPackEnabled) {
            pack();
        }
    }
}
