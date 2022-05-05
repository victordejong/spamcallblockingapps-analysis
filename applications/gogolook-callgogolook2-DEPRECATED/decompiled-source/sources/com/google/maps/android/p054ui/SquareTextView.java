package com.google.maps.android.p054ui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.TextView;
/* renamed from: com.google.maps.android.ui.SquareTextView */
/* loaded from: classes2-dex2jar.jar:com/google/maps/android/ui/SquareTextView.class */
public class SquareTextView extends TextView {

    /* renamed from: a */
    public int f7966a = 0;

    /* renamed from: b */
    public int f7967b = 0;

    public SquareTextView(Context context) {
        super(context);
    }

    public SquareTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SquareTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        canvas.translate(this.f7967b / 2, this.f7966a / 2);
        super.draw(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        int max = Math.max(measuredWidth, measuredHeight);
        if (measuredWidth > measuredHeight) {
            this.f7966a = measuredWidth - measuredHeight;
            this.f7967b = 0;
        } else {
            this.f7966a = 0;
            this.f7967b = measuredHeight - measuredWidth;
        }
        setMeasuredDimension(max, max);
    }
}
