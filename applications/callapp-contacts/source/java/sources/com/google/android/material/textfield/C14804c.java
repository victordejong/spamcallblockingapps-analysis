package com.google.android.material.textfield;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.p374k.C14670h;
import com.google.android.material.p374k.C14678m;
/* renamed from: com.google.android.material.textfield.c */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/textfield/c.class */
public final class C14804c extends C14670h {

    /* renamed from: a */
    private final Paint f54088a;

    /* renamed from: b */
    private final RectF f54089b;

    /* renamed from: c */
    private int f54090c;

    C14804c() {
        this(null);
    }

    public C14804c(C14678m c14678m) {
        super(c14678m == null ? new C14678m() : c14678m);
        Paint paint = new Paint(1);
        this.f54088a = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.f54089b = new RectF();
    }

    /* renamed from: a */
    public final void m9986a(float f, float f2, float f3, float f4) {
        if (f == this.f54089b.left && f2 == this.f54089b.top && f3 == this.f54089b.right && f4 == this.f54089b.bottom) {
            return;
        }
        this.f54089b.set(f, f2, f3, f4);
        invalidateSelf();
    }

    /* renamed from: a */
    public final void m9985a(RectF rectF) {
        m9986a(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    /* renamed from: a */
    public final boolean m9987a() {
        return !this.f54089b.isEmpty();
    }

    @Override // com.google.android.material.p374k.C14670h, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable.Callback callback = getCallback();
        if (callback instanceof View) {
            View view = (View) callback;
            if (view.getLayerType() != 2) {
                view.setLayerType(2, null);
            }
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.f54090c = canvas.saveLayer(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, canvas.getWidth(), canvas.getHeight(), null);
        } else {
            this.f54090c = canvas.saveLayer(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, canvas.getWidth(), canvas.getHeight(), null, 31);
        }
        super.draw(canvas);
        canvas.drawRect(this.f54089b, this.f54088a);
        if (!(getCallback() instanceof View)) {
            canvas.restoreToCount(this.f54090c);
        }
    }
}
