package p1727n3.p1786f0.p1787a;

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
import java.util.Objects;
import p1727n3.p1863t.p1864a.p1865a.C26981b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.f0.a.d */
/* loaded from: classes-dex2jar.jar:n3/f0/a/d.class */
public class C26171d extends Drawable implements Animatable {

    /* renamed from: g */
    public static final Interpolator f72952g = new LinearInterpolator();

    /* renamed from: h */
    public static final Interpolator f72953h = new C26981b();

    /* renamed from: i */
    public static final int[] f72954i = {-16777216};

    /* renamed from: a */
    public final C26172a f72955a;

    /* renamed from: b */
    public float f72956b;

    /* renamed from: c */
    public Resources f72957c;

    /* renamed from: d */
    public Animator f72958d;

    /* renamed from: e */
    public float f72959e;

    /* renamed from: f */
    public boolean f72960f;

    /* renamed from: n3.f0.a.d$a */
    /* loaded from: classes-dex2jar.jar:n3/f0/a/d$a.class */
    public static class C26172a {

        /* renamed from: b */
        public final Paint f72962b;

        /* renamed from: c */
        public final Paint f72963c;

        /* renamed from: d */
        public final Paint f72964d;

        /* renamed from: i */
        public int[] f72969i;

        /* renamed from: j */
        public int f72970j;

        /* renamed from: k */
        public float f72971k;

        /* renamed from: l */
        public float f72972l;

        /* renamed from: m */
        public float f72973m;

        /* renamed from: n */
        public boolean f72974n;

        /* renamed from: o */
        public Path f72975o;

        /* renamed from: q */
        public float f72977q;

        /* renamed from: r */
        public int f72978r;

        /* renamed from: s */
        public int f72979s;

        /* renamed from: u */
        public int f72981u;

        /* renamed from: a */
        public final RectF f72961a = new RectF();

        /* renamed from: e */
        public float f72965e = 0.0f;

        /* renamed from: f */
        public float f72966f = 0.0f;

        /* renamed from: g */
        public float f72967g = 0.0f;

        /* renamed from: h */
        public float f72968h = 5.0f;

        /* renamed from: p */
        public float f72976p = 1.0f;

        /* renamed from: t */
        public int f72980t = 255;

        public C26172a() {
            Paint paint = new Paint();
            this.f72962b = paint;
            Paint paint2 = new Paint();
            this.f72963c = paint2;
            Paint paint3 = new Paint();
            this.f72964d = paint3;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
            paint3.setColor(0);
        }

        /* renamed from: a */
        public void m2623a(int i) {
            this.f72970j = i;
            this.f72981u = this.f72969i[i];
        }

        /* renamed from: b */
        public void m2622b(boolean z) {
            if (this.f72974n != z) {
                this.f72974n = z;
            }
        }
    }

