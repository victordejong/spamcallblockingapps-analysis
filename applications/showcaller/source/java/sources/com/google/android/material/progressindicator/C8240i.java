package com.google.android.material.progressindicator;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Build;
import com.google.android.material.progressindicator.AbstractC8225b;
import p020b.p074t.p075a.p076a.AbstractC1793b;
/* renamed from: com.google.android.material.progressindicator.i */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/i.class */
public final class C8240i<S extends AbstractC8225b> extends AbstractC8234f {

    /* renamed from: s */
    private AbstractC8238g<S> f37141s;

    /* renamed from: t */
    private AbstractC8239h<ObjectAnimator> f37142t;

    C8240i(Context context, AbstractC8225b abstractC8225b, AbstractC8238g<S> abstractC8238g, AbstractC8239h<ObjectAnimator> abstractC8239h) {
        super(context, abstractC8225b);
        m4334x(abstractC8238g);
        m4335w(abstractC8239h);
    }

    /* renamed from: s */
    public static C8240i<CircularProgressIndicatorSpec> m4339s(Context context, CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        return new C8240i<>(context, circularProgressIndicatorSpec, new C8226c(circularProgressIndicatorSpec), new C8227d(circularProgressIndicatorSpec));
    }

    /* renamed from: t */
    public static C8240i<LinearProgressIndicatorSpec> m4338t(Context context, LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        return new C8240i<>(context, linearProgressIndicatorSpec, new C8241j(linearProgressIndicatorSpec), linearProgressIndicatorSpec.f37084g == 0 ? new C8242k(linearProgressIndicatorSpec) : new C8245l(context, linearProgressIndicatorSpec));
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect rect = new Rect();
        if (getBounds().isEmpty() || !isVisible() || !canvas.getClipBounds(rect)) {
            return;
        }
        canvas.save();
        this.f37141s.m4349g(canvas, m4357g());
        this.f37141s.mo4331c(canvas, this.f37132q);
        int i = 0;
        while (true) {
            AbstractC8239h<ObjectAnimator> abstractC8239h = this.f37142t;
            int[] iArr = abstractC8239h.f37140c;
            if (i >= iArr.length) {
                canvas.restore();
                return;
            }
            AbstractC8238g<S> abstractC8238g = this.f37141s;
            Paint paint = this.f37132q;
            float[] fArr = abstractC8239h.f37139b;
            int i2 = i * 2;
            abstractC8238g.mo4332b(canvas, paint, fArr[i2], fArr[i2 + 1], iArr[i]);
            i++;
        }
    }

    @Override // com.google.android.material.progressindicator.AbstractC8234f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f37141s.mo4330d();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f37141s.mo4329e();
    }

    @Override // com.google.android.material.progressindicator.AbstractC8234f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    @Override // com.google.android.material.progressindicator.AbstractC8234f
    /* renamed from: h */
    public /* bridge */ /* synthetic */ boolean mo4346h() {
        return super.mo4346h();
    }

    @Override // com.google.android.material.progressindicator.AbstractC8234f
    /* renamed from: i */
    public /* bridge */ /* synthetic */ boolean mo4345i() {
        return super.mo4345i();
    }

    @Override // com.google.android.material.progressindicator.AbstractC8234f, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ boolean isRunning() {
        return super.isRunning();
    }

    @Override // com.google.android.material.progressindicator.AbstractC8234f
    /* renamed from: j */
    public /* bridge */ /* synthetic */ boolean mo4344j() {
        return super.mo4344j();
    }

    @Override // com.google.android.material.progressindicator.AbstractC8234f
    /* renamed from: l */
    public /* bridge */ /* synthetic */ void mo4343l(AbstractC1793b abstractC1793b) {
        super.mo4343l(abstractC1793b);
    }

    @Override // com.google.android.material.progressindicator.AbstractC8234f
    /* renamed from: p */
    public /* bridge */ /* synthetic */ boolean mo4342p(boolean z, boolean z2, boolean z3) {
        return super.mo4342p(z, z2, z3);
    }

    @Override // com.google.android.material.progressindicator.AbstractC8234f
    /* renamed from: q */
    public boolean mo4341q(boolean z, boolean z2, boolean z3) {
        boolean mo4341q = super.mo4341q(z, z2, z3);
        if (!isRunning()) {
            this.f37142t.mo4314a();
        }
        float m4402a = this.f37122g.m4402a(this.f37120e.getContentResolver());
        if (z && (z3 || (Build.VERSION.SDK_INT <= 21 && m4402a > 0.0f))) {
            this.f37142t.mo4310g();
        }
        return mo4341q;
    }

    @Override // com.google.android.material.progressindicator.AbstractC8234f
    /* renamed from: r */
    public /* bridge */ /* synthetic */ boolean mo4340r(AbstractC1793b abstractC1793b) {
        return super.mo4340r(abstractC1793b);
    }

    @Override // com.google.android.material.progressindicator.AbstractC8234f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAlpha(int i) {
        super.setAlpha(i);
    }

    @Override // com.google.android.material.progressindicator.AbstractC8234f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
    }

    @Override // com.google.android.material.progressindicator.AbstractC8234f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2);
    }

    @Override // com.google.android.material.progressindicator.AbstractC8234f, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ void start() {
        super.start();
    }

    @Override // com.google.android.material.progressindicator.AbstractC8234f, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ void stop() {
        super.stop();
    }

    /* renamed from: u */
    public AbstractC8239h<ObjectAnimator> m4337u() {
        return this.f37142t;
    }

    /* renamed from: v */
    public AbstractC8238g<S> m4336v() {
        return this.f37141s;
    }

    /* renamed from: w */
    public void m4335w(AbstractC8239h<ObjectAnimator> abstractC8239h) {
        this.f37142t = abstractC8239h;
        abstractC8239h.m4347e(this);
    }

    /* renamed from: x */
    void m4334x(AbstractC8238g<S> abstractC8238g) {
        this.f37141s = abstractC8238g;
        abstractC8238g.m4350f(this);
    }
}
