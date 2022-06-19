package com.google.android.material.progressindicator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import androidx.p042e.p043a.AbstractC1018c;
import androidx.p042e.p043a.C1020e;
import androidx.p042e.p043a.C1021f;
import androidx.p057l.p058a.p059a.AbstractC1196b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.p365b.C14416a;
import com.google.android.material.progressindicator.AbstractC14707b;
/* renamed from: com.google.android.material.progressindicator.e */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/progressindicator/e.class */
public final class C14714e<S extends AbstractC14707b> extends AbstractC14716f {

    /* renamed from: j */
    private static final AbstractC1018c<C14714e> f53681j = new AbstractC1018c<C14714e>("indicatorLevel") { // from class: com.google.android.material.progressindicator.e.1
        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ float mo10325a(C14714e c14714e) {
            return c14714e.f53685h * 10000.0f;
        }

        @Override // androidx.p042e.p043a.AbstractC1018c
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo10324a(C14714e c14714e, float f) {
            c14714e.m10326b(f / 10000.0f);
        }
    };

    /* renamed from: a */
    AbstractC14720g<S> f53682a;

    /* renamed from: f */
    private final C1021f f53683f;

    /* renamed from: g */
    private final C1020e f53684g;

    /* renamed from: h */
    private float f53685h;

    /* renamed from: i */
    private boolean f53686i = false;

    C14714e(Context context, AbstractC14707b abstractC14707b, AbstractC14720g<S> abstractC14720g) {
        super(context, abstractC14707b);
        this.f53682a = abstractC14720g;
        abstractC14720g.m10317a(this);
        C1021f c1021f = new C1021f();
        this.f53683f = c1021f;
        c1021f.f4040b = 1.0d;
        c1021f.f4041c = false;
        c1021f.m43822a(50.0f);
        C1020e c1020e = new C1020e(this, f53681j);
        this.f53684g = c1020e;
        c1020e.f4036w = c1021f;
        m10323a(1.0f);
    }

    /* renamed from: a */
    public static C14714e<CircularProgressIndicatorSpec> m10330a(Context context, CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        return new C14714e<>(context, circularProgressIndicatorSpec, new C14708c(circularProgressIndicatorSpec));
    }

    /* renamed from: a */
    public static C14714e<LinearProgressIndicatorSpec> m10329a(Context context, LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        return new C14714e<>(context, linearProgressIndicatorSpec, new C14723j(linearProgressIndicatorSpec));
    }

    /* renamed from: b */
    public void m10326b(float f) {
        this.f53685h = f;
        invalidateSelf();
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
        float m10344a = C14706a.m10344a(this.f53689b.getContentResolver());
        if (m10344a == BitmapDescriptorFactory.HUE_RED) {
            this.f53686i = true;
        } else {
            this.f53686i = false;
            this.f53683f.m43822a(50.0f / m10344a);
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
        this.f53682a.m10316b(canvas, m10318d());
        this.f53682a.mo10302a(canvas, this.f53692e);
        this.f53682a.mo10300a(canvas, this.f53692e, BitmapDescriptorFactory.HUE_RED, this.f53685h, C14416a.m11242a(this.f53690c.f53658c[0], getAlpha()));
        canvas.restore();
    }

    @Override // com.google.android.material.progressindicator.AbstractC14716f, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f53682a.mo10299b();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f53682a.mo10304a();
    }

    @Override // com.google.android.material.progressindicator.AbstractC14716f, android.graphics.drawable.Drawable
    public final /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    @Override // com.google.android.material.progressindicator.AbstractC14716f, android.graphics.drawable.Animatable
    public final /* bridge */ /* synthetic */ boolean isRunning() {
        return super.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        this.f53684g.m43830b();
        m10326b(getLevel() / 10000.0f);
    }

    @Override // android.graphics.drawable.Drawable
    protected final boolean onLevelChange(int i) {
        if (this.f53686i) {
            this.f53684g.m43830b();
            m10326b(i / 10000.0f);
            return true;
        }
        C1020e c1020e = this.f53684g;
        c1020e.f4019p = this.f53685h * 10000.0f;
        c1020e.f4020q = true;
        this.f53684g.m43826a(i);
        return true;
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
