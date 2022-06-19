package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import p078c.p084c.p085a.p096b.p099o.C1909a;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.progressindicator.j */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/j.class */
public final class C8241j extends AbstractC8238g<LinearProgressIndicatorSpec> {

    /* renamed from: c */
    private float f37143c = 300.0f;

    /* renamed from: d */
    private float f37144d;

    /* renamed from: e */
    private float f37145e;

    public C8241j(LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(linearProgressIndicatorSpec);
    }

    /* renamed from: h */
    private static void m4328h(Canvas canvas, Paint paint, float f, float f2, float f3, boolean z, RectF rectF) {
        canvas.save();
        canvas.translate(f3, 0.0f);
        if (!z) {
            canvas.rotate(180.0f);
        }
        float f4 = ((-f) / 2.0f) + f2;
        float f5 = (f / 2.0f) - f2;
        canvas.drawRect(-f2, f4, 0.0f, f5, paint);
        canvas.save();
        canvas.translate(0.0f, f4);
        canvas.drawArc(rectF, 180.0f, 90.0f, true, paint);
        canvas.restore();
        canvas.translate(0.0f, f5);
        canvas.drawArc(rectF, 180.0f, -90.0f, true, paint);
        canvas.restore();
    }

    @Override // com.google.android.material.progressindicator.AbstractC8238g
    /* renamed from: a */
    public void mo4333a(Canvas canvas, float f) {
        Rect clipBounds = canvas.getClipBounds();
        this.f37143c = clipBounds.width();
        float f2 = ((LinearProgressIndicatorSpec) this.f37136a).f37088a;
        canvas.translate(clipBounds.width() / 2.0f, (clipBounds.height() / 2.0f) + Math.max(0.0f, (clipBounds.height() - ((LinearProgressIndicatorSpec) this.f37136a).f37088a) / 2.0f));
        if (((LinearProgressIndicatorSpec) this.f37136a).f37086i) {
            canvas.scale(-1.0f, 1.0f);
        }
        if ((this.f37137b.mo4344j() && ((LinearProgressIndicatorSpec) this.f37136a).f37092e == 1) || (this.f37137b.mo4345i() && ((LinearProgressIndicatorSpec) this.f37136a).f37093f == 2)) {
            canvas.scale(1.0f, -1.0f);
        }
        if (this.f37137b.mo4344j() || this.f37137b.mo4345i()) {
            canvas.translate(0.0f, (((LinearProgressIndicatorSpec) this.f37136a).f37088a * (f - 1.0f)) / 2.0f);
        }
        float f3 = this.f37143c;
        canvas.clipRect((-f3) / 2.0f, (-f2) / 2.0f, f3 / 2.0f, f2 / 2.0f);
        S s = this.f37136a;
        this.f37144d = ((LinearProgressIndicatorSpec) s).f37088a * f;
        this.f37145e = ((LinearProgressIndicatorSpec) s).f37089b * f;
    }

    @Override // com.google.android.material.progressindicator.AbstractC8238g
    /* renamed from: b */
    public void mo4332b(Canvas canvas, Paint paint, float f, float f2, int i) {
        if (f == f2) {
            return;
        }
        float f3 = this.f37143c;
        float f4 = (-f3) / 2.0f;
        float f5 = this.f37145e;
        float f6 = f4 + f5 + ((f3 - (f5 * 2.0f)) * f);
        float f7 = ((-f3) / 2.0f) + f5 + ((f3 - (f5 * 2.0f)) * f2);
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setColor(i);
        float f8 = this.f37144d;
        canvas.drawRect(f6, (-f8) / 2.0f, f7, f8 / 2.0f, paint);
        float f9 = this.f37145e;
        RectF rectF = new RectF(-f9, -f9, f9, f9);
        m4328h(canvas, paint, this.f37144d, this.f37145e, f6, true, rectF);
        m4328h(canvas, paint, this.f37144d, this.f37145e, f7, false, rectF);
    }

    @Override // com.google.android.material.progressindicator.AbstractC8238g
    /* renamed from: c */
    public void mo4331c(Canvas canvas, Paint paint) {
        int m28718a = C1909a.m28718a(((LinearProgressIndicatorSpec) this.f37136a).f37091d, this.f37137b.getAlpha());
        float f = ((-this.f37143c) / 2.0f) + this.f37145e;
        float f2 = -f;
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setColor(m28718a);
        float f3 = this.f37144d;
        canvas.drawRect(f, (-f3) / 2.0f, f2, f3 / 2.0f, paint);
        float f4 = this.f37145e;
        RectF rectF = new RectF(-f4, -f4, f4, f4);
        m4328h(canvas, paint, this.f37144d, this.f37145e, f, true, rectF);
        m4328h(canvas, paint, this.f37144d, this.f37145e, f2, false, rectF);
    }

    @Override // com.google.android.material.progressindicator.AbstractC8238g
    /* renamed from: d */
    public int mo4330d() {
        return ((LinearProgressIndicatorSpec) this.f37136a).f37088a;
    }

    @Override // com.google.android.material.progressindicator.AbstractC8238g
    /* renamed from: e */
    public int mo4329e() {
        return -1;
    }
}
