package com.truecaller.p183ui.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import p193e.p194a.p372b0.p430q.C8605o;
/* renamed from: com.truecaller.ui.view.ThemeSelectorView */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/view/ThemeSelectorView.class */
public class ThemeSelectorView extends View {

    /* renamed from: a */
    public final Paint f15929a;

    /* renamed from: b */
    public final Paint f15930b;

    /* renamed from: c */
    public final RectF f15931c = new RectF();

    /* renamed from: d */
    public int f15932d;

    public ThemeSelectorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint();
        this.f15929a = paint;
        Paint paint2 = new Paint();
        this.f15930b = paint2;
        paint.setColor(-65536);
        paint.setAntiAlias(true);
        int m28238b = C8605o.m28238b(getContext(), 4.0f);
        int m28238b2 = C8605o.m28238b(getContext(), 0.0f);
        int m28238b3 = C8605o.m28238b(getContext(), 4.0f);
        this.f15932d = Math.max(m28238b2, m28238b3) + m28238b;
        paint.setShadowLayer(m28238b, m28238b2, m28238b3, 805306368);
        setLayerType(1, paint);
        paint2.setColor(-16776961);
        paint2.setAntiAlias(true);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int i = width - (paddingRight + paddingLeft);
        int paddingBottom = height - (getPaddingBottom() + paddingTop);
        int min = (Math.min(i, paddingBottom) / 2) - this.f15932d;
        int i2 = (i / 2) + paddingLeft;
        int i3 = (paddingBottom / 2) + paddingTop;
        canvas.drawCircle(i2, i3, min, this.f15929a);
        this.f15931c.set(i2 - min, i3 - min, i2 + min, i3 + min);
        canvas.drawArc(this.f15931c, -90.0f, 180.0f, true, this.f15930b);
    }

    public void setLeftColor(int i) {
        this.f15929a.setColor(i);
    }

    public void setRightColor(int i) {
        this.f15930b.setColor(i);
    }
}
