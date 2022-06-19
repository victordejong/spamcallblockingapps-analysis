package com.allinone.callerid.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.allinone.callerid.R$styleable;
import com.allinone.callerid.indicator.BaseIndicatorController;
import com.allinone.callerid.indicator.C3025a;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/AVLoadingIndicatorView.class */
public class AVLoadingIndicatorView extends View {

    /* renamed from: d */
    int f8435d;

    /* renamed from: e */
    int f8436e;

    /* renamed from: f */
    Paint f8437f;

    /* renamed from: g */
    BaseIndicatorController f8438g;

    /* renamed from: h */
    private boolean f8439h;

    public AVLoadingIndicatorView(Context context) {
        super(context);
        m27444e(null, 0);
    }

    public AVLoadingIndicatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m27444e(attributeSet, 0);
    }

    public AVLoadingIndicatorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m27444e(attributeSet, i);
    }

    /* renamed from: b */
    private void m27447b() {
        if (this.f8435d == 3) {
            this.f8438g = new C3025a();
        }
        this.f8438g.m26211i(this);
    }

    /* renamed from: c */
    private int m27446c(int i) {
        return ((int) getContext().getResources().getDisplayMetrics().density) * i;
    }

    /* renamed from: e */
    private void m27444e(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.AVLoadingIndicatorView);
        this.f8435d = obtainStyledAttributes.getInt(0, 0);
        this.f8436e = obtainStyledAttributes.getColor(1, -1);
        obtainStyledAttributes.recycle();
        Paint paint = new Paint();
        this.f8437f = paint;
        paint.setColor(this.f8436e);
        this.f8437f.setStyle(Paint.Style.FILL);
        this.f8437f.setAntiAlias(true);
        m27447b();
    }

    /* renamed from: f */
    private int m27443f(int i, int i2) {
        int i3;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            i3 = size;
        } else {
            i3 = i;
            if (mode == Integer.MIN_VALUE) {
                i3 = Math.min(i, size);
            }
        }
        return i3;
    }

    /* renamed from: a */
    void m27448a() {
        this.f8438g.m26214f();
    }

    /* renamed from: d */
    void m27445d(Canvas canvas) {
        this.f8438g.mo26209b(canvas, this.f8437f);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f8439h) {
            this.f8438g.m26212h(BaseIndicatorController.AnimStatus.START);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f8438g.m26212h(BaseIndicatorController.AnimStatus.CANCEL);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        m27445d(canvas);
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (!this.f8439h) {
            this.f8439h = true;
            m27448a();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(m27443f(m27446c(45), i), m27443f(m27446c(45), i2));
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (getVisibility() != i) {
            super.setVisibility(i);
            if (i == 8 || i == 4) {
                this.f8438g.m26212h(BaseIndicatorController.AnimStatus.END);
            } else {
                this.f8438g.m26212h(BaseIndicatorController.AnimStatus.START);
            }
        }
    }
}
