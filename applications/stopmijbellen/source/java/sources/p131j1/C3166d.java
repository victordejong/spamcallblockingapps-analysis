package p131j1;

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
import androidx.recyclerview.widget.C0608b;
import java.util.Objects;
import p301z0.AbstractanimationInterpolatorC5022d;
import p301z0.C5020b;
/* renamed from: j1.d */
/* loaded from: classes-dex2jar.jar:j1/d.class */
public class C3166d extends Drawable implements Animatable {

    /* renamed from: g */
    public static final Interpolator f10640g = new LinearInterpolator();

    /* renamed from: h */
    public static final Interpolator f10641h = new C5020b();

    /* renamed from: i */
    public static final int[] f10642i = {-16777216};

    /* renamed from: a */
    public final C3167a f10643a;

    /* renamed from: b */
    public float f10644b;

    /* renamed from: c */
    public Resources f10645c;

    /* renamed from: d */
    public Animator f10646d;

    /* renamed from: e */
    public float f10647e;

    /* renamed from: f */
    public boolean f10648f;

    /* renamed from: j1.d$a */
    /* loaded from: classes-dex2jar.jar:j1/d$a.class */
    public static class C3167a {

        /* renamed from: b */
        public final Paint f10650b;

        /* renamed from: c */
        public final Paint f10651c;

        /* renamed from: d */
        public final Paint f10652d;

        /* renamed from: i */
        public int[] f10657i;

        /* renamed from: j */
        public int f10658j;

        /* renamed from: k */
        public float f10659k;

        /* renamed from: l */
        public float f10660l;

        /* renamed from: m */
        public float f10661m;

        /* renamed from: n */
        public boolean f10662n;

        /* renamed from: o */
        public Path f10663o;

        /* renamed from: q */
        public float f10665q;

        /* renamed from: r */
        public int f10666r;

        /* renamed from: s */
        public int f10667s;

        /* renamed from: u */
        public int f10669u;

        /* renamed from: a */
        public final RectF f10649a = new RectF();

        /* renamed from: e */
        public float f10653e = 0.0f;

        /* renamed from: f */
        public float f10654f = 0.0f;

        /* renamed from: g */
        public float f10655g = 0.0f;

        /* renamed from: h */
        public float f10656h = 5.0f;

        /* renamed from: p */
        public float f10664p = 1.0f;

        /* renamed from: t */
        public int f10668t = 255;

        public C3167a() {
            Paint paint = new Paint();
            this.f10650b = paint;
            Paint paint2 = new Paint();
            this.f10651c = paint2;
            Paint paint3 = new Paint();
            this.f10652d = paint3;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
            paint3.setColor(0);
        }

        /* renamed from: a */
        public void m2580a(int i) {
            this.f10658j = i;
            this.f10669u = this.f10657i[i];
        }

        /* renamed from: b */
        public void m2579b(boolean z) {
            if (this.f10662n != z) {
                this.f10662n = z;
            }
        }
    }

