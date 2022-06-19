package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import p078c.p084c.p085a.p096b.p099o.C1909a;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.progressindicator.c */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/c.class */
public final class C8226c extends AbstractC8238g<CircularProgressIndicatorSpec> {

    /* renamed from: c */
    private int f37094c = 1;

    /* renamed from: d */
    private float f37095d;

    /* renamed from: e */
    private float f37096e;

    /* renamed from: f */
    private float f37097f;

    public C8226c(CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(circularProgressIndicatorSpec);
    }

    /* renamed from: h */
    private void m4396h(Canvas canvas, Paint paint, float f, float f2, float f3, boolean z, RectF rectF) {
        float f4 = z ? -1.0f : 1.0f;
        canvas.save();
        canvas.rotate(f3);
        float f5 = f / 2.0f;
        float f6 = f4 * f2;
        canvas.drawRect((this.f37097f - f5) + f2, Math.min(0.0f, this.f37094c * f6), (this.f37097f + f5) - f2, Math.max(0.0f, f6 * this.f37094c), paint);
        canvas.translate((this.f37097f - f5) + f2, 0.0f);
        canvas.drawArc(rectF, 180.0f, (-f4) * 90.0f * this.f37094c, true, paint);
        canvas.translate(f - (f2 * 2.0f), 0.0f);
        canvas.drawArc(rectF, 0.0f, f4 * 90.0f * this.f37094c, true, paint);
        canvas.restore();
    }

    /* renamed from: i */
    private int m4395i() {
        S s = this.f37136a;
        return ((CircularProgressIndicatorSpec) s).f37080g + (((CircularProgressIndicatorSpec) s).f37081h * 2);
    }

    @Override // com.google.android.material.progressindicator.AbstractC8238g
    /* renamed from: a */
    public void mo4333a(Canvas canvas, float f) {
        S s;
        S s2 = this.f37136a;
        float f2 = (((CircularProgressIndicatorSpec) s2).f37080g / 2.0f) + ((CircularProgressIndicatorSpec) s2).f37081h;
        canvas.translate(f2, f2);
        canvas.rotate(-90.0f);
        float f3 = -f2;
        canvas.clipRect(f3, f3, f2, f2);
        this.f37094c = ((CircularProgressIndicatorSpec) this.f37136a).f37082i == 0 ? 1 : -1;
        this.f37095d = ((CircularProgressIndicatorSpec) s).f37088a * f;
        this.f37096e = ((CircularProgressIndicatorSpec) s).f37089b * f;
        this.f37097f = (((CircularProgressIndicatorSpec) s).f37080g - ((CircularProgressIndicatorSpec) s).f37088a) / 2.0f;
        if ((this.f37137b.mo4344j() && ((CircularProgressIndicatorSpec) this.f37136a).f37092e == 2) || (this.f37137b.mo4345i() && ((CircularProgressIndicatorSpec) this.f37136a).f37093f == 1)) {
            this.f37097f += ((1.0f - f) * ((CircularProgressIndicatorSpec) this.f37136a).f37088a) / 2.0f;
        } else if ((!this.f37137b.mo4344j() || ((CircularProgressIndicatorSpec) this.f37136a).f37092e != 1) && (!this.f37137b.mo4345i() || ((CircularProgressIndicatorSpec) this.f37136a).f37093f != 2)) {
        } else {
            this.f37097f -= ((1.0f - f) * ((CircularProgressIndicatorSpec) this.f37136a).f37088a) / 2.0f;
        }
    }

    @Override // com.google.android.material.progressindicator.AbstractC8238g
    /* renamed from: b */
    public void mo4332b(Canvas canvas, Paint paint, float f, float f2, int i) {
        if (f == f2) {
            return;
        }
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        paint.setColor(i);
        paint.setStrokeWidth(this.f37095d);
        int i2 = this.f37094c;
        float f3 = f * 360.0f * i2;
        float f4 = (f2 >= f ? f2 - f : (f2 + 1.0f) - f) * 360.0f * i2;
        float f5 = this.f37097f;
        canvas.drawArc(new RectF(-f5, -f5, f5, f5), f3, f4, false, paint);
        if (this.f37096e <= 0.0f || Math.abs(f4) >= 360.0f) {
            return;
        }
        paint.setStyle(Paint.Style.FILL);
        float f6 = this.f37096e;
        RectF rectF = new RectF(-f6, -f6, f6, f6);
        m4396h(canvas, paint, this.f37095d, this.f37096e, f3, true, rectF);
        m4396h(canvas, paint, this.f37095d, this.f37096e, f3 + f4, false, rectF);
    }

    @Override // com.google.android.material.progressindicator.AbstractC8238g
    /* renamed from: c */
    public void mo4331c(Canvas canvas, Paint paint) {
        int m28718a = C1909a.m28718a(((CircularProgressIndicatorSpec) this.f37136a).f37091d, this.f37137b.getAlpha());
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.BUTT);
        paint.setAntiAlias(true);
        paint.setColor(m28718a);
        paint.setStrokeWidth(this.f37095d);
        float f = this.f37097f;
        canvas.drawArc(new RectF(-f, -f, f, f), 0.0f, 360.0f, false, paint);
    }

    @Override // com.google.android.material.progressindicator.AbstractC8238g
    /* renamed from: d */
    public int mo4330d() {
        return m4395i();
    }

    @Override // com.google.android.material.progressindicator.AbstractC8238g
    /* renamed from: e */
    public int mo4329e() {
        return m4395i();
    }
}
