package com.callapp.contacts.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.text.TextPaint;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/DialpadTextView.class */
public class DialpadTextView extends AppCompatTextView {

    /* renamed from: c */
    private static int f28671c;

    /* renamed from: e */
    private static int f28672e;

    /* renamed from: a */
    private Rect f28673a = new Rect();

    /* renamed from: b */
    private String f28674b;

    public DialpadTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        if (f28671c == 0 && f28672e == 0) {
            m26765a();
        }
    }

    /* renamed from: a */
    private void m26765a() {
        for (int i = 0; i < 12; i++) {
            String str = new String[]{"*", "#", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}[i];
            getPaint().getTextBounds(str, 0, str.length(), this.f28673a);
            if (this.f28673a.height() > f28671c) {
                f28671c = this.f28673a.height();
            }
            if (this.f28673a.width() > f28672e) {
                f28672e = this.f28673a.width();
            }
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        TextPaint paint = getPaint();
        paint.setColor(getCurrentTextColor());
        canvas.drawText(this.f28674b, -(this.f28673a.left - ((f28672e - this.f28673a.width()) / 2)), -this.f28673a.top, paint);
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f28674b = getText().toString();
        TextPaint paint = getPaint();
        String str = this.f28674b;
        paint.getTextBounds(str, 0, str.length(), this.f28673a);
        setMeasuredDimension(resolveSize(f28672e, i), resolveSize(f28671c, i2));
    }
}
