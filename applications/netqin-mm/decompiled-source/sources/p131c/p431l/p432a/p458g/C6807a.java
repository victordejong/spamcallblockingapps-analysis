package p131c.p431l.p432a.p458g;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import p012b.p065n.p066a.p067a.C1098b;
/* renamed from: c.l.a.g.a */
/* loaded from: classes2-dex2jar.jar:c/l/a/g/a.class */
public class C6807a extends AbstractC6811c {

    /* renamed from: h */
    public final Paint f20953h = new Paint();

    /* renamed from: i */
    public final RectF f20954i = new RectF();

    /* renamed from: j */
    public final Animator.AnimatorListener f20955j = new C6808a();

    /* renamed from: k */
    public int f20956k;

    /* renamed from: l */
    public int f20957l;

    /* renamed from: m */
    public int f20958m;

    /* renamed from: n */
    public float f20959n;

    /* renamed from: o */
    public float f20960o;

    /* renamed from: p */
    public float f20961p;

    /* renamed from: q */
    public float f20962q;

    /* renamed from: r */
    public float f20963r;

    /* renamed from: s */
    public float f20964s;

    /* renamed from: t */
    public float f20965t;

    /* renamed from: u */
    public float f20966u;

    /* renamed from: v */
    public float f20967v;

    /* renamed from: w */
    public float f20968w;

    /* renamed from: x */
    public float f20969x;

    /* renamed from: y */
    public float f20970y;

    /* renamed from: z */
    public static final Interpolator f20952z = new LinearInterpolator();

    /* renamed from: A */
    public static final Interpolator f20948A = new C1098b();

    /* renamed from: B */
    public static final Interpolator f20949B = new AccelerateInterpolator();

    /* renamed from: C */
    public static final Interpolator f20950C = new DecelerateInterpolator();

    /* renamed from: D */
    public static final int f20951D = Color.parseColor("#ff989898");

