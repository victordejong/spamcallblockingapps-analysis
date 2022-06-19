package androidx.swiperefreshlayout.widget;

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
import androidx.core.p025g.C0527f;
import androidx.p032e.p033a.p034a.C0649b;
/* renamed from: androidx.swiperefreshlayout.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/b.class */
public class C1076b extends Drawable implements Animatable {

    /* renamed from: c */
    private static final Interpolator f3663c = new LinearInterpolator();

    /* renamed from: d */
    private static final Interpolator f3664d = new C0649b();

    /* renamed from: e */
    private static final int[] f3665e = {-16777216};

    /* renamed from: a */
    float f3666a;

    /* renamed from: b */
    boolean f3667b;

    /* renamed from: f */
    private final C1079a f3668f = new C1079a();

    /* renamed from: g */
    private float f3669g;

    /* renamed from: h */
    private Resources f3670h;

    /* renamed from: i */
    private Animator f3671i;

    /* renamed from: androidx.swiperefreshlayout.widget.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/b$a.class */
    public static class C1079a {

        /* renamed from: i */
        int[] f3684i;

        /* renamed from: j */
        int f3685j;

        /* renamed from: k */
        float f3686k;

        /* renamed from: l */
        float f3687l;

        /* renamed from: m */
        float f3688m;

        /* renamed from: n */
        boolean f3689n;

        /* renamed from: o */
        Path f3690o;

        /* renamed from: q */
        float f3692q;

        /* renamed from: r */
        int f3693r;

        /* renamed from: s */
        int f3694s;

        /* renamed from: u */
        int f3696u;

        /* renamed from: a */
        final RectF f3676a = new RectF();

        /* renamed from: b */
        final Paint f3677b = new Paint();

        /* renamed from: c */
        final Paint f3678c = new Paint();

        /* renamed from: d */
        final Paint f3679d = new Paint();

        /* renamed from: e */
        float f3680e = 0.0f;

        /* renamed from: f */
        float f3681f = 0.0f;

        /* renamed from: g */
        float f3682g = 0.0f;

        /* renamed from: h */
        float f3683h = 5.0f;

        /* renamed from: p */
        float f3691p = 1.0f;

        /* renamed from: t */
        int f3695t = 255;

        C1079a() {
            this.f3677b.setStrokeCap(Paint.Cap.SQUARE);
            this.f3677b.setAntiAlias(true);
            this.f3677b.setStyle(Paint.Style.STROKE);
            this.f3678c.setStyle(Paint.Style.FILL);
            this.f3678c.setAntiAlias(true);
            this.f3679d.setColor(0);
        }

        /* renamed from: a */
        int m18187a() {
            return this.f3684i[m18178b()];
        }

        /* renamed from: a */
        void m18186a(float f) {
            this.f3683h = f;
            this.f3677b.setStrokeWidth(f);
        }

        /* renamed from: a */
        void m18185a(float f, float f2) {
            this.f3693r = (int) f;
            this.f3694s = (int) f2;
        }

        /* renamed from: a */
        void m18184a(int i) {
            this.f3696u = i;
        }

        /* renamed from: a */
        void m18183a(Canvas canvas, float f, float f2, RectF rectF) {
            if (this.f3689n) {
                if (this.f3690o == null) {
                    this.f3690o = new Path();
                    this.f3690o.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    this.f3690o.reset();
                }
                float min = Math.min(rectF.width(), rectF.height()) / 2.0f;
                float f3 = (this.f3693r * this.f3691p) / 2.0f;
                this.f3690o.moveTo(0.0f, 0.0f);
                this.f3690o.lineTo(this.f3693r * this.f3691p, 0.0f);
                this.f3690o.lineTo((this.f3693r * this.f3691p) / 2.0f, this.f3694s * this.f3691p);
                this.f3690o.offset((min + rectF.centerX()) - f3, rectF.centerY() + (this.f3683h / 2.0f));
                this.f3690o.close();
                this.f3678c.setColor(this.f3696u);
                this.f3678c.setAlpha(this.f3695t);
                canvas.save();
                canvas.rotate(f + f2, rectF.centerX(), rectF.centerY());
                canvas.drawPath(this.f3690o, this.f3678c);
                canvas.restore();
            }
        }

