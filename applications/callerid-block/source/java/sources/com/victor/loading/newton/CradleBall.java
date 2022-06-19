package com.victor.loading.newton;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import p092e.p111h.p112a.C3130f;
/* loaded from: classes2-dex2jar.jar:com/victor/loading/newton/CradleBall.class */
public class CradleBall extends View {

    /* renamed from: b */
    private int f12567b;

    /* renamed from: c */
    private int f12568c;

    /* renamed from: d */
    private Paint f12569d;

    /* renamed from: e */
    private int f12570e = -1;

    public CradleBall(Context context) {
        super(context);
        m612a(null);
    }

    public CradleBall(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m612a(attributeSet);
    }

    public CradleBall(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m612a(attributeSet);
    }

    /* renamed from: a */
    private void m612a(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C3130f.CradleBall);
            this.f12570e = obtainStyledAttributes.getColor(C3130f.CradleBall_cradle_ball_color, -1);
            obtainStyledAttributes.recycle();
        }
        Paint paint = new Paint();
        this.f12569d = paint;
        paint.setColor(this.f12570e);
        this.f12569d.setStyle(Paint.Style.FILL);
        this.f12569d.setAntiAlias(true);
    }

    public int getLoadingColor() {
        return this.f12570e;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int i = this.f12567b;
        canvas.drawCircle(i / 2, this.f12568c / 2, i / 2, this.f12569d);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f12567b = i;
        this.f12568c = i2;
    }

    public void setLoadingColor(int i) {
        this.f12570e = i;
        this.f12569d.setColor(i);
        postInvalidate();
    }
}
