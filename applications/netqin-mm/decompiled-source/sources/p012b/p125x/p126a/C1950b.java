package p012b.p125x.p126a;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import com.mopub.mobileads.resource.DrawableConstants;
import p012b.p042i.p053o.C0948h;
import p012b.p065n.p066a.p067a.C1098b;
/* renamed from: b.x.a.b */
/* loaded from: classes-dex2jar.jar:b/x/a/b.class */
public class C1950b extends Drawable implements Animatable {

    /* renamed from: g */
    public static final Interpolator f7657g = new LinearInterpolator();

    /* renamed from: h */
    public static final Interpolator f7658h = new C1098b();

    /* renamed from: i */
    public static final int[] f7659i = {DrawableConstants.CtaButton.BACKGROUND_COLOR};

    /* renamed from: a */
    public final C1953c f7660a;

    /* renamed from: b */
    public float f7661b;

    /* renamed from: c */
    public Resources f7662c;

    /* renamed from: d */
    public Animator f7663d;

    /* renamed from: e */
    public float f7664e;

    /* renamed from: f */
    public boolean f7665f;

    /* renamed from: b.x.a.b$a */
    /* loaded from: classes-dex2jar.jar:b/x/a/b$a.class */
    public class C1951a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public final /* synthetic */ C1953c f7666a;

