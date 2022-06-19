package com.google.android.material.progressindicator;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.os.Build;
import androidx.p057l.p058a.p059a.AbstractC1196b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.progressindicator.AbstractC14707b;
/* renamed from: com.google.android.material.progressindicator.i */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/i.class */
public final class C14722i<S extends AbstractC14707b> extends AbstractC14716f {

    /* renamed from: a */
    AbstractC14720g<S> f53709a;

    /* renamed from: f */
    AbstractC14721h<ObjectAnimator> f53710f;

    C14722i(Context context, AbstractC14707b abstractC14707b, AbstractC14720g<S> abstractC14720g, AbstractC14721h<ObjectAnimator> abstractC14721h) {
        super(context, abstractC14707b);
        this.f53709a = abstractC14720g;
        abstractC14720g.m10317a(this);
        m10310a(abstractC14721h);
    }

    /* renamed from: a */
    public static C14722i<CircularProgressIndicatorSpec> m10313a(Context context, CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        return new C14722i<>(context, circularProgressIndicatorSpec, new C14708c(circularProgressIndicatorSpec), new C14709d(circularProgressIndicatorSpec));
    }

    /* renamed from: a */
    public static C14722i<LinearProgressIndicatorSpec> m10312a(Context context, LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        return new C14722i<>(context, linearProgressIndicatorSpec, new C14723j(linearProgressIndicatorSpec), linearProgressIndicatorSpec.f53652g == 0 ? new C14724k(linearProgressIndicatorSpec) : new C14727l(context, linearProgressIndicatorSpec));
    }

    /* renamed from: a */
    public final void m10310a(AbstractC14721h<ObjectAnimator> abstractC14721h) {
        this.f53710f = abstractC14721h;
        abstractC14721h.m10315a(this);
    }

    @Override // com.google.android.material.progressindicator.AbstractC14716f
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo10314a() {
        return super.mo10314a();
    }

    @Override // com.google.android.material.progressindicator.AbstractC14716f
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo10311a(AbstractC1196b.AbstractC1197a abstractC1197a) {
        return super.mo10311a(abstractC1197a);
    }

    @Override // com.google.android.material.progressindicator.AbstractC14716f
    /* renamed from: a */
    public final boolean mo10309a(boolean z, boolean z2, boolean z3) {
        boolean mo10309a = super.mo10309a(z, z2, z3);
        if (!isRunning()) {
            this.f53710f.mo10286b();
        }
        float m10344a = C14706a.m10344a(this.f53689b.getContentResolver());
        if (z && (z3 || (Build.VERSION.SDK_INT <= 21 && m10344a > BitmapDescriptorFactory.HUE_RED))) {
            this.f53710f.mo10291a();
        }
        return mo10309a;
    }

    @Override // com.google.android.material.progressindicator.AbstractC14716f
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo10307b(AbstractC1196b.AbstractC1197a abstractC1197a) {
        super.mo10307b(abstractC1197a);
    }

    @Override // com.google.android.material.progressindicator.AbstractC14716f
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ boolean mo10308b() {
        return super.mo10308b();
    }

    @Override // com.google.android.material.progressindicator.AbstractC14716f
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ boolean mo10306b(boolean z, boolean z2, boolean z3) {
        return super.mo10306b(z, z2, z3);
    }

    @Override // com.google.android.material.progressindicator.AbstractC14716f
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ boolean mo10305c() {
        return super.mo10305c();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Rect rect = new Rect();
        if (getBounds().isEmpty() || !isVisible() || !canvas.getClipBounds(rect)) {
            return;
        }
        canvas.save();
        this.f53709a.m10316b(canvas, m10318d());
        this.f53709a.mo10302a(canvas, this.f53692e);
        for (int i = 0; i < this.f53710f.f53708d.length; i++) {
            int i2 = i * 2;
            this.f53709a.mo10300a(canvas, this.f53692e, this.f53710f.f53707c[i2], this.f53710f.f53707c[i2 + 1], this.f53710f.f53708d[i]);
        }
        canvas.restore();
    }

    @Override // com.google.android.material.progressindicator.AbstractC14716f, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f53709a.mo10299b();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f53709a.mo10304a();
    }

    @Override // com.google.android.material.progressindicator.AbstractC14716f, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    @Override // com.google.android.material.progressindicator.AbstractC14716f, android.graphics.drawable.Animatable
    public final /* bridge */ /* synthetic */ boolean isRunning() {
        return super.isRunning();
    }

    @Override // com.google.android.material.progressindicator.AbstractC14716f, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setAlpha(int i) {
        super.setAlpha(i);
    }

    @Override // com.google.android.material.progressindicator.AbstractC14716f, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setColorFilter(ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
    }

    @Override // com.google.android.material.progressindicator.AbstractC14716f, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2);
    }

    @Override // com.google.android.material.progressindicator.AbstractC14716f, android.graphics.drawable.Animatable
    public final /* bridge */ /* synthetic */ void start() {
        super.start();
    }

    @Override // com.google.android.material.progressindicator.AbstractC14716f, android.graphics.drawable.Animatable
    public final /* bridge */ /* synthetic */ void stop() {
        super.stop();
    }
}
