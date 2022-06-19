package com.androidplot.p007ui.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RectF;
import com.androidplot.p007ui.Anchor;
import com.androidplot.p007ui.BoxModel;
import com.androidplot.p007ui.BoxModelable;
import com.androidplot.p007ui.HorizontalPositioning;
import com.androidplot.p007ui.LayoutManager;
import com.androidplot.p007ui.PositionMetrics;
import com.androidplot.p007ui.Resizable;
import com.androidplot.p007ui.Size;
import com.androidplot.p007ui.SizeMetric;
import com.androidplot.p007ui.SizeMode;
import com.androidplot.p007ui.VerticalPositioning;
import com.androidplot.util.DisplayDimensions;
import com.androidplot.util.PixelUtils;
/* renamed from: com.androidplot.ui.widget.Widget */
/* loaded from: classes-dex2jar.jar:com/androidplot/ui/widget/Widget.class */
public abstract class Widget implements BoxModelable, Resizable {
    private Paint backgroundPaint;
    private Paint borderPaint;
    private BoxModel boxModel;
    private boolean clippingEnabled;
    private boolean isVisible;
    private RectF lastWidgetRect;
    private LayoutManager layoutManager;
    private DisplayDimensions plotDimensions;
    private PositionMetrics positionMetrics;
    private Rotation rotation;
    private Size size;
    private DisplayDimensions widgetDimensions;