        /* renamed from: a */
        void m18182a(Canvas canvas, Rect rect) {
            RectF rectF = this.f3676a;
            float f = this.f3692q + (this.f3683h / 2.0f);
            if (this.f3692q <= 0.0f) {
                f = (Math.min(rect.width(), rect.height()) / 2.0f) - Math.max((this.f3693r * this.f3691p) / 2.0f, this.f3683h / 2.0f);
            }
            rectF.set(rect.centerX() - f, rect.centerY() - f, rect.centerX() + f, f + rect.centerY());
            float f2 = (this.f3680e + this.f3682g) * 360.0f;
            float f3 = ((this.f3681f + this.f3682g) * 360.0f) - f2;
            this.f3677b.setColor(this.f3696u);
            this.f3677b.setAlpha(this.f3695t);
            float f4 = this.f3683h / 2.0f;
            rectF.inset(f4, f4);
            canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, this.f3679d);
            rectF.inset(-f4, -f4);
            canvas.drawArc(rectF, f2, f3, false, this.f3677b);
            m18183a(canvas, f2, f3, rectF);
        }

        /* renamed from: a */
        void m18181a(ColorFilter colorFilter) {
            this.f3677b.setColorFilter(colorFilter);
        }

        /* renamed from: a */
        void m18180a(boolean z) {
            if (this.f3689n != z) {
                this.f3689n = z;
            }
        }

        /* renamed from: a */
        void m18179a(int[] iArr) {
            this.f3684i = iArr;
            m18176b(0);
        }

        /* renamed from: b */
        int m18178b() {
            return (this.f3685j + 1) % this.f3684i.length;
        }

        /* renamed from: b */
        void m18177b(float f) {
            this.f3680e = f;
        }

        /* renamed from: b */
        void m18176b(int i) {
            this.f3685j = i;
            this.f3696u = this.f3684i[this.f3685j];
        }

        /* renamed from: c */
        void m18175c() {
            m18176b(m18178b());
        }

        /* renamed from: c */
        void m18174c(float f) {
            this.f3681f = f;
        }

        /* renamed from: c */
        void m18173c(int i) {
            this.f3695t = i;
        }

        /* renamed from: d */
        int m18172d() {
            return this.f3695t;
        }

        /* renamed from: d */
        void m18171d(float f) {
            this.f3682g = f;
        }

        /* renamed from: e */
        float m18170e() {
            return this.f3680e;
        }

        /* renamed from: e */
        void m18169e(float f) {
            this.f3692q = f;
        }

        /* renamed from: f */
        float m18168f() {
            return this.f3686k;
        }

        /* renamed from: f */
        void m18167f(float f) {
            if (f != this.f3691p) {
                this.f3691p = f;
            }
        }

        /* renamed from: g */
        float m18166g() {
            return this.f3687l;
        }

        /* renamed from: h */
        int m18165h() {
            return this.f3684i[this.f3685j];
        }

        /* renamed from: i */
        float m18164i() {
            return this.f3681f;
        }

        /* renamed from: j */
        float m18163j() {
            return this.f3688m;
        }

        /* renamed from: k */
        void m18162k() {
            this.f3686k = this.f3680e;
            this.f3687l = this.f3681f;
            this.f3688m = this.f3682g;
        }

