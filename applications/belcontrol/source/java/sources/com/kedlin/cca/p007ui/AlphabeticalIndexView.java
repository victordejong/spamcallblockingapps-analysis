package com.kedlin.cca.p007ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
/* renamed from: com.kedlin.cca.ui.AlphabeticalIndexView */
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/AlphabeticalIndexView.class */
public class AlphabeticalIndexView extends View {

    /* renamed from: h */
    public static final int f3753h = oe1.m1093c(16);

    /* renamed from: a */
    public int f3754a;

    /* renamed from: b */
    public int f3755b;

    /* renamed from: c */
    public Paint f3756c;

    /* renamed from: d */
    public Paint f3757d;

    /* renamed from: f */
    public RectF f3758f = new RectF();

    /* renamed from: g */
    public String f3759g = null;

    public AlphabeticalIndexView(Context context) {
        super(context);
        m4327b();
    }

    public AlphabeticalIndexView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m4327b();
    }

    public AlphabeticalIndexView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m4327b();
    }

    /* renamed from: a */
    public final void m4328a(String str, float f, float f2) {
        this.f3756c.setTextSize((f / ((this.f3756c.measureText(str) * str.length()) / str.length())) * this.f3756c.getTextSize());
        float measureText = (f / ((this.f3756c.measureText(str) * str.length()) / str.length())) * this.f3756c.getTextSize();
        this.f3756c.setTextSize(measureText);
        Paint.FontMetricsInt fontMetricsInt = this.f3756c.getFontMetricsInt();
        float f3 = fontMetricsInt.descent - fontMetricsInt.ascent;
        if (f3 > f2) {
            this.f3756c.setTextSize(measureText * (f2 / f3));
        }
    }

    /* renamed from: b */
    public final void m4327b() {
        Paint paint = new Paint(1);
        this.f3756c = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f3756c.setColor(-16777216);
        this.f3756c.setTextSize(10.0f);
        Paint paint2 = new Paint(1);
        this.f3757d = paint2;
        paint2.setStyle(Paint.Style.FILL);
        this.f3757d.setColor(getResources().getColor(2131100163));
        this.f3757d.setAlpha(180);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        char[] charArray;
        super.onDraw(canvas);
        if (TextUtils.isEmpty(this.f3759g)) {
            return;
        }
        float length = ((this.f3754a - 2.0f) / (this.f3759g.length() * 1)) - 1.0f;
        int i = f3753h;
        float f = length;
        if (length > i) {
            f = i;
        }
        RectF rectF = this.f3758f;
        int i2 = this.f3755b;
        rectF.set((i2 - 1) - f, 1.0f, i2 - 1, this.f3754a - 1);
        canvas.drawRoundRect(this.f3758f, oe1.m1093c(4), oe1.m1093c(4), this.f3757d);
        m4328a("W", f, f);
        float f2 = 1.0f + f;
        float f3 = f2;
        for (char c : this.f3759g.toCharArray()) {
            canvas.drawText("" + c, ((this.f3755b - 1) - f) + ((f - this.f3756c.measureText("" + c)) / 2.0f), f3, this.f3756c);
            f3 += f2;
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f3754a = i2;
        this.f3755b = i;
    }

    public void setAlphabet(String str) {
        this.f3759g = str;
        invalidate();
    }
}
