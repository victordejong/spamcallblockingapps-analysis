package com.google.android.material.textfield;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import com.google.android.material.p159q.C4736g;
import com.google.android.material.p159q.C4743k;
/* renamed from: com.google.android.material.textfield.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/c.class */
public class C4822c extends C4736g {

    /* renamed from: a */
    private final Paint f20821a;

    /* renamed from: b */
    private final RectF f20822b;

    /* renamed from: c */
    private int f20823c;

    C4822c() {
        this(null);
    }

    public C4822c(C4743k c4743k) {
        super(c4743k == null ? new C4743k() : c4743k);
        this.f20821a = new Paint(1);
        m2300c();
        this.f20822b = new RectF();
    }

    /* renamed from: a */
    private void m2305a(Canvas canvas) {
        Drawable.Callback callback = getCallback();
        if (!m2303a(callback)) {
            m2301b(canvas);
            return;
        }
        View view = (View) callback;
        if (view.getLayerType() == 2) {
            return;
        }
        view.setLayerType(2, null);
    }

    /* renamed from: a */
    private boolean m2303a(Drawable.Callback callback) {
        return callback instanceof View;
    }

    /* renamed from: b */
    private void m2301b(Canvas canvas) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f20823c = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null);
        } else {
            this.f20823c = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null, 31);
        }
    }

    /* renamed from: c */
    private void m2300c() {
        this.f20821a.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f20821a.setColor(-1);
        this.f20821a.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    /* renamed from: c */
    private void m2299c(Canvas canvas) {
        if (!m2303a(getCallback())) {
            canvas.restoreToCount(this.f20823c);
        }
    }

    /* renamed from: a */
    void m2306a(float f, float f2, float f3, float f4) {
        if (f == this.f20822b.left && f2 == this.f20822b.top && f3 == this.f20822b.right && f4 == this.f20822b.bottom) {
            return;
        }
        this.f20822b.set(f, f2, f3, f4);
        invalidateSelf();
    }

    /* renamed from: a */
    public void m2304a(RectF rectF) {
        m2306a(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    /* renamed from: a */
    public boolean m2307a() {
        return !this.f20822b.isEmpty();
    }

    /* renamed from: b */
    public void m2302b() {
        m2306a(0.0f, 0.0f, 0.0f, 0.0f);
    }

    @Override // com.google.android.material.p159q.C4736g, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        m2305a(canvas);
        super.draw(canvas);
        canvas.drawRect(this.f20822b, this.f20821a);
        m2299c(canvas);
    }
}