    /* renamed from: c.l.a.g.a$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/g/a$a.class */
    public class C6808a extends AnimatorListenerAdapter {
        public C6808a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            C6807a.this.m19717m();
            C6807a aVar = C6807a.this;
            aVar.f20963r = aVar.f20962q;
            C6807a aVar2 = C6807a.this;
            aVar2.f20960o = (aVar2.f20960o + 1.0f) % 5.0f;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            C6807a.this.f20960o = 0.0f;
        }
    }

    public C6807a(Context context) {
        super(context);
        m19718l();
        m19712a(this.f20955j);
    }

    @Override // p131c.p431l.p432a.p458g.AbstractC6811c
    /* renamed from: a */
    public void mo19715a(float f) {
        if (f <= 0.5f) {
            float interpolation = this.f20969x + (f20948A.getInterpolation(f / 0.5f) * 288.0f);
            this.f20963r = interpolation;
            float f2 = Math.abs(this.f20962q - interpolation) > 0.1f ? this.f20962q - this.f20963r : 0.1f;
            float abs = Math.abs(f2) / 288.0f;
            float interpolation2 = f20950C.getInterpolation(abs);
            float interpolation3 = f20952z.getInterpolation(abs);
            float interpolation4 = f20949B.getInterpolation(abs);
            float interpolation5 = f20952z.getInterpolation(abs);
            float f3 = -f2;
            this.f20964s = ((interpolation2 - interpolation3) + 1.0f) * f3;
            this.f20965t = f3 * 0.875f;
            this.f20966u = f3 * 0.625f * ((interpolation4 - interpolation5) + 1.0f);
        }
        if (f > 0.5f) {
            float interpolation6 = this.f20968w + (f20948A.getInterpolation((f - 0.5f) / 0.5f) * 288.0f);
            this.f20962q = interpolation6;
            float f4 = Math.abs(interpolation6 - this.f20963r) > 0.1f ? this.f20962q - this.f20963r : 0.1f;
            float abs2 = Math.abs(f4) / 288.0f;
            if (abs2 > 0.875f) {
                this.f20964s = -f4;
                this.f20965t = 252.0f;
                this.f20966u = 180.0f;
            } else if (abs2 > 0.625f) {
                this.f20964s = 0.1f;
                this.f20965t = -f4;
                this.f20966u = 180.0f;
            } else {
                this.f20964s = 0.1f;
                this.f20965t = 0.1f;
                this.f20966u = -f4;
            }
        }
        this.f20961p = (216.0f * f) + ((this.f20960o / 5.0f) * 1080.0f);
        this.f20967v = this.f20970y + (f * 90.0f);
    }

    @Override // p131c.p431l.p432a.p458g.AbstractC6811c
    /* renamed from: a */
    public void mo19714a(int i) {
        this.f20953h.setAlpha(i);
        m19704e();
    }

    /* renamed from: a */
    public void m19727a(int i, int i2) {
        float min = Math.min(i, i2);
        this.f20959n = (m19716a() <= 0.0f || min < 0.0f) ? (float) Math.ceil(m19706c() / 2.0f) : (min / 2.0f) - m19716a();
    }

    @Override // p131c.p431l.p432a.p458g.AbstractC6811c
    /* renamed from: a */
    public void mo19710a(Canvas canvas, Rect rect) {
        int save = canvas.save();
        canvas.rotate(this.f20961p, rect.exactCenterX(), rect.exactCenterY());
        RectF rectF = this.f20954i;
        rectF.set(rect);
        float f = this.f20959n;
        rectF.inset(f, f);
        this.f20953h.setColor(this.f20956k);
        canvas.drawArc(rectF, this.f20962q, this.f20964s, false, this.f20953h);
        this.f20953h.setColor(this.f20957l);
        canvas.drawArc(rectF, this.f20962q, this.f20965t, false, this.f20953h);
        this.f20953h.setColor(this.f20958m);
        canvas.drawArc(rectF, this.f20962q, this.f20966u, false, this.f20953h);
        canvas.restoreToCount(save);
    }

    @Override // p131c.p431l.p432a.p458g.AbstractC6811c
    /* renamed from: a */
    public void mo19709a(ColorFilter colorFilter) {
        this.f20953h.setColorFilter(colorFilter);
        m19704e();
    }

    /* renamed from: b */
    public final int m19724b(int i) {
        return (i & 255) | ((((i >> 24) & 255) / 3) << 24) | (((i >> 16) & 255) << 16) | (((i >> 8) & 255) << 8);
    }

    /* renamed from: c */
    public final int m19721c(int i) {
        return (i & 255) | (((((i >> 24) & 255) * 2) / 3) << 24) | (((i >> 16) & 255) << 16) | (((i >> 8) & 255) << 8);
    }

    @Override // p131c.p431l.p432a.p458g.AbstractC6811c
    /* renamed from: g */
    public void mo19702g() {
        m19719k();
    }

    /* renamed from: k */
    public final void m19719k() {
        this.f20968w = 0.0f;
        this.f20969x = 0.0f;
        this.f20970y = 0.0f;
        this.f20962q = 0.0f;
        this.f20963r = 0.0f;
        this.f20967v = 0.0f;
        this.f20964s = 0.1f;
        this.f20965t = 0.1f;
        this.f20966u = 0.1f;
    }

    /* renamed from: l */
    public final void m19718l() {
        this.f20956k = m19724b(f20951D);
        this.f20957l = m19721c(f20951D);
        this.f20958m = f20951D;
        this.f20953h.setAntiAlias(true);
        this.f20953h.setStrokeWidth(m19706c());
        this.f20953h.setStyle(Paint.Style.STROKE);
        this.f20953h.setStrokeCap(Paint.Cap.ROUND);
        m19727a((int) m19705d(), (int) m19707b());
    }

    /* renamed from: m */
    public final void m19717m() {
        this.f20968w = this.f20962q;
        this.f20969x = this.f20963r;
        this.f20970y = this.f20967v;
    }
}
