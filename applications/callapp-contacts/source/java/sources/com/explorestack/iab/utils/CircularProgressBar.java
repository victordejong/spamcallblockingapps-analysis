package com.explorestack.iab.utils;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.widget.ProgressBar;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/CircularProgressBar.class */
public final class CircularProgressBar extends ProgressBar implements AbstractC9592g {

    /* renamed from: a */
    C9582a f32540a;

    /* renamed from: b */
    final Paint f32541b;

    public CircularProgressBar(Context context) {
        super(context);
        Paint paint = new Paint(1);
        this.f32541b = paint;
        paint.setColor(0);
        m24132a(context);
    }

    public CircularProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint(1);
        this.f32541b = paint;
        paint.setColor(0);
        m24132a(context);
    }

    public CircularProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Paint paint = new Paint(1);
        this.f32541b = paint;
        paint.setColor(0);
        m24132a(context);
    }

    /* renamed from: a */
    private void m24132a(Context context) {
        float f = getResources().getDisplayMetrics().density;
        int m24117a = Utils.m24117a(context, 8.0f);
        setPadding(m24117a, m24117a, m24117a, m24117a);
        C9582a c9582a = new C9582a(context);
        this.f32540a = c9582a;
        c9582a.m24095a(f * 4.0f);
        this.f32540a.m24088a(-65536);
        this.f32540a.m24093a(Paint.Cap.ROUND);
        setIndeterminateDrawable(this.f32540a);
        setIndeterminate(true);
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected final void onDraw(Canvas canvas) {
        synchronized (this) {
            canvas.drawCircle(getWidth() / 2.0f, getHeight() / 2.0f, Math.min(getWidth(), getHeight()) / 2.0f, this.f32541b);
            super.onDraw(canvas);
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected final void onMeasure(int i, int i2) {
        synchronized (this) {
            super.onMeasure(i, i2);
            int measuredWidth = getMeasuredWidth();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int measuredHeight = getMeasuredHeight();
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            C9582a c9582a = this.f32540a;
            c9582a.f32553a.f32579o = (Math.min((measuredWidth - paddingLeft) - paddingRight, (measuredHeight - paddingTop) - paddingBottom) / 2.0f) - this.f32540a.f32553a.f32573i;
            c9582a.invalidateSelf();
        }
    }

    public final void setColorSchemeColors(int... iArr) {
        this.f32540a.m24088a(iArr);
    }

    public final void setProgressBackgroundColor(int i) {
        this.f32541b.setColor(i);
    }

    @Override // com.explorestack.iab.utils.AbstractC9592g
    public final void setStyle(C9593h c9593h) {
        this.f32540a.m24095a(c9593h.m24053e(getContext()).floatValue());
        this.f32540a.m24088a(c9593h.m24073a().intValue());
        this.f32541b.setColor(c9593h.m24064b().intValue());
        postInvalidate();
    }
}
