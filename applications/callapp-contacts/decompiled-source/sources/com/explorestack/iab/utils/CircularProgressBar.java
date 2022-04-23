package com.explorestack.iab.utils;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.widget.ProgressBar;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/CircularProgressBar.class */
public final class CircularProgressBar extends ProgressBar implements g {

    /* renamed from: a  reason: collision with root package name */
    a f19159a;

    /* renamed from: b  reason: collision with root package name */
    final Paint f19160b;

    public CircularProgressBar(Context context) {
        super(context);
        Paint paint = new Paint(1);
        this.f19160b = paint;
        paint.setColor(0);
        a(context);
    }

    public CircularProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint(1);
        this.f19160b = paint;
        paint.setColor(0);
        a(context);
    }

    public CircularProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Paint paint = new Paint(1);
        this.f19160b = paint;
        paint.setColor(0);
        a(context);
    }

    private void a(Context context) {
        float f = getResources().getDisplayMetrics().density;
        int a2 = Utils.a(context, 8.0f);
        setPadding(a2, a2, a2, a2);
        a aVar = new a(context);
        this.f19159a = aVar;
        aVar.a(f * 4.0f);
        this.f19159a.a(-65536);
        this.f19159a.a(Paint.Cap.ROUND);
        setIndeterminateDrawable(this.f19159a);
        setIndeterminate(true);
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected final void onDraw(Canvas canvas) {
        synchronized (this) {
            canvas.drawCircle(getWidth() / 2.0f, getHeight() / 2.0f, Math.min(getWidth(), getHeight()) / 2.0f, this.f19160b);
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
            a aVar = this.f19159a;
            aVar.f19172a.o = (Math.min((measuredWidth - paddingLeft) - paddingRight, (measuredHeight - paddingTop) - paddingBottom) / 2.0f) - this.f19159a.f19172a.i;
            aVar.invalidateSelf();
        }
    }

    public final void setColorSchemeColors(int... iArr) {
        this.f19159a.a(iArr);
    }

    public final void setProgressBackgroundColor(int i) {
        this.f19160b.setColor(i);
    }

    @Override // com.explorestack.iab.utils.g
    public final void setStyle(h hVar) {
        this.f19159a.a(hVar.e(getContext()).floatValue());
        this.f19159a.a(hVar.a().intValue());
        this.f19160b.setColor(hVar.b().intValue());
        postInvalidate();
    }
}
