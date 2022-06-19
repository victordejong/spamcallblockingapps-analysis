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
import p020b.p041h.p049k.C1597h;
import p020b.p062n.p063a.p064a.C1754b;
/* renamed from: androidx.swiperefreshlayout.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/b.class */
public class C1069b extends Drawable implements Animatable {

    /* renamed from: d */
    private static final Interpolator f4672d = new LinearInterpolator();

    /* renamed from: e */
    private static final Interpolator f4673e = new C1754b();

    /* renamed from: f */
    private static final int[] f4674f = {-16777216};

    /* renamed from: g */
    private final C1072c f4675g;

    /* renamed from: h */
    private float f4676h;

    /* renamed from: i */
    private Resources f4677i;

    /* renamed from: j */
    private Animator f4678j;

    /* renamed from: k */
    float f4679k;

    /* renamed from: l */
    boolean f4680l;

    /* renamed from: androidx.swiperefreshlayout.widget.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/b$a.class */
    public class C1070a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        final /* synthetic */ C1072c f4681a;

        C1070a(C1072c c1072c) {
            C1069b.this = r4;
            this.f4681a = c1072c;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            C1069b.this.m31111n(floatValue, this.f4681a);
            C1069b.this.m31123b(floatValue, this.f4681a, false);
            C1069b.this.invalidateSelf();
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/b$b.class */
    public class C1071b implements Animator.AnimatorListener {

        /* renamed from: a */
        final /* synthetic */ C1072c f4683a;

        C1071b(C1072c c1072c) {
            C1069b.this = r4;
            this.f4683a = c1072c;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            C1069b.this.m31123b(1.0f, this.f4683a, true);
            this.f4683a.m31110A();
            this.f4683a.m31098l();
            C1069b c1069b = C1069b.this;
            if (!c1069b.f4680l) {
                c1069b.f4679k += 1.0f;
                return;
            }
            c1069b.f4680l = false;
            animator.cancel();
            animator.setDuration(1332L);
            animator.start();
            this.f4683a.m31086x(false);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C1069b.this.f4679k = 0.0f;
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/b$c.class */
    public static class C1072c {

        /* renamed from: b */
        final Paint f4686b;

        /* renamed from: c */
        final Paint f4687c;

        /* renamed from: d */
        final Paint f4688d;

        /* renamed from: i */
        int[] f4693i;

        /* renamed from: j */
        int f4694j;

        /* renamed from: k */
        float f4695k;

        /* renamed from: l */
        float f4696l;

        /* renamed from: m */
        float f4697m;

        /* renamed from: n */
        boolean f4698n;

        /* renamed from: o */
        Path f4699o;

        /* renamed from: q */
        float f4701q;

        /* renamed from: r */
        int f4702r;

        /* renamed from: s */
        int f4703s;

        /* renamed from: u */
        int f4705u;

        /* renamed from: a */
        final RectF f4685a = new RectF();

        /* renamed from: e */
        float f4689e = 0.0f;

        /* renamed from: f */
        float f4690f = 0.0f;

        /* renamed from: g */
        float f4691g = 0.0f;

        /* renamed from: h */
        float f4692h = 5.0f;

        /* renamed from: p */
        float f4700p = 1.0f;

        /* renamed from: t */
        int f4704t = 255;

        C1072c() {
            Paint paint = new Paint();
            this.f4686b = paint;
            Paint paint2 = new Paint();
            this.f4687c = paint2;
            Paint paint3 = new Paint();
            this.f4688d = paint3;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
            paint3.setColor(0);
        }

        /* renamed from: A */
        void m31110A() {
            this.f4695k = this.f4689e;
            this.f4696l = this.f4690f;
            this.f4697m = this.f4691g;
        }

        /* renamed from: a */
        void m31109a(Canvas canvas, Rect rect) {
            RectF rectF = this.f4685a;
            float f = this.f4701q;
            float f2 = (this.f4692h / 2.0f) + f;
            if (f <= 0.0f) {
                f2 = (Math.min(rect.width(), rect.height()) / 2.0f) - Math.max((this.f4702r * this.f4700p) / 2.0f, this.f4692h / 2.0f);
            }
            rectF.set(rect.centerX() - f2, rect.centerY() - f2, rect.centerX() + f2, rect.centerY() + f2);
            float f3 = this.f4689e;
            float f4 = this.f4691g;
            float f5 = (f3 + f4) * 360.0f;
            float f6 = ((this.f4690f + f4) * 360.0f) - f5;
            this.f4686b.setColor(this.f4705u);
            this.f4686b.setAlpha(this.f4704t);
            float f7 = this.f4692h / 2.0f;
            rectF.inset(f7, f7);
            canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, this.f4688d);
            float f8 = -f7;
            rectF.inset(f8, f8);
            canvas.drawArc(rectF, f5, f6, false, this.f4686b);
            m31108b(canvas, f5, f6, rectF);
        }

        /* renamed from: b */
        void m31108b(Canvas canvas, float f, float f2, RectF rectF) {
            if (this.f4698n) {
                Path path = this.f4699o;
                if (path == null) {
                    Path path2 = new Path();
                    this.f4699o = path2;
                    path2.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    path.reset();
                }
                float min = Math.min(rectF.width(), rectF.height()) / 2.0f;
                float f3 = (this.f4702r * this.f4700p) / 2.0f;
                this.f4699o.moveTo(0.0f, 0.0f);
                this.f4699o.lineTo(this.f4702r * this.f4700p, 0.0f);
                Path path3 = this.f4699o;
                float f4 = this.f4702r;
                float f5 = this.f4700p;
                path3.lineTo((f4 * f5) / 2.0f, this.f4703s * f5);
                this.f4699o.offset((min + rectF.centerX()) - f3, rectF.centerY() + (this.f4692h / 2.0f));
                this.f4699o.close();
                this.f4687c.setColor(this.f4705u);
                this.f4687c.setAlpha(this.f4704t);
                canvas.save();
                canvas.rotate(f + f2, rectF.centerX(), rectF.centerY());
                canvas.drawPath(this.f4699o, this.f4687c);
                canvas.restore();
            }
        }

        /* renamed from: c */
        int m31107c() {
            return this.f4704t;
        }

        /* renamed from: d */
        float m31106d() {
            return this.f4690f;
        }

        /* renamed from: e */
        int m31105e() {
            return this.f4693i[m31104f()];
        }

        /* renamed from: f */
        int m31104f() {
            return (this.f4694j + 1) % this.f4693i.length;
        }

        /* renamed from: g */
        float m31103g() {
            return this.f4689e;
        }

        /* renamed from: h */
        int m31102h() {
            return this.f4693i[this.f4694j];
        }

        /* renamed from: i */
        float m31101i() {
            return this.f4696l;
        }

        /* renamed from: j */
        float m31100j() {
            return this.f4697m;
        }

        /* renamed from: k */
        float m31099k() {
            return this.f4695k;
        }

        /* renamed from: l */
        void m31098l() {
            m31090t(m31104f());
        }

        /* renamed from: m */
        void m31097m() {
            this.f4695k = 0.0f;
            this.f4696l = 0.0f;
            this.f4697m = 0.0f;
            m31085y(0.0f);
            m31088v(0.0f);
            m31087w(0.0f);
        }

        /* renamed from: n */
        void m31096n(int i) {
            this.f4704t = i;
        }

        /* renamed from: o */
        void m31095o(float f, float f2) {
            this.f4702r = (int) f;
            this.f4703s = (int) f2;
        }

        /* renamed from: p */
        void m31094p(float f) {
            if (f != this.f4700p) {
                this.f4700p = f;
            }
        }

        /* renamed from: q */
        void m31093q(float f) {
            this.f4701q = f;
        }

        /* renamed from: r */
        void m31092r(int i) {
            this.f4705u = i;
        }

        /* renamed from: s */
        void m31091s(ColorFilter colorFilter) {
            this.f4686b.setColorFilter(colorFilter);
        }

        /* renamed from: t */
        void m31090t(int i) {
            this.f4694j = i;
            this.f4705u = this.f4693i[i];
        }

        /* renamed from: u */
        void m31089u(int[] iArr) {
            this.f4693i = iArr;
            m31090t(0);
        }

        /* renamed from: v */
        void m31088v(float f) {
            this.f4690f = f;
        }

        /* renamed from: w */
        void m31087w(float f) {
            this.f4691g = f;
        }

        /* renamed from: x */
        void m31086x(boolean z) {
            if (this.f4698n != z) {
                this.f4698n = z;
            }
        }

        /* renamed from: y */
        void m31085y(float f) {
            this.f4689e = f;
        }

        /* renamed from: z */
        void m31084z(float f) {
            this.f4692h = f;
            this.f4686b.setStrokeWidth(f);
        }
    }

    public C1069b(Context context) {
        this.f4677i = ((Context) C1597h.m29659e(context)).getResources();
        C1072c c1072c = new C1072c();
        this.f4675g = c1072c;
        c1072c.m31089u(f4674f);
        m31114k(2.5f);
        m31112m();
    }

    /* renamed from: a */
    private void m31124a(float f, C1072c c1072c) {
        m31111n(f, c1072c);
        c1072c.m31085y(c1072c.m31099k() + (((c1072c.m31101i() - 0.01f) - c1072c.m31099k()) * f));
        c1072c.m31088v(c1072c.m31101i());
        c1072c.m31087w(c1072c.m31100j() + ((((float) (Math.floor(c1072c.m31100j() / 0.8f) + 1.0d)) - c1072c.m31100j()) * f));
    }

    /* renamed from: c */
    private int m31122c(float f, int i, int i2) {
        int i3 = (i >> 24) & 255;
        int i4 = (i >> 16) & 255;
        int i5 = (i >> 8) & 255;
        int i6 = i & 255;
        return ((i3 + ((int) ((((i2 >> 24) & 255) - i3) * f))) << 24) | ((i4 + ((int) ((((i2 >> 16) & 255) - i4) * f))) << 16) | ((i5 + ((int) ((((i2 >> 8) & 255) - i5) * f))) << 8) | (i6 + ((int) (f * ((i2 & 255) - i6))));
    }

    /* renamed from: h */
    private void m31117h(float f) {
        this.f4676h = f;
    }

    /* renamed from: i */
    private void m31116i(float f, float f2, float f3, float f4) {
        C1072c c1072c = this.f4675g;
        float f5 = this.f4677i.getDisplayMetrics().density;
        c1072c.m31084z(f2 * f5);
        c1072c.m31093q(f * f5);
        c1072c.m31090t(0);
        c1072c.m31095o(f3 * f5, f4 * f5);
    }

    /* renamed from: m */
    private void m31112m() {
        C1072c c1072c = this.f4675g;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new C1070a(c1072c));
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ofFloat.setInterpolator(f4672d);
        ofFloat.addListener(new C1071b(c1072c));
        this.f4678j = ofFloat;
    }

    /* renamed from: b */
    void m31123b(float f, C1072c c1072c, boolean z) {
        float f2;
        float f3;
        if (this.f4680l) {
            m31124a(f, c1072c);
        } else if (f == 1.0f && !z) {
        } else {
            float m31100j = c1072c.m31100j();
            if (f < 0.5f) {
                f2 = c1072c.m31099k();
                f3 = (f4673e.getInterpolation(f / 0.5f) * 0.79f) + 0.01f + f2;
            } else {
                f3 = c1072c.m31099k() + 0.79f;
                f2 = f3 - (((1.0f - f4673e.getInterpolation((f - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
            }
            float f4 = this.f4679k;
            c1072c.m31085y(f2);
            c1072c.m31088v(f3);
            c1072c.m31087w(m31100j + (0.20999998f * f));
            m31117h((f + f4) * 216.0f);
        }
    }

    /* renamed from: d */
    public void m31121d(boolean z) {
        this.f4675g.m31086x(z);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.f4676h, bounds.exactCenterX(), bounds.exactCenterY());
        this.f4675g.m31109a(canvas, bounds);
        canvas.restore();
    }

    /* renamed from: e */
    public void m31120e(float f) {
        this.f4675g.m31094p(f);
        invalidateSelf();
    }

    /* renamed from: f */
    public void m31119f(int... iArr) {
        this.f4675g.m31089u(iArr);
        this.f4675g.m31090t(0);
        invalidateSelf();
    }

    /* renamed from: g */
    public void m31118g(float f) {
        this.f4675g.m31087w(f);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f4675g.m31107c();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f4678j.isRunning();
    }

    /* renamed from: j */
    public void m31115j(float f, float f2) {
        this.f4675g.m31085y(f);
        this.f4675g.m31088v(f2);
        invalidateSelf();
    }

    /* renamed from: k */
    public void m31114k(float f) {
        this.f4675g.m31084z(f);
        invalidateSelf();
    }

    /* renamed from: l */
    public void m31113l(int i) {
        if (i == 0) {
            m31116i(11.0f, 3.0f, 12.0f, 6.0f);
        } else {
            m31116i(7.5f, 2.5f, 10.0f, 5.0f);
        }
        invalidateSelf();
    }

    /* renamed from: n */
    void m31111n(float f, C1072c c1072c) {
        if (f > 0.75f) {
            c1072c.m31092r(m31122c((f - 0.75f) / 0.25f, c1072c.m31102h(), c1072c.m31105e()));
        } else {
            c1072c.m31092r(c1072c.m31102h());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f4675g.m31096n(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f4675g.m31091s(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f4678j.cancel();
        this.f4675g.m31110A();
        if (this.f4675g.m31106d() != this.f4675g.m31103g()) {
            this.f4680l = true;
            this.f4678j.setDuration(666L);
            this.f4678j.start();
            return;
        }
        this.f4675g.m31090t(0);
        this.f4675g.m31097m();
        this.f4678j.setDuration(1332L);
        this.f4678j.start();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f4678j.cancel();
        m31117h(0.0f);
        this.f4675g.m31086x(false);
        this.f4675g.m31090t(0);
        this.f4675g.m31097m();
        invalidateSelf();
    }
}
