package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.b.a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/c.class */
final class c extends g<CircularProgressIndicatorSpec> {

    /* renamed from: c  reason: collision with root package name */
    private int f30750c = 1;

    /* renamed from: d  reason: collision with root package name */
    private float f30751d;
    private float e;
    private float f;

    public c(CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(circularProgressIndicatorSpec);
    }

    private void a(Canvas canvas, Paint paint, float f, float f2, float f3, boolean z, RectF rectF) {
        float f4 = z ? -1.0f : 1.0f;
        canvas.save();
        canvas.rotate(f3);
        float f5 = f / 2.0f;
        float f6 = f4 * f2;
        canvas.drawRect((this.f - f5) + f2, Math.min((float) BitmapDescriptorFactory.HUE_RED, this.f30750c * f6), (this.f + f5) - f2, Math.max((float) BitmapDescriptorFactory.HUE_RED, f6 * this.f30750c), paint);
        canvas.translate((this.f - f5) + f2, BitmapDescriptorFactory.HUE_RED);
        canvas.drawArc(rectF, 180.0f, (-f4) * 90.0f * this.f30750c, true, paint);
        canvas.translate(f - (f2 * 2.0f), BitmapDescriptorFactory.HUE_RED);
        canvas.drawArc(rectF, BitmapDescriptorFactory.HUE_RED, f4 * 90.0f * this.f30750c, true, paint);
        canvas.restore();
    }

    private int c() {
        return ((CircularProgressIndicatorSpec) this.f30762a).g + (((CircularProgressIndicatorSpec) this.f30762a).h * 2);
    }

    @Override // com.google.android.material.progressindicator.g
    public final int a() {
        return c();
    }

    @Override // com.google.android.material.progressindicator.g
    public final void a(Canvas canvas, float f) {
        float f2 = (((CircularProgressIndicatorSpec) this.f30762a).g / 2.0f) + ((CircularProgressIndicatorSpec) this.f30762a).h;
        canvas.translate(f2, f2);
        canvas.rotate(-90.0f);
        float f3 = -f2;
        canvas.clipRect(f3, f3, f2, f2);
        this.f30750c = ((CircularProgressIndicatorSpec) this.f30762a).i == 0 ? 1 : -1;
        this.f30751d = ((CircularProgressIndicatorSpec) this.f30762a).f30746a * f;
        this.e = ((CircularProgressIndicatorSpec) this.f30762a).f30747b * f;
        this.f = (((CircularProgressIndicatorSpec) this.f30762a).g - ((CircularProgressIndicatorSpec) this.f30762a).f30746a) / 2.0f;
        if ((this.f30763b.c() && ((CircularProgressIndicatorSpec) this.f30762a).e == 2) || (this.f30763b.b() && ((CircularProgressIndicatorSpec) this.f30762a).f == 1)) {
            this.f += ((1.0f - f) * ((CircularProgressIndicatorSpec) this.f30762a).f30746a) / 2.0f;
        } else if ((this.f30763b.c() && ((CircularProgressIndicatorSpec) this.f30762a).e == 1) || (this.f30763b.b() && ((CircularProgressIndicatorSpec) this.f30762a).f == 2)) {
            this.f -= ((1.0f - f) * ((CircularProgressIndicatorSpec) this.f30762a).f30746a) / 2.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.progressindicator.g
    public final void a(Canvas canvas, Paint paint) {
        int a2 = a.a(((CircularProgressIndicatorSpec) this.f30762a).f30749d, this.f30763b.getAlpha());
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        paint.setColor(a2);
        paint.setStrokeWidth(this.f30751d);
        float f = this.f;
        canvas.drawArc(new RectF(-f, -f, f, f), BitmapDescriptorFactory.HUE_RED, 360.0f, false, paint);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.progressindicator.g
    public final void a(Canvas canvas, Paint paint, float f, float f2, int i) {
        if (f != f2) {
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeCap(Paint.Cap.BUTT);
            paint.setAntiAlias(true);
            paint.setColor(i);
            paint.setStrokeWidth(this.f30751d);
            int i2 = this.f30750c;
            float f3 = f * 360.0f * i2;
            float f4 = (f2 >= f ? f2 - f : (f2 + 1.0f) - f) * 360.0f * i2;
            float f5 = this.f;
            canvas.drawArc(new RectF(-f5, -f5, f5, f5), f3, f4, false, paint);
            if (this.e > BitmapDescriptorFactory.HUE_RED && Math.abs(f4) < 360.0f) {
                paint.setStyle(Paint.Style.FILL);
                float f6 = this.e;
                RectF rectF = new RectF(-f6, -f6, f6, f6);
                a(canvas, paint, this.f30751d, this.e, f3, true, rectF);
                a(canvas, paint, this.f30751d, this.e, f3 + f4, false, rectF);
            }
        }
    }

    @Override // com.google.android.material.progressindicator.g
    public final int b() {
        return c();
    }
}