        /* renamed from: l */
        void m18161l() {
            this.f3686k = 0.0f;
            this.f3687l = 0.0f;
            this.f3688m = 0.0f;
            m18177b(0.0f);
            m18174c(0.0f);
            m18171d(0.0f);
        }
    }

    public C1076b(Context context) {
        this.f3670h = ((Context) C0527f.m20644a(context)).getResources();
        this.f3668f.m18179a(f3665e);
        m18200a(2.5f);
        m18201a();
    }

    /* renamed from: a */
    private int m18197a(float f, int i, int i2) {
        int i3 = (i >> 24) & 255;
        int i4 = (i >> 16) & 255;
        int i5 = (i >> 8) & 255;
        int i6 = i & 255;
        return ((i3 + ((int) ((((i2 >> 24) & 255) - i3) * f))) << 24) | ((i4 + ((int) ((((i2 >> 16) & 255) - i4) * f))) << 16) | ((((int) ((((i2 >> 8) & 255) - i5) * f)) + i5) << 8) | (((int) (((i2 & 255) - i6) * f)) + i6);
    }

    /* renamed from: a */
    private void m18201a() {
        final C1079a c1079a = this.f3668f;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.swiperefreshlayout.widget.b.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                C1076b.this.m18196a(floatValue, c1079a);
                C1076b.this.m18195a(floatValue, c1079a, false);
                C1076b.this.invalidateSelf();
            }
        });
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ofFloat.setInterpolator(f3663c);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: androidx.swiperefreshlayout.widget.b.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                C1076b.this.m18195a(1.0f, c1079a, true);
                c1079a.m18162k();
                c1079a.m18175c();
                if (!C1076b.this.f3667b) {
                    C1076b.this.f3666a += 1.0f;
                    return;
                }
                C1076b.this.f3667b = false;
                animator.cancel();
                animator.setDuration(1332L);
                animator.start();
                c1079a.m18180a(false);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                C1076b.this.f3666a = 0.0f;
            }
        });
        this.f3671i = ofFloat;
    }

    /* renamed from: a */
    private void m18198a(float f, float f2, float f3, float f4) {
        C1079a c1079a = this.f3668f;
        float f5 = this.f3670h.getDisplayMetrics().density;
        c1079a.m18186a(f2 * f5);
        c1079a.m18169e(f * f5);
        c1079a.m18176b(0);
        c1079a.m18185a(f3 * f5, f5 * f4);
    }

    /* renamed from: b */
    private void m18190b(float f, C1079a c1079a) {
        m18196a(f, c1079a);
        float floor = (float) (Math.floor(c1079a.m18163j() / 0.8f) + 1.0d);
        c1079a.m18177b(c1079a.m18168f() + (((c1079a.m18166g() - 0.01f) - c1079a.m18168f()) * f));
        c1079a.m18174c(c1079a.m18166g());
        c1079a.m18171d(((floor - c1079a.m18163j()) * f) + c1079a.m18163j());
    }

    /* renamed from: d */
    private void m18188d(float f) {
        this.f3669g = f;
    }

    /* renamed from: a */
    public void m18200a(float f) {
        this.f3668f.m18186a(f);
        invalidateSelf();
    }

    /* renamed from: a */
    public void m18199a(float f, float f2) {
        this.f3668f.m18177b(f);
        this.f3668f.m18174c(f2);
        invalidateSelf();
    }

    /* renamed from: a */
    void m18196a(float f, C1079a c1079a) {
        if (f > 0.75f) {
            c1079a.m18184a(m18197a((f - 0.75f) / 0.25f, c1079a.m18165h(), c1079a.m18187a()));
        } else {
            c1079a.m18184a(c1079a.m18165h());
        }
    }

    /* renamed from: a */
    void m18195a(float f, C1079a c1079a, boolean z) {
        float m18168f;
        float interpolation;
        if (this.f3667b) {
            m18190b(f, c1079a);
        } else if (f == 1.0f && !z) {
        } else {
            float m18163j = c1079a.m18163j();
            if (f < 0.5f) {
                interpolation = c1079a.m18168f();
                m18168f = (f3664d.getInterpolation(f / 0.5f) * 0.79f) + 0.01f + interpolation;
            } else {
                m18168f = c1079a.m18168f() + 0.79f;
                interpolation = m18168f - (((1.0f - f3664d.getInterpolation((f - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
            }
            float f2 = this.f3666a;
            c1079a.m18177b(interpolation);
            c1079a.m18174c(m18168f);
            c1079a.m18171d(m18163j + (0.20999998f * f));
            m18188d(216.0f * (f2 + f));
        }
    }

    /* renamed from: a */
    public void m18194a(int i) {
        if (i == 0) {
            m18198a(11.0f, 3.0f, 12.0f, 6.0f);
        } else {
            m18198a(7.5f, 2.5f, 10.0f, 5.0f);
        }
        invalidateSelf();
    }

    /* renamed from: a */
    public void m18193a(boolean z) {
        this.f3668f.m18180a(z);
        invalidateSelf();
    }

    /* renamed from: a */
    public void m18192a(int... iArr) {
        this.f3668f.m18179a(iArr);
        this.f3668f.m18176b(0);
        invalidateSelf();
    }

    /* renamed from: b */
    public void m18191b(float f) {
        this.f3668f.m18167f(f);
        invalidateSelf();
    }

    /* renamed from: c */
    public void m18189c(float f) {
        this.f3668f.m18171d(f);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.f3669g, bounds.exactCenterX(), bounds.exactCenterY());
        this.f3668f.m18182a(canvas, bounds);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f3668f.m18172d();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f3671i.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f3668f.m18173c(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f3668f.m18181a(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f3671i.cancel();
        this.f3668f.m18162k();
        if (this.f3668f.m18164i() != this.f3668f.m18170e()) {
            this.f3667b = true;
            this.f3671i.setDuration(666L);
            this.f3671i.start();
            return;
        }
        this.f3668f.m18176b(0);
        this.f3668f.m18161l();
        this.f3671i.setDuration(1332L);
        this.f3671i.start();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f3671i.cancel();
        m18188d(0.0f);
        this.f3668f.m18180a(false);
        this.f3668f.m18176b(0);
        this.f3668f.m18161l();
        invalidateSelf();
    }
}
