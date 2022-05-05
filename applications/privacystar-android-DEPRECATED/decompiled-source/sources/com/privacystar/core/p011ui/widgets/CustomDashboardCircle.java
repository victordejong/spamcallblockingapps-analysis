package com.privacystar.core.p011ui.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.support.p001v4.view.ViewCompat;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import com.privacystar.core.C1566R;
/* renamed from: com.privacystar.core.ui.widgets.CustomDashboardCircle */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/CustomDashboardCircle.class */
public class CustomDashboardCircle extends View {
    private Paint bacgroundPaint;
    private int backgroundColor;
    private float backgroundWidth;
    int defStyleAttr;
    float drawUpto;
    private RectF mArcBounds;
    private float mRadius;
    private float maxValue;
    private String prefix;
    private Paint progressBarPaint;
    private int progressColor;
    private int progressTextColor;
    private boolean roundedCorners;
    private float strokeWidth;
    private String suffix;
    private String text;
    private Paint textPaint;
    private float textSize;

    public CustomDashboardCircle(Context context) {
        super(context);
        this.mArcBounds = new RectF();
        this.drawUpto = 0.0f;
        this.progressTextColor = ViewCompat.MEASURED_STATE_MASK;
        this.textSize = 18.0f;
        this.text = "";
        this.suffix = "";
        this.prefix = "";
    }

    public CustomDashboardCircle(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        initPaints(context, attributeSet);
    }

    public CustomDashboardCircle(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mArcBounds = new RectF();
        this.drawUpto = 0.0f;
        this.progressTextColor = ViewCompat.MEASURED_STATE_MASK;
        this.textSize = 18.0f;
        this.text = "";
        this.suffix = "";
        this.prefix = "";
        this.defStyleAttr = i;
        initPaints(context, attributeSet);
    }

    private void initPaints(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1566R.styleable.CustomDashboardCircle, this.defStyleAttr, 0);
        this.progressColor = obtainStyledAttributes.getColor(4, -16776961);
        this.backgroundColor = obtainStyledAttributes.getColor(0, -7829368);
        this.strokeWidth = obtainStyledAttributes.getFloat(8, 10.0f);
        this.backgroundWidth = obtainStyledAttributes.getFloat(1, 10.0f);
        this.roundedCorners = obtainStyledAttributes.getBoolean(7, false);
        this.maxValue = obtainStyledAttributes.getFloat(2, 100.0f);
        this.progressTextColor = obtainStyledAttributes.getColor(6, ViewCompat.MEASURED_STATE_MASK);
        this.textSize = obtainStyledAttributes.getDimension(10, 18.0f);
        this.suffix = obtainStyledAttributes.getString(9);
        this.prefix = obtainStyledAttributes.getString(3);
        this.text = obtainStyledAttributes.getString(5);
        this.progressBarPaint = new Paint(1);
        this.progressBarPaint.setStyle(Paint.Style.FILL);
        this.progressBarPaint.setColor(this.progressColor);
        this.progressBarPaint.setStyle(Paint.Style.STROKE);
        this.progressBarPaint.setStrokeWidth(this.strokeWidth * getResources().getDisplayMetrics().density);
        if (this.roundedCorners) {
            this.progressBarPaint.setStrokeCap(Paint.Cap.ROUND);
        } else {
            this.progressBarPaint.setStrokeCap(Paint.Cap.BUTT);
        }
        this.progressBarPaint.setColor(Color.parseColor(String.format("#%06X", Integer.valueOf(this.progressColor & ViewCompat.MEASURED_SIZE_MASK))));
        this.bacgroundPaint = new Paint(1);
        this.bacgroundPaint.setStyle(Paint.Style.FILL);
        this.bacgroundPaint.setColor(this.backgroundColor);
        this.bacgroundPaint.setStyle(Paint.Style.STROKE);
        this.bacgroundPaint.setStrokeWidth(this.backgroundWidth * getResources().getDisplayMetrics().density);
        this.bacgroundPaint.setStrokeCap(Paint.Cap.SQUARE);
        this.bacgroundPaint.setColor(Color.parseColor(String.format("#%06X", Integer.valueOf(this.backgroundColor & ViewCompat.MEASURED_SIZE_MASK))));
        obtainStyledAttributes.recycle();
        this.textPaint = new TextPaint();
        this.textPaint.setColor(this.progressTextColor);
        this.textPaint.setColor(Color.parseColor(String.format("#%06X", Integer.valueOf(this.progressTextColor & ViewCompat.MEASURED_SIZE_MASK))));
        this.textPaint.setTextSize(this.textSize);
        this.textPaint.setAntiAlias(true);
    }

    public float getBackgroundWidth() {
        return this.backgroundWidth;
    }

    public float getMaxValue() {
        return this.maxValue;
    }

    public String getPrefix() {
        return this.prefix;
    }

    public float getProgress() {
        return this.drawUpto;
    }

    public float getProgressPercentage() {
        return (this.drawUpto / getMaxValue()) * 100.0f;
    }

    public float getStrokeWidth() {
        return this.strokeWidth;
    }

    public String getSuffix() {
        return this.suffix;
    }

    public String getText() {
        return this.text;
    }

    public int getTextColor() {
        return this.progressTextColor;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f = this.mRadius / 5.0f;
        this.mArcBounds.set(f, f, (this.mRadius * 2.0f) - f, (this.mRadius * 2.0f) - f);
        canvas.drawArc(this.mArcBounds, 0.0f, 360.0f, false, this.bacgroundPaint);
        canvas.drawArc(this.mArcBounds, 270.0f, (this.drawUpto / getMaxValue()) * 360.0f, false, this.progressBarPaint);
        if (TextUtils.isEmpty(this.suffix)) {
            this.suffix = "";
        }
        if (TextUtils.isEmpty(this.prefix)) {
            this.prefix = "";
        }
        String str = this.prefix + this.text + this.suffix;
        if (!TextUtils.isEmpty(this.text)) {
            canvas.drawText(str, (getWidth() - this.textPaint.measureText(str)) / 2.0f, (getWidth() - (this.textPaint.descent() + this.textPaint.ascent())) / 2.0f, this.textPaint);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int min = Math.min(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
        setMeasuredDimension(min, min);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.mRadius = Math.min(i, i2) / 2.0f;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.backgroundColor = i;
        this.bacgroundPaint.setColor(i);
        invalidate();
    }

    public void setBackgroundColor(String str) {
        this.bacgroundPaint.setColor(Color.parseColor(str));
        invalidate();
    }

    public void setBackgroundWidth(float f) {
        this.backgroundWidth = f;
        invalidate();
    }

    public void setMaxValue(float f) {
        this.maxValue = f;
        invalidate();
    }

    public void setPrefix(String str) {
        this.prefix = str;
        invalidate();
    }

    public void setProgress(float f) {
        this.drawUpto = f;
        invalidate();
    }

    public void setProgressColor(int i) {
        this.progressColor = i;
        this.progressBarPaint.setColor(i);
        invalidate();
    }

    public void setProgressColor(String str) {
        this.progressBarPaint.setColor(Color.parseColor(str));
        invalidate();
    }

    public void setStrokeWidth(float f) {
        this.strokeWidth = f;
        invalidate();
    }

    public void setSuffix(String str) {
        this.suffix = str;
        invalidate();
    }

    public void setText(String str) {
        this.text = str;
        invalidate();
    }

    public void setTextColor(int i) {
        this.progressTextColor = i;
        this.textPaint.setColor(i);
        invalidate();
    }

    public void setTextColor(String str) {
        this.textPaint.setColor(Color.parseColor(str));
        invalidate();
    }
}
