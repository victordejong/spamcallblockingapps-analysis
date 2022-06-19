package com.venmo.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.widget.TextView;
/* loaded from: classes2-dex2jar.jar:com/venmo/view/TooltipView.class */
public class TooltipView extends TextView {
    private static final int NOT_PRESENT = Integer.MIN_VALUE;
    private int alignmentOffset;
    private int anchoredViewId;
    private ArrowAlignment arrowAlignment;
    private int arrowHeight;
    private ArrowLocation arrowLocation;
    private int arrowPositioning;
    private int arrowWidth;
    private int cornerRadius;
    private Paint paint;
    private int tooltipColor;
    private Path tooltipPath;

    public TooltipView(Context context) {
        super(context);
        init(null, 0);
    }

    public TooltipView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(attributeSet, 0);
    }

    public TooltipView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(attributeSet, i);
    }

    private int getDimension(TypedArray typedArray, int i, int i2) {
        int dimensionPixelSize = typedArray.getDimensionPixelSize(i, Integer.MIN_VALUE);
        int i3 = dimensionPixelSize;
        if (dimensionPixelSize == Integer.MIN_VALUE) {
            i3 = getResources().getDimensionPixelSize(i2);
        }
        return i3;
    }

    private void init(AttributeSet attributeSet, int i) {
        Resources resources = getResources();
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C2361R.styleable.TooltipView, i, 0);
        try {
            this.anchoredViewId = obtainStyledAttributes.getResourceId(C2361R.styleable.TooltipView_anchoredView, -1);
            this.tooltipColor = obtainStyledAttributes.getColor(C2361R.styleable.TooltipView_tooltipColor, 0);
            this.cornerRadius = getDimension(obtainStyledAttributes, C2361R.styleable.TooltipView_cornerRadius, C2361R.dimen.tooltip_default_corner_radius);
            this.arrowHeight = getDimension(obtainStyledAttributes, C2361R.styleable.TooltipView_arrowHeight, C2361R.dimen.tooltip_default_arrow_height);
            this.arrowWidth = getDimension(obtainStyledAttributes, C2361R.styleable.TooltipView_arrowWidth, C2361R.dimen.tooltip_default_arrow_width);
            int integer = obtainStyledAttributes.getInteger(C2361R.styleable.TooltipView_arrowLocation, resources.getInteger(C2361R.integer.tooltip_default_arrow_location));
            this.arrowPositioning = integer;
            this.arrowLocation = integer == 0 ? new TopArrowLocation() : new BottomArrowLocation();
            this.arrowAlignment = ArrowAlignment.getAlignment(obtainStyledAttributes.getInteger(C2361R.styleable.TooltipView_arrowAlignment, resources.getInteger(C2361R.integer.tooltip_default_arrow_alignment)));
            this.alignmentOffset = getDimension(obtainStyledAttributes, C2361R.styleable.TooltipView_arrowAlignmentOffset, C2361R.dimen.tooltip_default_offset);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public int getAlignmentOffset() {
        return this.alignmentOffset;
    }

    public int getAnchoredViewId() {
        return this.anchoredViewId;
    }

    public ArrowAlignment getArrowAlignment() {
        return this.arrowAlignment;
    }

    public int getArrowHeight() {
        return this.arrowHeight;
    }

    public int getArrowWidth() {
        return this.arrowWidth;
    }

    public int getCornerRadius() {
        return this.cornerRadius;
    }

    public int getTooltipColor() {
        return this.tooltipColor;
    }

    public Paint getTooltipPaint() {
        return this.paint;
    }

    public Path getTooltipPath() {
        return this.tooltipPath;
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        this.tooltipPath = null;
        this.paint = null;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.tooltipPath == null || this.paint == null) {
            this.arrowLocation.configureDraw(this, canvas);
        }
        canvas.drawPath(this.tooltipPath, this.paint);
        super.onDraw(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight() + this.arrowHeight);
    }

    public void setAlignmentOffset(int i) {
        this.alignmentOffset = i;
        invalidate();
    }

    public void setAlignmentOffsetResource(int i) {
        this.alignmentOffset = getResources().getDimensionPixelSize(i);
        invalidate();
    }

    public void setAnchoredViewId(int i) {
        this.anchoredViewId = i;
        invalidate();
    }

    public void setArrowAlignment(ArrowAlignment arrowAlignment) {
        this.arrowAlignment = arrowAlignment;
        invalidate();
    }

    public void setArrowHeight(int i) {
        this.arrowHeight = i;
        invalidate();
    }

    public void setArrowHeightResource(int i) {
        this.arrowHeight = getResources().getDimensionPixelSize(i);
        invalidate();
    }

    public void setArrowPositioning(int i) {
        this.arrowPositioning = i;
        invalidate();
    }

    public void setArrowWidth(int i) {
        this.arrowWidth = i;
        invalidate();
    }

    public void setArrowWidthResource(int i) {
        this.arrowWidth = getResources().getDimensionPixelSize(i);
        invalidate();
    }

    public void setCornerRadius(int i) {
        this.cornerRadius = i;
        invalidate();
    }

    public void setCornerRadiusResource(int i) {
        this.cornerRadius = getResources().getDimensionPixelSize(i);
        invalidate();
    }

    public void setPaint(Paint paint) {
        this.paint = paint;
    }

    public void setTooltipColor(int i) {
        this.tooltipColor = i;
        invalidate();
    }

    public void setTooltipPath(Path path) {
        this.tooltipPath = path;
    }
}
