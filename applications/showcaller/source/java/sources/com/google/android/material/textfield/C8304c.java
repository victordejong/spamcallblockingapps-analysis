package com.google.android.material.textfield;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import p078c.p084c.p085a.p096b.p108x.C1938h;
import p078c.p084c.p085a.p096b.p108x.C1946m;
/* renamed from: com.google.android.material.textfield.c */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/textfield/c.class */
class C8304c extends C1938h {

    /* renamed from: B */
    private final Paint f37477B;

    /* renamed from: C */
    private final RectF f37478C;

    /* renamed from: D */
    private int f37479D;

    C8304c() {
        this(null);
    }

    public C8304c(C1946m c1946m) {
        super(c1946m == null ? new C1946m() : c1946m);
        this.f37477B = new Paint(1);
        m3977x0();
        this.f37478C = new RectF();
    }

    /* renamed from: r0 */
    private void m3983r0(Canvas canvas) {
        if (!m3976y0(getCallback())) {
            canvas.restoreToCount(this.f37479D);
        }
    }

    /* renamed from: s0 */
    private void m3982s0(Canvas canvas) {
        Drawable.Callback callback = getCallback();
        if (!m3976y0(callback)) {
            m3980u0(canvas);
            return;
        }
        View view = (View) callback;
        if (view.getLayerType() == 2) {
            return;
        }
        view.setLayerType(2, null);
    }

    /* renamed from: u0 */
    private void m3980u0(Canvas canvas) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f37479D = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null);
        } else {
            this.f37479D = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null, 31);
        }
    }

    /* renamed from: x0 */
    private void m3977x0() {
        this.f37477B.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f37477B.setColor(-1);
        this.f37477B.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    /* renamed from: y0 */
    private boolean m3976y0(Drawable.Callback callback) {
        return callback instanceof View;
    }

    @Override // p078c.p084c.p085a.p096b.p108x.C1938h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        m3982s0(canvas);
        super.draw(canvas);
        canvas.drawRect(this.f37478C, this.f37477B);
        m3983r0(canvas);
    }

    /* renamed from: q0 */
    public boolean m3984q0() {
        return !this.f37478C.isEmpty();
    }

    /* renamed from: t0 */
    public void m3981t0() {
        m3979v0(0.0f, 0.0f, 0.0f, 0.0f);
    }

    /* renamed from: v0 */
    void m3979v0(float f, float f2, float f3, float f4) {
        RectF rectF = this.f37478C;
        if (f == rectF.left && f2 == rectF.top && f3 == rectF.right && f4 == rectF.bottom) {
            return;
        }
        rectF.set(f, f2, f3, f4);
        invalidateSelf();
    }

    /* renamed from: w0 */
    public void m3978w0(RectF rectF) {
        m3979v0(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }
}
