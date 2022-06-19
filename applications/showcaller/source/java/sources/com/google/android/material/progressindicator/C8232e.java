package com.google.android.material.progressindicator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import com.google.android.material.progressindicator.AbstractC8225b;
import p020b.p057k.p058a.AbstractC1741c;
import p020b.p057k.p058a.C1742d;
import p020b.p057k.p058a.C1743e;
import p020b.p074t.p075a.p076a.AbstractC1793b;
import p078c.p084c.p085a.p096b.p099o.C1909a;
/* renamed from: com.google.android.material.progressindicator.e */
/* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/e.class */
public final class C8232e<S extends AbstractC8225b> extends AbstractC8234f {

    /* renamed from: s */
    private static final AbstractC1741c<C8232e> f37113s = new C8233a("indicatorLevel");

    /* renamed from: t */
    private AbstractC8238g<S> f37114t;

    /* renamed from: u */
    private final C1743e f37115u;

    /* renamed from: v */
    private final C1742d f37116v;

    /* renamed from: w */
    private float f37117w;

    /* renamed from: x */
    private boolean f37118x = false;

    /* renamed from: com.google.android.material.progressindicator.e$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/progressindicator/e$a.class */
    static final class C8233a extends AbstractC1741c<C8232e> {
        C8233a(String str) {
            super(str);
        }

        /* renamed from: c */
        public float mo4367a(C8232e c8232e) {
            return c8232e.m4370x() * 10000.0f;
        }

        /* renamed from: d */
        public void mo4366b(C8232e c8232e, float f) {
            c8232e.m4368z(f / 10000.0f);
        }
    }

    C8232e(Context context, AbstractC8225b abstractC8225b, AbstractC8238g<S> abstractC8238g) {
        super(context, abstractC8225b);
        m4369y(abstractC8238g);
        C1743e c1743e = new C1743e();
        this.f37115u = c1743e;
        c1743e.m29033d(1.0f);
        c1743e.m29031f(50.0f);
        C1742d c1742d = new C1742d(this, f37113s);
        this.f37116v = c1742d;
        c1742d.m29037p(c1743e);
        m4355m(1.0f);
    }

    /* renamed from: u */
    public static C8232e<CircularProgressIndicatorSpec> m4373u(Context context, CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        return new C8232e<>(context, circularProgressIndicatorSpec, new C8226c(circularProgressIndicatorSpec));
    }

    /* renamed from: v */
    public static C8232e<LinearProgressIndicatorSpec> m4372v(Context context, LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        return new C8232e<>(context, linearProgressIndicatorSpec, new C8241j(linearProgressIndicatorSpec));
    }

    /* renamed from: x */
    public float m4370x() {
        return this.f37117w;
    }

    /* renamed from: z */
    public void m4368z(float f) {
        this.f37117w = f;
        invalidateSelf();
    }

    /* renamed from: A */
    public void m4376A(float f) {
        setLevel((int) (f * 10000.0f));
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect rect = new Rect();
        if (getBounds().isEmpty() || !isVisible() || !canvas.getClipBounds(rect)) {
            return;
        }
        canvas.save();
        this.f37114t.m4349g(canvas, m4357g());
        this.f37114t.mo4331c(canvas, this.f37132q);
        this.f37114t.mo4332b(canvas, this.f37132q, 0.0f, m4370x(), C1909a.m28718a(this.f37121f.f37090c[0], getAlpha()));
        canvas.restore();
    }

    @Override // com.google.android.material.progressindicator.AbstractC8234f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f37114t.mo4330d();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f37114t.mo4329e();
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

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.f37116v.m29081b();
        m4368z(getLevel() / 10000.0f);
    }

    @Override // com.google.android.material.progressindicator.AbstractC8234f
    /* renamed from: l */
    public /* bridge */ /* synthetic */ void mo4343l(AbstractC1793b abstractC1793b) {
        super.mo4343l(abstractC1793b);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        if (this.f37118x) {
            this.f37116v.m29081b();
            m4368z(i / 10000.0f);
            return true;
        }
        this.f37116v.m29074i(m4370x() * 10000.0f);
        this.f37116v.m29040m(i);
        return true;
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
        float m4402a = this.f37122g.m4402a(this.f37120e.getContentResolver());
        if (m4402a == 0.0f) {
            this.f37118x = true;
        } else {
            this.f37118x = false;
            this.f37115u.m29031f(50.0f / m4402a);
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

    /* renamed from: w */
    public AbstractC8238g<S> m4371w() {
        return this.f37114t;
    }

    /* renamed from: y */
    void m4369y(AbstractC8238g<S> abstractC8238g) {
        this.f37114t = abstractC8238g;
        abstractC8238g.m4350f(this);
    }
}
