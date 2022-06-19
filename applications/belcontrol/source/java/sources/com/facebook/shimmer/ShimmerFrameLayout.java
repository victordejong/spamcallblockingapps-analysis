package com.facebook.shimmer;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import gp0;
/* loaded from: classes-dex2jar.jar:com/facebook/shimmer/ShimmerFrameLayout.class */
public class ShimmerFrameLayout extends FrameLayout {

    /* renamed from: a */
    public final Paint f2704a = new Paint();

    /* renamed from: b */
    public final hp0 f2705b = new hp0();

    public ShimmerFrameLayout(Context context) {
        super(context);
        m4854a(context, null);
    }

    public ShimmerFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m4854a(context, attributeSet);
    }

    public ShimmerFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m4854a(context, attributeSet);
    }

    /* renamed from: a */
    public final void m4854a(Context context, AttributeSet attributeSet) {
        setWillNotDraw(false);
        this.f2705b.setCallback(this);
        if (attributeSet == null) {
            m4853b(new gp0.a().a());
            return;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, fp0.ShimmerFrameLayout, 0, 0);
        try {
            int i = fp0.ShimmerFrameLayout_shimmer_colored;
            m4853b(((!obtainStyledAttributes.hasValue(i) || !obtainStyledAttributes.getBoolean(i, false)) ? new gp0.a() : new gp0.c()).c(obtainStyledAttributes).a());
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: b */
    public ShimmerFrameLayout m4853b(gp0 gp0Var) {
        int i;
        Paint paint;
        this.f2705b.d(gp0Var);
        if (gp0Var == null || !gp0Var.n) {
            i = 0;
            paint = null;
        } else {
            i = 2;
            paint = this.f2704a;
        }
        setLayerType(i, paint);
        return this;
    }

    /* renamed from: c */
    public void m4852c() {
        this.f2705b.e();
    }

    /* renamed from: d */
    public void m4851d() {
        this.f2705b.f();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        this.f2705b.draw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f2705b.b();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m4851d();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f2705b.setBounds(0, 0, getWidth(), getHeight());
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f2705b;
    }
}
