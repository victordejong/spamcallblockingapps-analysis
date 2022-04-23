package com.google.android.material.progressindicator;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.os.Build;
import androidx.l.a.a.b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.progressindicator.b;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/i.class */
public final class i<S extends b> extends f {

    /* renamed from: a  reason: collision with root package name */
    g<S> f30767a;
    h<ObjectAnimator> f;

    i(Context context, b bVar, g<S> gVar, h<ObjectAnimator> hVar) {
        super(context, bVar);
        this.f30767a = gVar;
        gVar.a(this);
        a(hVar);
    }

    public static i<CircularProgressIndicatorSpec> a(Context context, CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        return new i<>(context, circularProgressIndicatorSpec, new c(circularProgressIndicatorSpec), new d(circularProgressIndicatorSpec));
    }

    public static i<LinearProgressIndicatorSpec> a(Context context, LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        return new i<>(context, linearProgressIndicatorSpec, new j(linearProgressIndicatorSpec), linearProgressIndicatorSpec.g == 0 ? new k(linearProgressIndicatorSpec) : new l(context, linearProgressIndicatorSpec));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(h<ObjectAnimator> hVar) {
        this.f = hVar;
        hVar.a(this);
    }

    @Override // com.google.android.material.progressindicator.f
    public final /* bridge */ /* synthetic */ boolean a() {
        return super.a();
    }

    @Override // com.google.android.material.progressindicator.f
    public final /* bridge */ /* synthetic */ boolean a(b.a aVar) {
        return super.a(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.progressindicator.f
    public final boolean a(boolean z, boolean z2, boolean z3) {
        boolean a2 = super.a(z, z2, z3);
        if (!isRunning()) {
            this.f.b();
        }
        float a3 = a.a(this.f30757b.getContentResolver());
        if (z && (z3 || (Build.VERSION.SDK_INT <= 21 && a3 > BitmapDescriptorFactory.HUE_RED))) {
            this.f.a();
        }
        return a2;
    }

    @Override // com.google.android.material.progressindicator.f
    public final /* bridge */ /* synthetic */ void b(b.a aVar) {
        super.b(aVar);
    }

    @Override // com.google.android.material.progressindicator.f
    public final /* bridge */ /* synthetic */ boolean b() {
        return super.b();
    }

    @Override // com.google.android.material.progressindicator.f
    public final /* bridge */ /* synthetic */ boolean b(boolean z, boolean z2, boolean z3) {
        return super.b(z, z2, z3);
    }

    @Override // com.google.android.material.progressindicator.f
    public final /* bridge */ /* synthetic */ boolean c() {
        return super.c();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Rect rect = new Rect();
        if (!getBounds().isEmpty() && isVisible() && canvas.getClipBounds(rect)) {
            canvas.save();
            this.f30767a.b(canvas, d());
            this.f30767a.a(canvas, this.e);
            for (int i = 0; i < this.f.f30766d.length; i++) {
                int i2 = i * 2;
                this.f30767a.a(canvas, this.e, this.f.f30765c[i2], this.f.f30765c[i2 + 1], this.f.f30766d[i]);
            }
            canvas.restore();
        }
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f30767a.b();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f30767a.a();
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Animatable
    public final /* bridge */ /* synthetic */ boolean isRunning() {
        return super.isRunning();
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setAlpha(int i) {
        super.setAlpha(i);
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ void setColorFilter(ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2);
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Animatable
    public final /* bridge */ /* synthetic */ void start() {
        super.start();
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Animatable
    public final /* bridge */ /* synthetic */ void stop() {
        super.stop();
    }
}
