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
import d.h.l.h;
import d.n.a.a.b;
/* renamed from: androidx.swiperefreshlayout.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/b.class */
public class C0476b extends Drawable implements Animatable {

    /* renamed from: h */
    private static final Interpolator f2588h = new LinearInterpolator();

    /* renamed from: i */
    private static final Interpolator f2589i = new b();

    /* renamed from: j */
    private static final int[] f2590j = {-16777216};

    /* renamed from: b */
    private final C0479c f2591b;

    /* renamed from: c */
    private float f2592c;

    /* renamed from: d */
    private Resources f2593d;

    /* renamed from: e */
    private Animator f2594e;

    /* renamed from: f */
    float f2595f;

    /* renamed from: g */
    boolean f2596g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.swiperefreshlayout.widget.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/b$a.class */
    public class C0477a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        final /* synthetic */ C0479c f2597a;

        C0477a(C0479c cVar) {
            this.f2597a = cVar;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            C0476b.this.m12177n(floatValue, this.f2597a);
            C0476b.this.m12189b(floatValue, this.f2597a, false);
            C0476b.this.invalidateSelf();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.swiperefreshlayout.widget.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/b$b.class */
    public class C0478b implements Animator.AnimatorListener {

        /* renamed from: a */
        final /* synthetic */ C0479c f2599a;

        C0478b(C0479c cVar) {
            this.f2599a = cVar;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            C0476b.this.m12189b(1.0f, this.f2599a, true);
            this.f2599a.m12176A();
            this.f2599a.m12164l();
            C0476b bVar = C0476b.this;
            if (bVar.f2596g) {
                bVar.f2596g = false;
                animator.cancel();
                animator.setDuration(1332L);
                animator.start();
                this.f2599a.m12152x(false);
                return;
            }
            bVar.f2595f += 1.0f;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C0476b.this.f2595f = 0.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.swiperefreshlayout.widget.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/b$c.class */
    public static class C0479c {

        /* renamed from: b */
        final Paint f2602b;

        /* renamed from: c */
        final Paint f2603c;

        /* renamed from: d */
        final Paint f2604d;

        /* renamed from: i */
        int[] f2609i;

        /* renamed from: j */
        int f2610j;

        /* renamed from: k */
        float f2611k;

        /* renamed from: l */
        float f2612l;

        /* renamed from: m */
        float f2613m;

        /* renamed from: n */
        boolean f2614n;

        /* renamed from: o */
        Path f2615o;

        /* renamed from: q */
        float f2617q;

        /* renamed from: r */
        int f2618r;

        /* renamed from: s */
        int f2619s;

        /* renamed from: u */
        int f2621u;

        /* renamed from: a */
        final RectF f2601a = new RectF();

        /* renamed from: e */
        float f2605e = 0.0f;

        /* renamed from: f */
        float f2606f = 0.0f;

        /* renamed from: g */
        float f2607g = 0.0f;

        /* renamed from: h */
        float f2608h = 5.0f;

        /* renamed from: p */
        float f2616p = 1.0f;

        /* renamed from: t */
        int f2620t = 255;

        C0479c() {
            Paint paint = new Paint();
            this.f2602b = paint;
            Paint paint2 = new Paint();
            this.f2603c = paint2;
            Paint paint3 = new Paint();
            this.f2604d = paint3;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
            paint3.setColor(0);
        }

        /* renamed from: A */
        void m12176A() {
            this.f2611k = this.f2605e;
            this.f2612l = this.f2606f;
            this.f2613m = this.f2607g;
        }

        /* renamed from: a */
        void m12175a(Canvas canvas, Rect rect) {
            RectF rectF = this.f2601a;
            float f = this.f2617q;
            float f2 = (this.f2608h / 2.0f) + f;
            if (f <= 0.0f) {
                f2 = (Math.min(rect.width(), rect.height()) / 2.0f) - Math.max((this.f2618r * this.f2616p) / 2.0f, this.f2608h / 2.0f);
            }
            rectF.set(rect.centerX() - f2, rect.centerY() - f2, rect.centerX() + f2, rect.centerY() + f2);
            float f3 = this.f2605e;
            float f4 = this.f2607g;
            float f5 = (f3 + f4) * 360.0f;
            float f6 = ((this.f2606f + f4) * 360.0f) - f5;
            this.f2602b.setColor(this.f2621u);
            this.f2602b.setAlpha(this.f2620t);
            float f7 = this.f2608h / 2.0f;
            rectF.inset(f7, f7);
            canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, this.f2604d);
            float f8 = -f7;
            rectF.inset(f8, f8);
            canvas.drawArc(rectF, f5, f6, false, this.f2602b);
            m12174b(canvas, f5, f6, rectF);
        }

        /* renamed from: b */
        void m12174b(Canvas canvas, float f, float f2, RectF rectF) {
            if (this.f2614n) {
                Path path = this.f2615o;
                if (path == null) {
                    Path path2 = new Path();
                    this.f2615o = path2;
                    path2.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    path.reset();
                }
                float min = Math.min(rectF.width(), rectF.height()) / 2.0f;
                float f3 = (this.f2618r * this.f2616p) / 2.0f;
                this.f2615o.moveTo(0.0f, 0.0f);
                this.f2615o.lineTo(this.f2618r * this.f2616p, 0.0f);
                Path path3 = this.f2615o;
                float f4 = this.f2618r;
                float f5 = this.f2616p;
                path3.lineTo((f4 * f5) / 2.0f, this.f2619s * f5);
                this.f2615o.offset((min + rectF.centerX()) - f3, rectF.centerY() + (this.f2608h / 2.0f));
                this.f2615o.close();
                this.f2603c.setColor(this.f2621u);
                this.f2603c.setAlpha(this.f2620t);
                canvas.save();
                canvas.rotate(f + f2, rectF.centerX(), rectF.centerY());
                canvas.drawPath(this.f2615o, this.f2603c);
                canvas.restore();
            }
        }

        /* renamed from: c */
        int m12173c() {
            return this.f2620t;
        }

        /* renamed from: d */
        float m12172d() {
            return this.f2606f;
        }

        /* renamed from: e */
        int m12171e() {
            return this.f2609i[m12170f()];
        }

        /* renamed from: f */
        int m12170f() {
            return (this.f2610j + 1) % this.f2609i.length;
        }

        /* renamed from: g */
        float m12169g() {
            return this.f2605e;
        }

        /* renamed from: h */
        int m12168h() {
            return this.f2609i[this.f2610j];
        }

        /* renamed from: i */
        float m12167i() {
            return this.f2612l;
        }

        /* renamed from: j */
        float m12166j() {
            return this.f2613m;
        }

        /* renamed from: k */
        float m12165k() {
            return this.f2611k;
        }

        /* renamed from: l */
        void m12164l() {
            m12156t(m12170f());
        }

        /* renamed from: m */
        void m12163m() {
            this.f2611k = 0.0f;
            this.f2612l = 0.0f;
            this.f2613m = 0.0f;
            m12151y(0.0f);
            m12154v(0.0f);
            m12153w(0.0f);
        }

        /* renamed from: n */
        void m12162n(int i) {
            this.f2620t = i;
        }

        /* renamed from: o */
        void m12161o(float f, float f2) {
            this.f2618r = (int) f;
            this.f2619s = (int) f2;
        }

        /* renamed from: p */
        void m12160p(float f) {
            if (f != this.f2616p) {
                this.f2616p = f;
            }
        }

        /* renamed from: q */
        void m12159q(float f) {
            this.f2617q = f;
        }

        /* renamed from: r */
        void m12158r(int i) {
            this.f2621u = i;
        }

        /* renamed from: s */
        void m12157s(ColorFilter colorFilter) {
            this.f2602b.setColorFilter(colorFilter);
        }

        /* renamed from: t */
        void m12156t(int i) {
            this.f2610j = i;
            this.f2621u = this.f2609i[i];
        }

        /* renamed from: u */
        void m12155u(int[] iArr) {
            this.f2609i = iArr;
            m12156t(0);
        }

        /* renamed from: v */
        void m12154v(float f) {
            this.f2606f = f;
        }

        /* renamed from: w */
        void m12153w(float f) {
            this.f2607g = f;
        }

        /* renamed from: x */
        void m12152x(boolean z) {
            if (this.f2614n != z) {
                this.f2614n = z;
            }
        }

        /* renamed from: y */
        void m12151y(float f) {
            this.f2605e = f;
        }

        /* renamed from: z */
        void m12150z(float f) {
            this.f2608h = f;
            this.f2602b.setStrokeWidth(f);
        }
    }

    public C0476b(Context context) {
        h.c(context);
        this.f2593d = context.getResources();
        C0479c cVar = new C0479c();
        this.f2591b = cVar;
        cVar.m12155u(f2590j);
        m12180k(2.5f);
        m12178m();
    }

    /* renamed from: a */
    private void m12190a(float f, C0479c cVar) {
        m12177n(f, cVar);
        cVar.m12151y(cVar.m12165k() + (((cVar.m12167i() - 0.01f) - cVar.m12165k()) * f));
        cVar.m12154v(cVar.m12167i());
        cVar.m12153w(cVar.m12166j() + ((((float) (Math.floor(cVar.m12166j() / 0.8f) + 1.0d)) - cVar.m12166j()) * f));
    }

    /* renamed from: c */
    private int m12188c(float f, int i, int i2) {
        int i3 = (i >> 24) & 255;
        int i4 = (i >> 16) & 255;
        int i5 = (i >> 8) & 255;
        int i6 = i & 255;
        return ((i3 + ((int) ((((i2 >> 24) & 255) - i3) * f))) << 24) | ((i4 + ((int) ((((i2 >> 16) & 255) - i4) * f))) << 16) | ((i5 + ((int) ((((i2 >> 8) & 255) - i5) * f))) << 8) | (i6 + ((int) (f * ((i2 & 255) - i6))));
    }

    /* renamed from: h */
    private void m12183h(float f) {
        this.f2592c = f;
    }

    /* renamed from: i */
    private void m12182i(float f, float f2, float f3, float f4) {
        C0479c cVar = this.f2591b;
        float f5 = this.f2593d.getDisplayMetrics().density;
        cVar.m12150z(f2 * f5);
        cVar.m12159q(f * f5);
        cVar.m12156t(0);
        cVar.m12161o(f3 * f5, f4 * f5);
    }

    /* renamed from: m */
    private void m12178m() {
        C0479c cVar = this.f2591b;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new C0477a(cVar));
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ofFloat.setInterpolator(f2588h);
        ofFloat.addListener(new C0478b(cVar));
        this.f2594e = ofFloat;
    }

    /* renamed from: b */
    void m12189b(float f, C0479c cVar, boolean z) {
        float f2;
        float f3;
        if (this.f2596g) {
            m12190a(f, cVar);
        } else if (f != 1.0f || z) {
            float j = cVar.m12166j();
            if (f < 0.5f) {
                f2 = cVar.m12165k();
                f3 = (f2589i.getInterpolation(f / 0.5f) * 0.79f) + 0.01f + f2;
            } else {
                f3 = cVar.m12165k() + 0.79f;
                f2 = f3 - (((1.0f - f2589i.getInterpolation((f - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
            }
            float f4 = this.f2595f;
            cVar.m12151y(f2);
            cVar.m12154v(f3);
            cVar.m12153w(j + (0.20999998f * f));
            m12183h((f + f4) * 216.0f);
        }
    }

    /* renamed from: d */
    public void m12187d(boolean z) {
        this.f2591b.m12152x(z);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.f2592c, bounds.exactCenterX(), bounds.exactCenterY());
        this.f2591b.m12175a(canvas, bounds);
        canvas.restore();
    }

    /* renamed from: e */
    public void m12186e(float f) {
        this.f2591b.m12160p(f);
        invalidateSelf();
    }

    /* renamed from: f */
    public void m12185f(int... iArr) {
        this.f2591b.m12155u(iArr);
        this.f2591b.m12156t(0);
        invalidateSelf();
    }

    /* renamed from: g */
    public void m12184g(float f) {
        this.f2591b.m12153w(f);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f2591b.m12173c();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f2594e.isRunning();
    }

    /* renamed from: j */
    public void m12181j(float f, float f2) {
        this.f2591b.m12151y(f);
        this.f2591b.m12154v(f2);
        invalidateSelf();
    }

    /* renamed from: k */
    public void m12180k(float f) {
        this.f2591b.m12150z(f);
        invalidateSelf();
    }

    /* renamed from: l */
    public void m12179l(int i) {
        float f;
        float f2;
        float f3;
        float f4;
        if (i == 0) {
            f4 = 11.0f;
            f3 = 3.0f;
            f2 = 12.0f;
            f = 6.0f;
        } else {
            f4 = 7.5f;
            f3 = 2.5f;
            f2 = 10.0f;
            f = 5.0f;
        }
        m12182i(f4, f3, f2, f);
        invalidateSelf();
    }

    /* renamed from: n */
    void m12177n(float f, C0479c cVar) {
        cVar.m12158r(f > 0.75f ? m12188c((f - 0.75f) / 0.25f, cVar.m12168h(), cVar.m12171e()) : cVar.m12168h());
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f2591b.m12162n(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f2591b.m12157s(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        long j;
        Animator animator;
        this.f2594e.cancel();
        this.f2591b.m12176A();
        if (this.f2591b.m12172d() != this.f2591b.m12169g()) {
            this.f2596g = true;
            animator = this.f2594e;
            j = 666;
        } else {
            this.f2591b.m12156t(0);
            this.f2591b.m12163m();
            animator = this.f2594e;
            j = 1332;
        }
        animator.setDuration(j);
        this.f2594e.start();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f2594e.cancel();
        m12183h(0.0f);
        this.f2591b.m12152x(false);
        this.f2591b.m12156t(0);
        this.f2591b.m12163m();
        invalidateSelf();
    }
}
