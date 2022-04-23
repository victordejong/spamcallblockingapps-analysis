package com.google.android.material.progressindicator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import androidx.e.a.c;
import androidx.e.a.f;
import androidx.l.a.a.b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.b.a;
import com.google.android.material.progressindicator.b;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/e.class */
public final class e<S extends b> extends f {
    private static final c<e> j = new c<e>("indicatorLevel") { // from class: com.google.android.material.progressindicator.e.1
        @Override // androidx.e.a.c
        public final /* bridge */ /* synthetic */ float a(e eVar) {
            return eVar.h * 10000.0f;
        }

        @Override // androidx.e.a.c
        public final /* bridge */ /* synthetic */ void a(e eVar, float f) {
            eVar.b(f / 10000.0f);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    g<S> f30755a;
    private final f f;
    private final androidx.e.a.e g;
    private float h;
    private boolean i = false;

    e(Context context, b bVar, g<S> gVar) {
        super(context, bVar);
        this.f30755a = gVar;
        gVar.a(this);
        f fVar = new f();
        this.f = fVar;
        fVar.f2134b = 1.0d;
        fVar.f2135c = false;
        fVar.a(50.0f);
        androidx.e.a.e eVar = new androidx.e.a.e(this, j);
        this.g = eVar;
        eVar.w = fVar;
        a(1.0f);
    }

    public static e<CircularProgressIndicatorSpec> a(Context context, CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        return new e<>(context, circularProgressIndicatorSpec, new c(circularProgressIndicatorSpec));
    }

    public static e<LinearProgressIndicatorSpec> a(Context context, LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        return new e<>(context, linearProgressIndicatorSpec, new j(linearProgressIndicatorSpec));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(float f) {
        this.h = f;
        invalidateSelf();
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
        float a3 = a.a(this.f30757b.getContentResolver());
        if (a3 == BitmapDescriptorFactory.HUE_RED) {
            this.i = true;
        } else {
            this.i = false;
            this.f.a(50.0f / a3);
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
            this.f30755a.b(canvas, d());
            this.f30755a.a(canvas, this.e);
            this.f30755a.a(canvas, this.e, BitmapDescriptorFactory.HUE_RED, this.h, a.a(this.f30758c.f30748c[0], getAlpha()));
            canvas.restore();
        }
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f30755a.b();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f30755a.a();
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Animatable
    public final /* bridge */ /* synthetic */ boolean isRunning() {
        return super.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        this.g.b();
        b(getLevel() / 10000.0f);
    }

    @Override // android.graphics.drawable.Drawable
    protected final boolean onLevelChange(int i) {
        if (this.i) {
            this.g.b();
            b(i / 10000.0f);
            return true;
        }
        androidx.e.a.e eVar = this.g;
        eVar.p = this.h * 10000.0f;
        eVar.q = true;
        this.g.a(i);
        return true;
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
