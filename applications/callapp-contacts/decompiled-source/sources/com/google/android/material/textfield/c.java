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
import com.google.android.material.k.h;
import com.google.android.material.k.m;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/textfield/c.class */
public final class c extends h {

    /* renamed from: a  reason: collision with root package name */
    private final Paint f30902a;

    /* renamed from: b  reason: collision with root package name */
    private final RectF f30903b;

    /* renamed from: c  reason: collision with root package name */
    private int f30904c;

    c() {
        this(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(m mVar) {
        super(mVar == null ? new m() : mVar);
        Paint paint = new Paint(1);
        this.f30902a = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.f30903b = new RectF();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(float f, float f2, float f3, float f4) {
        if (f != this.f30903b.left || f2 != this.f30903b.top || f3 != this.f30903b.right || f4 != this.f30903b.bottom) {
            this.f30903b.set(f, f2, f3, f4);
            invalidateSelf();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(RectF rectF) {
        a(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        return !this.f30903b.isEmpty();
    }

    @Override // com.google.android.material.k.h, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable.Callback callback = getCallback();
        if (callback instanceof View) {
            View view = (View) callback;
            if (view.getLayerType() != 2) {
                view.setLayerType(2, null);
            }
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.f30904c = canvas.saveLayer(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, canvas.getWidth(), canvas.getHeight(), null);
        } else {
            this.f30904c = canvas.saveLayer(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, canvas.getWidth(), canvas.getHeight(), null, 31);
        }
        super.draw(canvas);
        canvas.drawRect(this.f30903b, this.f30902a);
        if (!(getCallback() instanceof View)) {
            canvas.restoreToCount(this.f30904c);
        }
    }
}
