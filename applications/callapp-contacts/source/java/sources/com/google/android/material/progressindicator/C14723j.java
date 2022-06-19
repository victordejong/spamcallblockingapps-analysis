package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.p365b.C14416a;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.progressindicator.j */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/j.class */
public final class C14723j extends AbstractC14720g<LinearProgressIndicatorSpec> {

    /* renamed from: c */
    private float f53711c = 300.0f;

    /* renamed from: d */
    private float f53712d;

    /* renamed from: e */
    private float f53713e;

    public C14723j(LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(linearProgressIndicatorSpec);
    }

    /* renamed from: a */
    private static void m10301a(Canvas canvas, Paint paint, float f, float f2, float f3, boolean z, RectF rectF) {
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

    @Override // com.google.android.material.progressindicator.AbstractC14720g
    /* renamed from: a */
    public final int mo10304a() {
        return -1;
    }

    @Override // com.google.android.material.progressindicator.AbstractC14720g
    /* renamed from: a */
    public final void mo10303a(Canvas canvas, float f) {
        Rect clipBounds = canvas.getClipBounds();
        this.f53711c = clipBounds.width();
        float f2 = ((LinearProgressIndicatorSpec) this.f53704a).f53656a;
        canvas.translate(clipBounds.width() / 2.0f, (clipBounds.height() / 2.0f) + Math.max((float) BitmapDescriptorFactory.HUE_RED, (clipBounds.height() - ((LinearProgressIndicatorSpec) this.f53704a).f53656a) / 2.0f));
        if (((LinearProgressIndicatorSpec) this.f53704a).f53654i) {
            canvas.scale(-1.0f, 1.0f);
        }
        if ((this.f53705b.mo10305c() && ((LinearProgressIndicatorSpec) this.f53704a).f53660e == 1) || (this.f53705b.mo10308b() && ((LinearProgressIndicatorSpec) this.f53704a).f53661f == 2)) {
            canvas.scale(1.0f, -1.0f);
        }
        if (this.f53705b.mo10305c() || this.f53705b.mo10308b()) {
            canvas.translate(BitmapDescriptorFactory.HUE_RED, (((LinearProgressIndicatorSpec) this.f53704a).f53656a * (f - 1.0f)) / 2.0f);
        }
        float f3 = this.f53711c;
        canvas.clipRect((-f3) / 2.0f, (-f2) / 2.0f, f3 / 2.0f, f2 / 2.0f);
        this.f53712d = ((LinearProgressIndicatorSpec) this.f53704a).f53656a * f;
        this.f53713e = ((LinearProgressIndicatorSpec) this.f53704a).f53657b * f;
    }

    @Override // com.google.android.material.progressindicator.AbstractC14720g
    /* renamed from: a */
    public final void mo10302a(Canvas canvas, Paint paint) {
        int m11242a = C14416a.m11242a(((LinearProgressIndicatorSpec) this.f53704a).f53659d, this.f53705b.getAlpha());
        float f = ((-this.f53711c) / 2.0f) + this.f53713e;
        float f2 = -f;
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setColor(m11242a);
        float f3 = this.f53712d;
        canvas.drawRect(f, (-f3) / 2.0f, f2, f3 / 2.0f, paint);
        float f4 = this.f53713e;
        RectF rectF = new RectF(-f4, -f4, f4, f4);
        m10301a(canvas, paint, this.f53712d, this.f53713e, f, true, rectF);
        m10301a(canvas, paint, this.f53712d, this.f53713e, f2, false, rectF);
    }

    @Override // com.google.android.material.progressindicator.AbstractC14720g
    /* renamed from: a */
    public final void mo10300a(Canvas canvas, Paint paint, float f, float f2, int i) {
        if (f == f2) {
            return;
        }
        float f3 = this.f53711c;
        float f4 = (-f3) / 2.0f;
        float f5 = this.f53713e;
        float f6 = f4 + f5 + ((f3 - (f5 * 2.0f)) * f);
        float f7 = ((-f3) / 2.0f) + f5 + ((f3 - (f5 * 2.0f)) * f2);
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setColor(i);
        float f8 = this.f53712d;
        canvas.drawRect(f6, (-f8) / 2.0f, f7, f8 / 2.0f, paint);
        float f9 = this.f53713e;
        RectF rectF = new RectF(-f9, -f9, f9, f9);
        m10301a(canvas, paint, this.f53712d, this.f53713e, f6, true, rectF);
        m10301a(canvas, paint, this.f53712d, this.f53713e, f7, false, rectF);
    }

    @Override // com.google.android.material.progressindicator.AbstractC14720g
    /* renamed from: b */
    public final int mo10299b() {
        return ((LinearProgressIndicatorSpec) this.f53704a).f53656a;
    }
}
