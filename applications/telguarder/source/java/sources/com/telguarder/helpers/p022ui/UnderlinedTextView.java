package com.telguarder.helpers.p022ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.internal.view.SupportMenu;
import com.telguarder.C2083R;
/* renamed from: com.telguarder.helpers.ui.UnderlinedTextView */
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/UnderlinedTextView.class */
public class UnderlinedTextView extends AppCompatTextView {
    private int mColor;
    private Paint mPaint;
    private Rect mRect;
    private float mStrokeWidth;

    public UnderlinedTextView(Context context) {
        this(context, null, 0);
    }

    public UnderlinedTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public UnderlinedTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet, i);
    }

    private void init(Context context, AttributeSet attributeSet, int i) {
        float f = context.getResources().getDisplayMetrics().density;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2083R.styleable.UnderlinedTextView, i, 0);
        this.mColor = obtainStyledAttributes.getColor(0, SupportMenu.CATEGORY_MASK);
        this.mStrokeWidth = obtainStyledAttributes.getDimension(1, f * 2.0f);
        obtainStyledAttributes.recycle();
        this.mRect = new Rect();
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.mPaint.setColor(this.mColor);
        this.mPaint.setStrokeWidth(this.mStrokeWidth);
    }

    public int getUnderLineColor() {
        return this.mColor;
    }

    public float getUnderlineWidth() {
        return this.mStrokeWidth;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        int lineCount = getLineCount();
        Layout layout = getLayout();
        for (int i = 0; i < lineCount; i++) {
            int lineBounds = getLineBounds(i, this.mRect);
            int lineStart = layout.getLineStart(i);
            int lineEnd = layout.getLineEnd(i);
            float primaryHorizontal = layout.getPrimaryHorizontal(lineStart);
            float primaryHorizontal2 = layout.getPrimaryHorizontal(lineStart + 1);
            float primaryHorizontal3 = layout.getPrimaryHorizontal(lineEnd - 1);
            float f = lineBounds;
            float f2 = this.mStrokeWidth;
            canvas.drawLine(primaryHorizontal, f + f2, primaryHorizontal3 + (primaryHorizontal2 - primaryHorizontal), f + f2, this.mPaint);
        }
        super.onDraw(canvas);
    }

    public void setUnderLineColor(int i) {
        this.mColor = i;
        invalidate();
    }

    public void setUnderlineWidth(float f) {
        this.mStrokeWidth = f;
        invalidate();
    }
}
