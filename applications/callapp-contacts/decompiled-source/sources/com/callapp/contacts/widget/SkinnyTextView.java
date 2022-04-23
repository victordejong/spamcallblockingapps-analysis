package com.callapp.contacts.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.text.TextPaint;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SkinnyTextView.class */
public class SkinnyTextView extends AppCompatTextView {

    /* renamed from: a  reason: collision with root package name */
    private Rect f16635a = new Rect();

    /* renamed from: b  reason: collision with root package name */
    private String f16636b;

    public SkinnyTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        TextPaint paint = getPaint();
        paint.setColor(getCurrentTextColor());
        canvas.drawText(this.f16636b, -this.f16635a.left, -this.f16635a.top, paint);
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f16636b = getText().toString();
        TextPaint paint = getPaint();
        String str = this.f16636b;
        paint.getTextBounds(str, 0, str.length(), this.f16635a);
        setMeasuredDimension(resolveSize(this.f16635a.width(), i), resolveSize(this.f16635a.height(), i2));
    }
}
