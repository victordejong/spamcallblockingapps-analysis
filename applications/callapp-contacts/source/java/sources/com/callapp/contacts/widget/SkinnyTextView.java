package com.callapp.contacts.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.text.TextPaint;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SkinnyTextView.class */
public class SkinnyTextView extends AppCompatTextView {

    /* renamed from: a */
    private Rect f28942a = new Rect();

    /* renamed from: b */
    private String f28943b;

    public SkinnyTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        TextPaint paint = getPaint();
        paint.setColor(getCurrentTextColor());
        canvas.drawText(this.f28943b, -this.f28942a.left, -this.f28942a.top, paint);
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f28943b = getText().toString();
        TextPaint paint = getPaint();
        String str = this.f28943b;
        paint.getTextBounds(str, 0, str.length(), this.f28942a);
        setMeasuredDimension(resolveSize(this.f28942a.width(), i), resolveSize(this.f28942a.height(), i2));
    }
}
