package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.p365b.C14416a;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.progressindicator.c */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/c.class */
public final class C14708c extends AbstractC14720g<CircularProgressIndicatorSpec> {

    /* renamed from: c */
    private int f53662c = 1;

    /* renamed from: d */
    private float f53663d;

    /* renamed from: e */
    private float f53664e;

    /* renamed from: f */
    private float f53665f;

    public C14708c(CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(circularProgressIndicatorSpec);
    }

    /* renamed from: a */
    private void m10340a(Canvas canvas, Paint paint, float f, float f2, float f3, boolean z, RectF rectF) {
        float f4 = z ? -1.0f : 1.0f;
        canvas.save();
        canvas.rotate(f3);
        float f5 = f / 2.0f;
        float f6 = f4 * f2;
        canvas.drawRect((this.f53665f - f5) + f2, Math.min((float) BitmapDescriptorFactory.HUE_RED, this.f53662c * f6), (this.f53665f + f5) - f2, Math.max((float) BitmapDescriptorFactory.HUE_RED, f6 * this.f53662c), paint);
        canvas.translate((this.f53665f - f5) + f2, BitmapDescriptorFactory.HUE_RED);
        canvas.drawArc(rectF, 180.0f, (-f4) * 90.0f * this.f53662c, true, paint);
        canvas.translate(f - (f2 * 2.0f), BitmapDescriptorFactory.HUE_RED);
        canvas.drawArc(rectF, BitmapDescriptorFactory.HUE_RED, f4 * 90.0f * this.f53662c, true, paint);
        canvas.restore();
    }

    /* renamed from: c */
    private int m10339c() {
        return ((CircularProgressIndicatorSpec) this.f53704a).f53648g + (((CircularProgressIndicatorSpec) this.f53704a).f53649h * 2);
    }

    @Override // com.google.android.material.progressindicator.AbstractC14720g
    /* renamed from: a */
    public final int mo10304a() {
        return m10339c();
    }

    @Override // com.google.android.material.progressindicator.AbstractC14720g
    /* renamed from: a */
    public final void mo10303a(Canvas canvas, float f) {
        float f2 = (((CircularProgressIndicatorSpec) this.f53704a).f53648g / 2.0f) + ((CircularProgressIndicatorSpec) this.f53704a).f53649h;
        canvas.translate(f2, f2);
        canvas.rotate(-90.0f);
        float f3 = -f2;
        canvas.clipRect(f3, f3, f2, f2);
        this.f53662c = ((CircularProgressIndicatorSpec) this.f53704a).f53650i == 0 ? 1 : -1;
        this.f53663d = ((CircularProgressIndicatorSpec) this.f53704a).f53656a * f;
        this.f53664e = ((CircularProgressIndicatorSpec) this.f53704a).f53657b * f;
        this.f53665f = (((CircularProgressIndicatorSpec) this.f53704a).f53648g - ((CircularProgressIndicatorSpec) this.f53704a).f53656a) / 2.0f;
        if ((this.f53705b.mo10305c() && ((CircularProgressIndicatorSpec) this.f53704a).f53660e == 2) || (this.f53705b.mo10308b() && ((CircularProgressIndicatorSpec) this.f53704a).f53661f == 1)) {
            this.f53665f += ((1.0f - f) * ((CircularProgressIndicatorSpec) this.f53704a).f53656a) / 2.0f;
        } else if ((!this.f53705b.mo10305c() || ((CircularProgressIndicatorSpec) this.f53704a).f53660e != 1) && (!this.f53705b.mo10308b() || ((CircularProgressIndicatorSpec) this.f53704a).f53661f != 2)) {
        } else {
            this.f53665f -= ((1.0f - f) * ((CircularProgressIndicatorSpec) this.f53704a).f53656a) / 2.0f;
        }
    }

    @Override // com.google.android.material.progressindicator.AbstractC14720g
    /* renamed from: a */
    public final void mo10302a(Canvas canvas, Paint paint) {
        int m11242a = C14416a.m11242a(((CircularProgressIndicatorSpec) this.f53704a).f53659d, this.f53705b.getAlpha());
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        paint.setColor(m11242a);
        paint.setStrokeWidth(this.f53663d);
        float f = this.f53665f;
        canvas.drawArc(new RectF(-f, -f, f, f), BitmapDescriptorFactory.HUE_RED, 360.0f, false, paint);
    }

    @Override // com.google.android.material.progressindicator.AbstractC14720g
    /* renamed from: a */
    public final void mo10300a(Canvas canvas, Paint paint, float f, float f2, int i) {
        if (f == f2) {
            return;
        }
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        paint.setColor(i);
        paint.setStrokeWidth(this.f53663d);
        int i2 = this.f53662c;
        float f3 = f * 360.0f * i2;
        float f4 = (f2 >= f ? f2 - f : (f2 + 1.0f) - f) * 360.0f * i2;
        float f5 = this.f53665f;
        canvas.drawArc(new RectF(-f5, -f5, f5, f5), f3, f4, false, paint);
        if (this.f53664e <= BitmapDescriptorFactory.HUE_RED || Math.abs(f4) >= 360.0f) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        float f6 = this.f53664e;
        RectF rectF = new RectF(-f6, -f6, f6, f6);
        m10340a(canvas, paint, this.f53663d, this.f53664e, f3, true, rectF);
        m10340a(canvas, paint, this.f53663d, this.f53664e, f3 + f4, false, rectF);
    }

    @Override // com.google.android.material.progressindicator.AbstractC14720g
    /* renamed from: b */
    public final int mo10299b() {
        return m10339c();
    }
}
