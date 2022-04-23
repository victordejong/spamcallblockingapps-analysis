package com.callapp.contacts.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.text.TextPaint;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/DialpadTextView.class */
public class DialpadTextView extends AppCompatTextView {

    /* renamed from: c  reason: collision with root package name */
    private static int f16474c;
    private static int e;

    /* renamed from: a  reason: collision with root package name */
    private Rect f16475a = new Rect();

    /* renamed from: b  reason: collision with root package name */
    private String f16476b;

    public DialpadTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        if (f16474c == 0 && e == 0) {
            a();
        }
    }

    private void a() {
        for (int i = 0; i < 12; i++) {
            String str = new String[]{"*", "#", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}[i];
            getPaint().getTextBounds(str, 0, str.length(), this.f16475a);
            if (this.f16475a.height() > f16474c) {
                f16474c = this.f16475a.height();
            }
            if (this.f16475a.width() > e) {
                e = this.f16475a.width();
            }
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        TextPaint paint = getPaint();
        paint.setColor(getCurrentTextColor());
        canvas.drawText(this.f16476b, -(this.f16475a.left - ((e - this.f16475a.width()) / 2)), -this.f16475a.top, paint);
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f16476b = getText().toString();
        TextPaint paint = getPaint();
        String str = this.f16476b;
        paint.getTextBounds(str, 0, str.length(), this.f16475a);
        setMeasuredDimension(resolveSize(e, i), resolveSize(f16474c, i2));
    }
}
