package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.b.a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/j.class */
final class j extends g<LinearProgressIndicatorSpec> {

    /* renamed from: c  reason: collision with root package name */
    private float f30768c = 300.0f;

    /* renamed from: d  reason: collision with root package name */
    private float f30769d;
    private float e;

    public j(LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(linearProgressIndicatorSpec);
    }

    private static void a(Canvas canvas, Paint paint, float f, float f2, float f3, boolean z, RectF rectF) {
        canvas.save();
        canvas.translate(f3, BitmapDescriptorFactory.HUE_RED);
        if (!z) {
            canvas.rotate(180.0f);
        }
        float f4 = ((-f) / 2.0f) + f2;
        float f5 = (f / 2.0f) - f2;
        canvas.drawRect(-f2, f4, BitmapDescriptorFactory.HUE_RED, f5, paint);
        canvas.save();
        canvas.translate(BitmapDescriptorFactory.HUE_RED, f4);
        canvas.drawArc(rectF, 180.0f, 90.0f, true, paint);
        canvas.restore();
        canvas.translate(BitmapDescriptorFactory.HUE_RED, f5);
        canvas.drawArc(rectF, 180.0f, -90.0f, true, paint);
        canvas.restore();
    }

    @Override // com.google.android.material.progressindicator.g
    public final int a() {
        return -1;
    }

    @Override // com.google.android.material.progressindicator.g
    public final void a(Canvas canvas, float f) {
        Rect clipBounds = canvas.getClipBounds();
        this.f30768c = clipBounds.width();
        float f2 = ((LinearProgressIndicatorSpec) this.f30762a).f30746a;
        canvas.translate(clipBounds.width() / 2.0f, (clipBounds.height() / 2.0f) + Math.max((float) BitmapDescriptorFactory.HUE_RED, (clipBounds.height() - ((LinearProgressIndicatorSpec) this.f30762a).f30746a) / 2.0f));
        if (((LinearProgressIndicatorSpec) this.f30762a).i) {
            canvas.scale(-1.0f, 1.0f);
        }
        if ((this.f30763b.c() && ((LinearProgressIndicatorSpec) this.f30762a).e == 1) || (this.f30763b.b() && ((LinearProgressIndicatorSpec) this.f30762a).f == 2)) {
            canvas.scale(1.0f, -1.0f);
        }
        if (this.f30763b.c() || this.f30763b.b()) {
            canvas.translate(BitmapDescriptorFactory.HUE_RED, (((LinearProgressIndicatorSpec) this.f30762a).f30746a * (f - 1.0f)) / 2.0f);
        }
        float f3 = this.f30768c;
        canvas.clipRect((-f3) / 2.0f, (-f2) / 2.0f, f3 / 2.0f, f2 / 2.0f);
        this.f30769d = ((LinearProgressIndicatorSpec) this.f30762a).f30746a * f;
        this.e = ((LinearProgressIndicatorSpec) this.f30762a).f30747b * f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.progressindicator.g
    public final void a(Canvas canvas, Paint paint) {
        int a2 = a.a(((LinearProgressIndicatorSpec) this.f30762a).f30749d, this.f30763b.getAlpha());
        float f = ((-this.f30768c) / 2.0f) + this.e;
        float f2 = -f;
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setColor(a2);
        float f3 = this.f30769d;
        canvas.drawRect(f, (-f3) / 2.0f, f2, f3 / 2.0f, paint);
        float f4 = this.e;
        RectF rectF = new RectF(-f4, -f4, f4, f4);
        a(canvas, paint, this.f30769d, this.e, f, true, rectF);
        a(canvas, paint, this.f30769d, this.e, f2, false, rectF);
    }

    @Override // com.google.android.material.progressindicator.g
    public final void a(Canvas canvas, Paint paint, float f, float f2, int i) {
        if (f != f2) {
            float f3 = this.f30768c;
            float f4 = (-f3) / 2.0f;
            float f5 = this.e;
            float f6 = f4 + f5 + ((f3 - (f5 * 2.0f)) * f);
            float f7 = ((-f3) / 2.0f) + f5 + ((f3 - (f5 * 2.0f)) * f2);
            paint.setStyle(Paint.Style.FILL);
            paint.setAntiAlias(true);
            paint.setColor(i);
            float f8 = this.f30769d;
            canvas.drawRect(f6, (-f8) / 2.0f, f7, f8 / 2.0f, paint);
            float f9 = this.e;
            RectF rectF = new RectF(-f9, -f9, f9, f9);
            a(canvas, paint, this.f30769d, this.e, f6, true, rectF);
            a(canvas, paint, this.f30769d, this.e, f7, false, rectF);
        }
    }

    @Override // com.google.android.material.progressindicator.g
    public final int b() {
        return ((LinearProgressIndicatorSpec) this.f30762a).f30746a;
    }
}