        public C1951a(C1953c cVar) {
            this.f7666a = cVar;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            C1950b.this.m31491b(floatValue, this.f7666a);
            C1950b.this.m31496a(floatValue, this.f7666a, false);
            C1950b.this.invalidateSelf();
        }
    }

    /* renamed from: b.x.a.b$b */
    /* loaded from: classes-dex2jar.jar:b/x/a/b$b.class */
    public class C1952b implements Animator.AnimatorListener {

        /* renamed from: a */
        public final /* synthetic */ C1953c f7668a;

        public C1952b(C1953c cVar) {
            this.f7668a = cVar;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            C1950b.this.m31496a(1.0f, this.f7668a, true);
            this.f7668a.m31462l();
            this.f7668a.m31464j();
            C1950b bVar = C1950b.this;
            if (bVar.f7665f) {
                bVar.f7665f = false;
                animator.cancel();
                animator.setDuration(1332L);
                animator.start();
                this.f7668a.m31481a(false);
                return;
            }
            bVar.f7664e += 1.0f;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C1950b.this.f7664e = 0.0f;
        }
    }

    /* renamed from: b.x.a.b$c */
    /* loaded from: classes-dex2jar.jar:b/x/a/b$c.class */
    public static class C1953c {

        /* renamed from: i */
        public int[] f7678i;

        /* renamed from: j */
        public int f7679j;

        /* renamed from: k */
        public float f7680k;

        /* renamed from: l */
        public float f7681l;

        /* renamed from: m */
        public float f7682m;

        /* renamed from: n */
        public boolean f7683n;

        /* renamed from: o */
        public Path f7684o;

        /* renamed from: q */
        public float f7686q;

        /* renamed from: r */
        public int f7687r;

        /* renamed from: s */
        public int f7688s;

        /* renamed from: u */
        public int f7690u;

        /* renamed from: a */
        public final RectF f7670a = new RectF();

        /* renamed from: b */
        public final Paint f7671b = new Paint();

        /* renamed from: c */
        public final Paint f7672c = new Paint();

        /* renamed from: d */
        public final Paint f7673d = new Paint();

        /* renamed from: e */
        public float f7674e = 0.0f;

        /* renamed from: f */
        public float f7675f = 0.0f;

        /* renamed from: g */
        public float f7676g = 0.0f;

        /* renamed from: h */
        public float f7677h = 5.0f;

        /* renamed from: p */
        public float f7685p = 1.0f;

        /* renamed from: t */
        public int f7689t = 255;

        public C1953c() {
            this.f7671b.setStrokeCap(Paint.Cap.SQUARE);
            this.f7671b.setAntiAlias(true);
            this.f7671b.setStyle(Paint.Style.STROKE);
            this.f7672c.setStyle(Paint.Style.FILL);
            this.f7672c.setAntiAlias(true);
            this.f7673d.setColor(0);
        }

        /* renamed from: a */
        public int m31488a() {
            return this.f7689t;
        }

        /* renamed from: a */
        public void m31487a(float f) {
            if (f != this.f7685p) {
                this.f7685p = f;
            }
        }

        /* renamed from: a */
        public void m31486a(float f, float f2) {
            this.f7687r = (int) f;
            this.f7688s = (int) f2;
        }

        /* renamed from: a */
        public void m31485a(int i) {
            this.f7689t = i;
        }

        /* renamed from: a */
        public void m31484a(Canvas canvas, float f, float f2, RectF rectF) {
            if (this.f7683n) {
                Path path = this.f7684o;
                if (path == null) {
                    Path path2 = new Path();
                    this.f7684o = path2;
                    path2.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    path.reset();
                }
                float min = Math.min(rectF.width(), rectF.height()) / 2.0f;
                float f3 = (this.f7687r * this.f7685p) / 2.0f;
                this.f7684o.moveTo(0.0f, 0.0f);
                this.f7684o.lineTo(this.f7687r * this.f7685p, 0.0f);
                Path path3 = this.f7684o;
                float f4 = this.f7687r;
                float f5 = this.f7685p;
                path3.lineTo((f4 * f5) / 2.0f, this.f7688s * f5);
                this.f7684o.offset((min + rectF.centerX()) - f3, rectF.centerY() + (this.f7677h / 2.0f));
                this.f7684o.close();
                this.f7672c.setColor(this.f7690u);
                this.f7672c.setAlpha(this.f7689t);
                canvas.save();
                canvas.rotate(f + f2, rectF.centerX(), rectF.centerY());
                canvas.drawPath(this.f7684o, this.f7672c);
                canvas.restore();
            }
        }

        /* renamed from: a */
        public void m31483a(Canvas canvas, Rect rect) {
            RectF rectF = this.f7670a;
            float f = this.f7686q;
            float f2 = (this.f7677h / 2.0f) + f;
            if (f <= 0.0f) {
                f2 = (Math.min(rect.width(), rect.height()) / 2.0f) - Math.max((this.f7687r * this.f7685p) / 2.0f, this.f7677h / 2.0f);
            }
            rectF.set(rect.centerX() - f2, rect.centerY() - f2, rect.centerX() + f2, rect.centerY() + f2);
            float f3 = this.f7674e;
            float f4 = this.f7676g;
            float f5 = (f3 + f4) * 360.0f;
            float f6 = ((this.f7675f + f4) * 360.0f) - f5;
            this.f7671b.setColor(this.f7690u);
            this.f7671b.setAlpha(this.f7689t);
            float f7 = this.f7677h / 2.0f;
            rectF.inset(f7, f7);
            canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, this.f7673d);
            float f8 = -f7;
            rectF.inset(f8, f8);
            canvas.drawArc(rectF, f5, f6, false, this.f7671b);
            m31484a(canvas, f5, f6, rectF);
        }

        /* renamed from: a */
        public void m31482a(ColorFilter colorFilter) {
            this.f7671b.setColorFilter(colorFilter);
        }

        /* renamed from: a */
        public void m31481a(boolean z) {
            if (this.f7683n != z) {
                this.f7683n = z;
            }
        }

        /* renamed from: a */
        public void m31480a(int[] iArr) {
            this.f7678i = iArr;
            m31474c(0);
        }

        /* renamed from: b */
        public float m31479b() {
            return this.f7675f;
        }

        /* renamed from: b */
        public void m31478b(float f) {
            this.f7686q = f;
        }

        /* renamed from: b */
        public void m31477b(int i) {
            this.f7690u = i;
        }

        /* renamed from: c */
        public int m31476c() {
            return this.f7678i[m31473d()];
        }

        /* renamed from: c */
        public void m31475c(float f) {
            this.f7675f = f;
        }

        /* renamed from: c */
        public void m31474c(int i) {
            this.f7679j = i;
            this.f7690u = this.f7678i[i];
        }

        /* renamed from: d */
        public int m31473d() {
            return (this.f7679j + 1) % this.f7678i.length;
        }

        /* renamed from: d */
        public void m31472d(float f) {
            this.f7676g = f;
        }

        /* renamed from: e */
        public float m31471e() {
            return this.f7674e;
        }

        /* renamed from: e */
        public void m31470e(float f) {
            this.f7674e = f;
        }

        /* renamed from: f */
        public int m31469f() {
            return this.f7678i[this.f7679j];
        }

        /* renamed from: f */
        public void m31468f(float f) {
            this.f7677h = f;
            this.f7671b.setStrokeWidth(f);
        }

        /* renamed from: g */
        public float m31467g() {
            return this.f7681l;
        }

        /* renamed from: h */
        public float m31466h() {
            return this.f7682m;
        }

        /* renamed from: i */
        public float m31465i() {
            return this.f7680k;
        }

        /* renamed from: j */
        public void m31464j() {
            m31474c(m31473d());
        }

        /* renamed from: k */
        public void m31463k() {
            this.f7680k = 0.0f;
            this.f7681l = 0.0f;
            this.f7682m = 0.0f;
            m31470e(0.0f);
            m31475c(0.0f);
            m31472d(0.0f);
        }

        /* renamed from: l */
        public void m31462l() {
            this.f7680k = this.f7674e;
            this.f7681l = this.f7675f;
            this.f7682m = this.f7676g;
        }
    }

    public C1950b(Context context) {
        C0948h.m35442a(context);
        this.f7662c = context.getResources();
        C1953c cVar = new C1953c();
        this.f7660a = cVar;
        cVar.m31480a(f7659i);
        m31489d(2.5f);
        m31502a();
    }

    /* renamed from: a */
    public final int m31498a(float f, int i, int i2) {
        int i3 = (i >> 24) & 255;
        int i4 = (i >> 16) & 255;
        int i5 = (i >> 8) & 255;
        int i6 = i & 255;
        return ((i3 + ((int) ((((i2 >> 24) & 255) - i3) * f))) << 24) | ((i4 + ((int) ((((i2 >> 16) & 255) - i4) * f))) << 16) | ((i5 + ((int) ((((i2 >> 8) & 255) - i5) * f))) << 8) | (i6 + ((int) (f * ((i2 & 255) - i6))));
    }

    /* renamed from: a */
    public final void m31502a() {
        C1953c cVar = this.f7660a;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new C1951a(cVar));
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ofFloat.setInterpolator(f7657g);
        ofFloat.addListener(new C1952b(cVar));
        this.f7663d = ofFloat;
    }

    /* renamed from: a */
    public void m31501a(float f) {
        this.f7660a.m31487a(f);
        invalidateSelf();
    }

    /* renamed from: a */
    public void m31500a(float f, float f2) {
        this.f7660a.m31470e(f);
        this.f7660a.m31475c(f2);
        invalidateSelf();
    }

    /* renamed from: a */
    public final void m31499a(float f, float f2, float f3, float f4) {
        C1953c cVar = this.f7660a;
        float f5 = this.f7662c.getDisplayMetrics().density;
        cVar.m31468f(f2 * f5);
        cVar.m31478b(f * f5);
        cVar.m31474c(0);
        cVar.m31486a(f3 * f5, f4 * f5);
    }

    /* renamed from: a */
    public final void m31497a(float f, C1953c cVar) {
        m31491b(f, cVar);
        cVar.m31470e(cVar.m31465i() + (((cVar.m31467g() - 0.01f) - cVar.m31465i()) * f));
        cVar.m31475c(cVar.m31467g());
        cVar.m31472d(cVar.m31466h() + ((((float) (Math.floor(cVar.m31466h() / 0.8f) + 1.0d)) - cVar.m31466h()) * f));
    }

    /* renamed from: a */
    public void m31496a(float f, C1953c cVar, boolean z) {
        float f2;
        float f3;
        if (this.f7665f) {
            m31497a(f, cVar);
        } else if (f != 1.0f || z) {
            float h = cVar.m31466h();
            if (f < 0.5f) {
                f2 = cVar.m31465i();
                f3 = (f7658h.getInterpolation(f / 0.5f) * 0.79f) + 0.01f + f2;
            } else {
                f3 = cVar.m31465i() + 0.79f;
                f2 = f3 - (((1.0f - f7658h.getInterpolation((f - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
            }
            float f4 = this.f7664e;
            cVar.m31470e(f2);
            cVar.m31475c(f3);
            cVar.m31472d(h + (0.20999998f * f));
            m31490c((f + f4) * 216.0f);
        }
    }

    /* renamed from: a */
    public void m31495a(int i) {
        if (i == 0) {
            m31499a(11.0f, 3.0f, 12.0f, 6.0f);
        } else {
            m31499a(7.5f, 2.5f, 10.0f, 5.0f);
        }
        invalidateSelf();
    }

    /* renamed from: a */
    public void m31494a(boolean z) {
        this.f7660a.m31481a(z);
        invalidateSelf();
    }

    /* renamed from: a */
    public void m31493a(int... iArr) {
        this.f7660a.m31480a(iArr);
        this.f7660a.m31474c(0);
        invalidateSelf();
    }

    /* renamed from: b */
    public void m31492b(float f) {
        this.f7660a.m31472d(f);
        invalidateSelf();
    }

    /* renamed from: b */
    public void m31491b(float f, C1953c cVar) {
        if (f > 0.75f) {
            cVar.m31477b(m31498a((f - 0.75f) / 0.25f, cVar.m31469f(), cVar.m31476c()));
        } else {
            cVar.m31477b(cVar.m31469f());
        }
    }

    /* renamed from: c */
    public final void m31490c(float f) {
        this.f7661b = f;
    }

    /* renamed from: d */
    public void m31489d(float f) {
        this.f7660a.m31468f(f);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.f7661b, bounds.exactCenterX(), bounds.exactCenterY());
        this.f7660a.m31483a(canvas, bounds);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f7660a.m31488a();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f7663d.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f7660a.m31485a(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f7660a.m31482a(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f7663d.cancel();
        this.f7660a.m31462l();
        if (this.f7660a.m31479b() != this.f7660a.m31471e()) {
            this.f7665f = true;
            this.f7663d.setDuration(666L);
            this.f7663d.start();
            return;
        }
        this.f7660a.m31474c(0);
        this.f7660a.m31463k();
        this.f7663d.setDuration(1332L);
        this.f7663d.start();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f7663d.cancel();
        m31490c(0.0f);
        this.f7660a.m31481a(false);
        this.f7660a.m31474c(0);
        this.f7660a.m31463k();
        invalidateSelf();
    }
}