    public C3166d(Context context) {
        Objects.requireNonNull(context);
        this.f10645c = context.getResources();
        C3167a c3167a = new C3167a();
        this.f10643a = c3167a;
        c3167a.f10657i = f10642i;
        c3167a.m2580a(0);
        c3167a.f10656h = 2.5f;
        c3167a.f10650b.setStrokeWidth(2.5f);
        invalidateSelf();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new C3164b(this, c3167a));
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ofFloat.setInterpolator(f10640g);
        ofFloat.addListener(new C3165c(this, c3167a));
        this.f10646d = ofFloat;
    }

    /* renamed from: a */
    public void m2584a(float f, C3167a c3167a, boolean z) {
        float f2;
        float f3;
        if (this.f10648f) {
            m2581d(f, c3167a);
            float floor = (float) (Math.floor(c3167a.f10661m / 0.8f) + 1.0d);
            float f4 = c3167a.f10659k;
            float f5 = c3167a.f10660l;
            c3167a.f10653e = (((f5 - 0.01f) - f4) * f) + f4;
            c3167a.f10654f = f5;
            float f6 = c3167a.f10661m;
            c3167a.f10655g = C0608b.m7621n(floor, f6, f, f6);
        } else if (f == 1.0f && !z) {
        } else {
            float f7 = c3167a.f10661m;
            if (f < 0.5f) {
                f2 = c3167a.f10659k;
                f3 = (((AbstractanimationInterpolatorC5022d) f10641h).getInterpolation(f / 0.5f) * 0.79f) + 0.01f + f2;
            } else {
                f3 = c3167a.f10659k + 0.79f;
                f2 = f3 - (((1.0f - ((AbstractanimationInterpolatorC5022d) f10641h).getInterpolation((f - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
            }
            float f8 = this.f10647e;
            c3167a.f10653e = f2;
            c3167a.f10654f = f3;
            c3167a.f10655g = (0.20999998f * f) + f7;
            this.f10644b = (f + f8) * 216.0f;
        }
    }

    /* renamed from: b */
    public final void m2583b(float f, float f2, float f3, float f4) {
        C3167a c3167a = this.f10643a;
        float f5 = this.f10645c.getDisplayMetrics().density;
        float f6 = f2 * f5;
        c3167a.f10656h = f6;
        c3167a.f10650b.setStrokeWidth(f6);
        c3167a.f10665q = f * f5;
        c3167a.m2580a(0);
        c3167a.f10666r = (int) (f3 * f5);
        c3167a.f10667s = (int) (f4 * f5);
    }

    /* renamed from: c */
    public void m2582c(int i) {
        if (i == 0) {
            m2583b(11.0f, 3.0f, 12.0f, 6.0f);
        } else {
            m2583b(7.5f, 2.5f, 10.0f, 5.0f);
        }
        invalidateSelf();
    }

    /* renamed from: d */
    public void m2581d(float f, C3167a c3167a) {
        if (f <= 0.75f) {
            c3167a.f10669u = c3167a.f10657i[c3167a.f10658j];
            return;
        }
        float f2 = (f - 0.75f) / 0.25f;
        int[] iArr = c3167a.f10657i;
        int i = c3167a.f10658j;
        int i2 = iArr[i];
        int i3 = iArr[(i + 1) % iArr.length];
        int i4 = (i2 >> 24) & 255;
        int i5 = (i2 >> 16) & 255;
        int i6 = (i2 >> 8) & 255;
        int i7 = i2 & 255;
        c3167a.f10669u = ((i4 + ((int) ((((i3 >> 24) & 255) - i4) * f2))) << 24) | ((i5 + ((int) ((((i3 >> 16) & 255) - i5) * f2))) << 16) | ((i6 + ((int) ((((i3 >> 8) & 255) - i6) * f2))) << 8) | (i7 + ((int) (f2 * ((i3 & 255) - i7))));
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.f10644b, bounds.exactCenterX(), bounds.exactCenterY());
        C3167a c3167a = this.f10643a;
        RectF rectF = c3167a.f10649a;
        float f = c3167a.f10665q;
        float f2 = (c3167a.f10656h / 2.0f) + f;
        if (f <= 0.0f) {
            f2 = (Math.min(bounds.width(), bounds.height()) / 2.0f) - Math.max((c3167a.f10666r * c3167a.f10664p) / 2.0f, c3167a.f10656h / 2.0f);
        }
        rectF.set(bounds.centerX() - f2, bounds.centerY() - f2, bounds.centerX() + f2, bounds.centerY() + f2);
        float f3 = c3167a.f10653e;
        float f4 = c3167a.f10655g;
        float f5 = (f3 + f4) * 360.0f;
        float f6 = ((c3167a.f10654f + f4) * 360.0f) - f5;
        c3167a.f10650b.setColor(c3167a.f10669u);
        c3167a.f10650b.setAlpha(c3167a.f10668t);
        float f7 = c3167a.f10656h / 2.0f;
        rectF.inset(f7, f7);
        canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, c3167a.f10652d);
        float f8 = -f7;
        rectF.inset(f8, f8);
        canvas.drawArc(rectF, f5, f6, false, c3167a.f10650b);
        if (c3167a.f10662n) {
            Path path = c3167a.f10663o;
            if (path == null) {
                Path path2 = new Path();
                c3167a.f10663o = path2;
                path2.setFillType(Path.FillType.EVEN_ODD);
            } else {
                path.reset();
            }
            float min = Math.min(rectF.width(), rectF.height()) / 2.0f;
            float f9 = (c3167a.f10666r * c3167a.f10664p) / 2.0f;
            c3167a.f10663o.moveTo(0.0f, 0.0f);
            c3167a.f10663o.lineTo(c3167a.f10666r * c3167a.f10664p, 0.0f);
            Path path3 = c3167a.f10663o;
            float f10 = c3167a.f10666r;
            float f11 = c3167a.f10664p;
            path3.lineTo((f10 * f11) / 2.0f, c3167a.f10667s * f11);
            c3167a.f10663o.offset((rectF.centerX() + min) - f9, (c3167a.f10656h / 2.0f) + rectF.centerY());
            c3167a.f10663o.close();
            c3167a.f10651c.setColor(c3167a.f10669u);
            c3167a.f10651c.setAlpha(c3167a.f10668t);
            canvas.save();
            canvas.rotate(f5 + f6, rectF.centerX(), rectF.centerY());
            canvas.drawPath(c3167a.f10663o, c3167a.f10651c);
            canvas.restore();
        }
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f10643a.f10668t;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f10646d.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f10643a.f10668t = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f10643a.f10650b.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f10646d.cancel();
        C3167a c3167a = this.f10643a;
        float f = c3167a.f10653e;
        c3167a.f10659k = f;
        float f2 = c3167a.f10654f;
        c3167a.f10660l = f2;
        c3167a.f10661m = c3167a.f10655g;
        if (f2 != f) {
            this.f10648f = true;
            this.f10646d.setDuration(666L);
            this.f10646d.start();
            return;
        }
        c3167a.m2580a(0);
        C3167a c3167a2 = this.f10643a;
        c3167a2.f10659k = 0.0f;
        c3167a2.f10660l = 0.0f;
        c3167a2.f10661m = 0.0f;
        c3167a2.f10653e = 0.0f;
        c3167a2.f10654f = 0.0f;
        c3167a2.f10655g = 0.0f;
        this.f10646d.setDuration(1332L);
        this.f10646d.start();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f10646d.cancel();
        this.f10644b = 0.0f;
        this.f10643a.m2579b(false);
        this.f10643a.m2580a(0);
        C3167a c3167a = this.f10643a;
        c3167a.f10659k = 0.0f;
        c3167a.f10660l = 0.0f;
        c3167a.f10661m = 0.0f;
        c3167a.f10653e = 0.0f;
        c3167a.f10654f = 0.0f;
        c3167a.f10655g = 0.0f;
        invalidateSelf();
    }
}