    /* renamed from: com.androidplot.ui.widget.Widget$1 */
    /* loaded from: classes-dex2jar.jar:com/androidplot/ui/widget/Widget$1.class */
    public static /* synthetic */ class C07741 {
        static final /* synthetic */ int[] $SwitchMap$com$androidplot$ui$Anchor;
        static final /* synthetic */ int[] $SwitchMap$com$androidplot$ui$widget$Widget$Rotation;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a6 -> B:49:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00aa -> B:45:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00ae -> B:57:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b2 -> B:10:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b6 -> B:61:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00ba -> B:59:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00be -> B:67:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c2 -> B:63:0x006a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c6 -> B:47:0x0075). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00ca -> B:43:0x0081). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00ce -> B:55:0x008d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00d2 -> B:51:0x0099). Please submit an issue!!! */
        static {
            int[] iArr = new int[Rotation.values().length];
            $SwitchMap$com$androidplot$ui$widget$Widget$Rotation = iArr;
            try {
                iArr[Rotation.NINETY_DEGREES.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$androidplot$ui$widget$Widget$Rotation[Rotation.NEGATIVE_NINETY_DEGREES.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$androidplot$ui$widget$Widget$Rotation[Rotation.ONE_HUNDRED_EIGHTY_DEGREES.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$androidplot$ui$widget$Widget$Rotation[Rotation.NONE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            int[] iArr2 = new int[Anchor.values().length];
            $SwitchMap$com$androidplot$ui$Anchor = iArr2;
            try {
                iArr2[Anchor.LEFT_TOP.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$androidplot$ui$Anchor[Anchor.LEFT_MIDDLE.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$androidplot$ui$Anchor[Anchor.LEFT_BOTTOM.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$androidplot$ui$Anchor[Anchor.RIGHT_TOP.ordinal()] = 4;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$androidplot$ui$Anchor[Anchor.RIGHT_BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$androidplot$ui$Anchor[Anchor.RIGHT_MIDDLE.ordinal()] = 6;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$androidplot$ui$Anchor[Anchor.TOP_MIDDLE.ordinal()] = 7;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$androidplot$ui$Anchor[Anchor.BOTTOM_MIDDLE.ordinal()] = 8;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$androidplot$ui$Anchor[Anchor.CENTER.ordinal()] = 9;
            } catch (NoSuchFieldError e13) {
            }
        }
    }

    /* renamed from: com.androidplot.ui.widget.Widget$Rotation */
    /* loaded from: classes-dex2jar.jar:com/androidplot/ui/widget/Widget$Rotation.class */
    public enum Rotation {
        NINETY_DEGREES,
        NEGATIVE_NINETY_DEGREES,
        ONE_HUNDRED_EIGHTY_DEGREES,
        NONE
    }

    public Widget(LayoutManager layoutManager, Size size) {
        this.clippingEnabled = false;
        this.boxModel = new BoxModel();
        this.plotDimensions = new DisplayDimensions();
        this.widgetDimensions = new DisplayDimensions();
        this.isVisible = true;
        this.rotation = Rotation.NONE;
        this.lastWidgetRect = null;
        this.layoutManager = layoutManager;
        Size size2 = this.size;
        setSize(size);
        onMetricsChanged(size2, size);
    }

    public Widget(LayoutManager layoutManager, SizeMetric sizeMetric, SizeMetric sizeMetric2) {
        this(layoutManager, new Size(sizeMetric, sizeMetric2));
    }

    public static PointF calculateCoordinates(float f, float f2, RectF rectF, PositionMetrics positionMetrics) {
        return PixelUtils.sub(new PointF(positionMetrics.getXPositionMetric().getPixelValue(rectF.width()) + rectF.left, positionMetrics.getYPositionMetric().getPixelValue(rectF.height()) + rectF.top), getAnchorOffset(f2, f, positionMetrics.getAnchor()));
    }

    private void checkSize(RectF rectF) {
        RectF rectF2 = this.lastWidgetRect;
        if (rectF2 == null || !rectF2.equals(rectF)) {
            onResize(this.lastWidgetRect, rectF);
        }
        this.lastWidgetRect = rectF;
    }

    public static PointF getAnchorCoordinates(float f, float f2, float f3, float f4, Anchor anchor) {
        return getAnchorCoordinates(new RectF(f, f2, f3 + f, f4 + f2), anchor);
    }

    public static PointF getAnchorCoordinates(RectF rectF, Anchor anchor) {
        return PixelUtils.add(new PointF(rectF.left, rectF.top), getAnchorOffset(rectF.width(), rectF.height(), anchor));
    }

    public static PointF getAnchorOffset(float f, float f2, Anchor anchor) {
        PointF pointF = new PointF();
        switch (C07741.$SwitchMap$com$androidplot$ui$Anchor[anchor.ordinal()]) {
            case 1:
                break;
            case 2:
                pointF.set(0.0f, f2 / 2.0f);
                break;
            case 3:
                pointF.set(0.0f, f2);
                break;
            case 4:
                pointF.set(f, 0.0f);
                break;
            case 5:
                pointF.set(f, f2);
                break;
            case 6:
                pointF.set(f, f2 / 2.0f);
                break;
            case 7:
                pointF.set(f / 2.0f, 0.0f);
                break;
            case 8:
                pointF.set(f / 2.0f, f2);
                break;
            case 9:
                pointF.set(f / 2.0f, f2 / 2.0f);
                break;
            default:
                throw new IllegalArgumentException("Unsupported anchor location: " + anchor);
        }
        return pointF;
    }

    protected RectF applyRotation(Canvas canvas, RectF rectF) {
        float f;
        float centerX = this.widgetDimensions.paddedRect.centerX();
        float centerY = this.widgetDimensions.paddedRect.centerY();
        float height = this.widgetDimensions.paddedRect.height() / 2.0f;
        float width = this.widgetDimensions.paddedRect.width() / 2.0f;
        int i = C07741.$SwitchMap$com$androidplot$ui$widget$Widget$Rotation[this.rotation.ordinal()];
        if (i == 1) {
            rectF = new RectF(centerX - height, centerY - width, height + centerX, width + centerY);
            f = 90.0f;
        } else if (i == 2) {
            rectF = new RectF(centerX - height, centerY - width, height + centerX, width + centerY);
            f = -90.0f;
        } else if (i == 3) {
            f = 180.0f;
        } else if (i != 4) {
            throw new UnsupportedOperationException("Not yet implemented.");
        } else {
            f = 0.0f;
        }
        if (this.rotation != Rotation.NONE) {
            canvas.rotate(f, centerX, centerY);
        }
        return rectF;
    }

    public boolean containsPoint(PointF pointF) {
        return this.widgetDimensions.canvasRect.contains(pointF.x, pointF.y);
    }

    protected abstract void doOnDraw(Canvas canvas, RectF rectF);

    public void draw(Canvas canvas) {
        if (isVisible()) {
            if (this.backgroundPaint != null) {
                drawBackground(canvas, this.widgetDimensions.canvasRect);
            }
            canvas.save();
            RectF applyRotation = applyRotation(canvas, this.widgetDimensions.paddedRect);
            checkSize(applyRotation);
            doOnDraw(canvas, applyRotation);
            canvas.restore();
            if (this.borderPaint == null) {
                return;
            }
            drawBorder(canvas, applyRotation);
        }
    }

    protected void drawBackground(Canvas canvas, RectF rectF) {
        canvas.drawRect(rectF, this.backgroundPaint);
    }

    protected void drawBorder(Canvas canvas, RectF rectF) {
        canvas.drawRect(rectF, this.borderPaint);
    }

    public Anchor getAnchor() {
        return getPositionMetrics().getAnchor();
    }

    public Paint getBackgroundPaint() {
        return this.backgroundPaint;
    }

    public Paint getBorderPaint() {
        return this.borderPaint;
    }

    public SizeMetric getHeightMetric() {
        return this.size.getHeight();
    }

    public float getHeightPix(float f) {
        return this.size.getHeight().getPixelValue(f);
    }

    @Override // com.androidplot.p007ui.BoxModelable
    public float getMarginBottom() {
        return this.boxModel.getMarginBottom();
    }

    @Override // com.androidplot.p007ui.BoxModelable
    public float getMarginLeft() {
        return this.boxModel.getMarginLeft();
    }

    @Override // com.androidplot.p007ui.BoxModelable
    public float getMarginRight() {
        return this.boxModel.getMarginRight();
    }

    @Override // com.androidplot.p007ui.BoxModelable
    public float getMarginTop() {
        return this.boxModel.getMarginTop();
    }

    @Override // com.androidplot.p007ui.BoxModelable
    public RectF getMarginatedRect(RectF rectF) {
        return this.boxModel.getMarginatedRect(rectF);
    }

    @Override // com.androidplot.p007ui.BoxModelable
    public RectF getPaddedRect(RectF rectF) {
        return this.boxModel.getPaddedRect(rectF);
    }

    @Override // com.androidplot.p007ui.BoxModelable
    public float getPaddingBottom() {
        return this.boxModel.getPaddingBottom();
    }

    @Override // com.androidplot.p007ui.BoxModelable
    public float getPaddingLeft() {
        return this.boxModel.getPaddingLeft();
    }

    @Override // com.androidplot.p007ui.BoxModelable
    public float getPaddingRight() {
        return this.boxModel.getPaddingRight();
    }

    @Override // com.androidplot.p007ui.BoxModelable
    public float getPaddingTop() {
        return this.boxModel.getPaddingTop();
    }

    public PositionMetrics getPositionMetrics() {
        return this.positionMetrics;
    }

    public Rotation getRotation() {
        return this.rotation;
    }

    public Size getSize() {
        return this.size;
    }

    public DisplayDimensions getWidgetDimensions() {
        return this.widgetDimensions;
    }

    public SizeMetric getWidthMetric() {
        return this.size.getWidth();
    }

    public float getWidthPix(float f) {
        return this.size.getWidth().getPixelValue(f);
    }

    public boolean isClippingEnabled() {
        return this.clippingEnabled;
    }

    public boolean isVisible() {
        return this.isVisible;
    }

    @Override // com.androidplot.p007ui.Resizable
    public void layout(DisplayDimensions displayDimensions) {
        synchronized (this) {
            this.plotDimensions = displayDimensions;
            refreshLayout();
        }
    }

    protected void onMetricsChanged(Size size, Size size2) {
    }

    public void onPostInit() {
    }

    protected void onResize(RectF rectF, RectF rectF2) {
    }

    public void position(float f, HorizontalPositioning horizontalPositioning, float f2, VerticalPositioning verticalPositioning) {
        position(f, horizontalPositioning, f2, verticalPositioning, Anchor.LEFT_TOP);
    }

    public void position(float f, HorizontalPositioning horizontalPositioning, float f2, VerticalPositioning verticalPositioning, Anchor anchor) {
        setPositionMetrics(new PositionMetrics(f, horizontalPositioning, f2, verticalPositioning, anchor));
        this.layoutManager.addToTop(this);
    }

    public void refreshLayout() {
        synchronized (this) {
            if (this.positionMetrics == null) {
                return;
            }
            float widthPix = getWidthPix(this.plotDimensions.paddedRect.width());
            float heightPix = getHeightPix(this.plotDimensions.paddedRect.height());
            PointF calculateCoordinates = calculateCoordinates(heightPix, widthPix, this.plotDimensions.paddedRect, this.positionMetrics);
            RectF rectF = new RectF(calculateCoordinates.x, calculateCoordinates.y, calculateCoordinates.x + widthPix, calculateCoordinates.y + heightPix);
            RectF marginatedRect = getMarginatedRect(rectF);
            this.widgetDimensions = new DisplayDimensions(rectF, marginatedRect, getPaddedRect(marginatedRect));
        }
    }

    public void setAnchor(Anchor anchor) {
        getPositionMetrics().setAnchor(anchor);
    }

    public void setBackgroundPaint(Paint paint) {
        this.backgroundPaint = paint;
    }

    public void setBorderPaint(Paint paint) {
        this.borderPaint = paint;
    }

    public void setClippingEnabled(boolean z) {
        this.clippingEnabled = z;
    }

    public void setHeight(float f) {
        this.size.getHeight().setValue(f);
    }

    public void setHeight(float f, SizeMode sizeMode) {
        this.size.getHeight().set(f, sizeMode);
    }

    @Override // com.androidplot.p007ui.BoxModelable
    public void setMarginBottom(float f) {
        this.boxModel.setMarginBottom(f);
    }

    @Override // com.androidplot.p007ui.BoxModelable
    public void setMarginLeft(float f) {
        this.boxModel.setMarginLeft(f);
    }

    @Override // com.androidplot.p007ui.BoxModelable
    public void setMarginRight(float f) {
        this.boxModel.setMarginRight(f);
    }

    @Override // com.androidplot.p007ui.BoxModelable
    public void setMarginTop(float f) {
        this.boxModel.setMarginTop(f);
    }

    @Override // com.androidplot.p007ui.BoxModelable
    public void setMargins(float f, float f2, float f3, float f4) {
        this.boxModel.setMargins(f, f2, f3, f4);
    }

    @Override // com.androidplot.p007ui.BoxModelable
    public void setPadding(float f, float f2, float f3, float f4) {
        this.boxModel.setPadding(f, f2, f3, f4);
    }

    @Override // com.androidplot.p007ui.BoxModelable
    public void setPaddingBottom(float f) {
        this.boxModel.setPaddingBottom(f);
    }

    @Override // com.androidplot.p007ui.BoxModelable
    public void setPaddingLeft(float f) {
        this.boxModel.setPaddingLeft(f);
    }

    @Override // com.androidplot.p007ui.BoxModelable
    public void setPaddingRight(float f) {
        this.boxModel.setPaddingRight(f);
    }

    @Override // com.androidplot.p007ui.BoxModelable
    public void setPaddingTop(float f) {
        this.boxModel.setPaddingTop(f);
    }

    public void setPositionMetrics(PositionMetrics positionMetrics) {
        this.positionMetrics = positionMetrics;
    }

    public void setRotation(Rotation rotation) {
        this.rotation = rotation;
    }

    public void setSize(Size size) {
        this.size = size;
    }

    public void setVisible(boolean z) {
        this.isVisible = z;
    }

    public void setWidth(float f) {
        this.size.getWidth().setValue(f);
    }

    public void setWidth(float f, SizeMode sizeMode) {
        this.size.getWidth().set(f, sizeMode);
    }
}