    public C26171d(Context context) {
        Objects.requireNonNull(context);
        this.f72957c = context.getResources();
        C26172a c26172a = new C26172a();
        this.f72955a = c26172a;
        c26172a.f72969i = f72954i;
        c26172a.m2623a(0);
        c26172a.f72968h = 2.5f;
        c26172a.f72962b.setStrokeWidth(2.5f);
        invalidateSelf();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new C26169b(this, c26172a));
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ofFloat.setInterpolator(f72952g);
        ofFloat.addListener(new C26170c(this, c26172a));
        this.f72958d = ofFloat;
    }

    /* renamed from: a */
    public void m2627a(float f, C26172a c26172a, boolean z) {
        float f2;
        float f3;
        if (this.f72960f) {
            m2624d(f, c26172a);
            float floor = (float) (Math.floor(c26172a.f72973m / 0.8f) + 1.0d);
            float f4 = c26172a.f72971k;
            float f5 = c26172a.f72972l;
            c26172a.f72965e = (((f5 - 0.01f) - f4) * f) + f4;
            c26172a.f72966f = f5;
            float f6 = c26172a.f72973m;
            c26172a.f72967g = C22128a.m8646a(floor, f6, f, f6);
        } else if (f == 1.0f && !z) {
        } else {
            float f7 = c26172a.f72973m;
            if (f < 0.5f) {
                f2 = c26172a.f72971k;
                f3 = (f72953h.getInterpolation(f / 0.5f) * 0.79f) + 0.01f + f2;
            } else {
                f3 = c26172a.f72971k + 0.79f;
                f2 = f3 - (((1.0f - f72953h.getInterpolation((f - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
            }
            float f8 = this.f72959e;
            c26172a.f72965e = f2;
            c26172a.f72966f = f3;
            c26172a.f72967g = (0.20999998f * f) + f7;
            this.f72956b = (f + f8) * 216.0f;
        }
    }

    /* renamed from: b */
    public final void m2626b(float f, float f2, float f3, float f4) {
        C26172a c26172a = this.f72955a;
        float f5 = this.f72957c.getDisplayMetrics().density;
        float f6 = f2 * f5;
        c26172a.f72968h = f6;
        c26172a.f72962b.setStrokeWidth(f6);
        c26172a.f72977q = f * f5;
        c26172a.m2623a(0);
        c26172a.f72978r = (int) (f3 * f5);
        c26172a.f72979s = (int) (f4 * f5);
    }

    /* renamed from: c */
    public void m2625c(int i) {
        if (i == 0) {
            m2626b(11.0f, 3.0f, 12.0f, 6.0f);
        } else {
            m2626b(7.5f, 2.5f, 10.0f, 5.0f);
        }
        invalidateSelf();
    }

    /* renamed from: d */
    public void m2624d(float f, C26172a c26172a) {
        if (f <= 0.75f) {
            c26172a.f72981u = c26172a.f72969i[c26172a.f72970j];
            return;
        }
        float f2 = (f - 0.75f) / 0.25f;
        int[] iArr = c26172a.f72969i;
        int i = c26172a.f72970j;
        int i2 = iArr[i];
        int i3 = iArr[(i + 1) % iArr.length];
        int i4 = (i2 >> 24) & 255;
        int i5 = (i2 >> 16) & 255;
        int i6 = (i2 >> 8) & 255;
        int i7 = i2 & 255;
        c26172a.f72981u = ((i4 + ((int) ((((i3 >> 24) & 255) - i4) * f2))) << 24) | ((i5 + ((int) ((((i3 >> 16) & 255) - i5) * f2))) << 16) | ((i6 + ((int) ((((i3 >> 8) & 255) - i6) * f2))) << 8) | (i7 + ((int) (f2 * ((i3 & 255) - i7))));
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.f72956b, bounds.exactCenterX(), bounds.exactCenterY());
        C26172a c26172a = this.f72955a;
        RectF rectF = c26172a.f72961a;
        float f = c26172a.f72977q;
        float f2 = (c26172a.f72968h / 2.0f) + f;
        if (f <= 0.0f) {
            f2 = (Math.min(bounds.width(), bounds.height()) / 2.0f) - Math.max((c26172a.f72978r * c26172a.f72976p) / 2.0f, c26172a.f72968h / 2.0f);
        }
        rectF.set(bounds.centerX() - f2, bounds.centerY() - f2, bounds.centerX() + f2, bounds.centerY() + f2);
        float f3 = c26172a.f72965e;
        float f4 = c26172a.f72967g;
        float f5 = (f3 + f4) * 360.0f;
        float f6 = ((c26172a.f72966f + f4) * 360.0f) - f5;
        c26172a.f72962b.setColor(c26172a.f72981u);
        c26172a.f72962b.setAlpha(c26172a.f72980t);
        float f7 = c26172a.f72968h / 2.0f;
        rectF.inset(f7, f7);
        canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, c26172a.f72964d);
        float f8 = -f7;
        rectF.inset(f8, f8);
        canvas.drawArc(rectF, f5, f6, false, c26172a.f72962b);
        if (c26172a.f72974n) {
            Path path = c26172a.f72975o;
            if (path == null) {
                Path path2 = new Path();
                c26172a.f72975o = path2;
                path2.setFillType(Path.FillType.EVEN_ODD);
            } else {
                path.reset();
            }
            float min = Math.min(rectF.width(), rectF.height()) / 2.0f;
            float f9 = (c26172a.f72978r * c26172a.f72976p) / 2.0f;
            c26172a.f72975o.moveTo(0.0f, 0.0f);
            c26172a.f72975o.lineTo(c26172a.f72978r * c26172a.f72976p, 0.0f);
            Path path3 = c26172a.f72975o;
            float f10 = c26172a.f72978r;
            float f11 = c26172a.f72976p;
            path3.lineTo((f10 * f11) / 2.0f, c26172a.f72979s * f11);
            c26172a.f72975o.offset((rectF.centerX() + min) - f9, (c26172a.f72968h / 2.0f) + rectF.centerY());
            c26172a.f72975o.close();
            c26172a.f72963c.setColor(c26172a.f72981u);
            c26172a.f72963c.setAlpha(c26172a.f72980t);
            canvas.save();
            canvas.rotate(f5 + f6, rectF.centerX(), rectF.centerY());
            canvas.drawPath(c26172a.f72975o, c26172a.f72963c);
            canvas.restore();
        }
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f72955a.f72980t;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f72958d.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f72955a.f72980t = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f72955a.f72962b.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f72958d.cancel();
        C26172a c26172a = this.f72955a;
        float f = c26172a.f72965e;
        c26172a.f72971k = f;
        float f2 = c26172a.f72966f;
        c26172a.f72972l = f2;
        c26172a.f72973m = c26172a.f72967g;
        if (f2 != f) {
            this.f72960f = true;
            this.f72958d.setDuration(666L);
            this.f72958d.start();
            return;
        }
        c26172a.m2623a(0);
        C26172a c26172a2 = this.f72955a;
        c26172a2.f72971k = 0.0f;
        c26172a2.f72972l = 0.0f;
        c26172a2.f72973m = 0.0f;
        c26172a2.f72965e = 0.0f;
        c26172a2.f72966f = 0.0f;
        c26172a2.f72967g = 0.0f;
        this.f72958d.setDuration(1332L);
        this.f72958d.start();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f72958d.cancel();
        this.f72956b = 0.0f;
        this.f72955a.m2622b(false);
        this.f72955a.m2623a(0);
        C26172a c26172a = this.f72955a;
        c26172a.f72971k = 0.0f;
        c26172a.f72972l = 0.0f;
        c26172a.f72973m = 0.0f;
        c26172a.f72965e = 0.0f;
        c26172a.f72966f = 0.0f;
        c26172a.f72967g = 0.0f;
        invalidateSelf();
    }
}
