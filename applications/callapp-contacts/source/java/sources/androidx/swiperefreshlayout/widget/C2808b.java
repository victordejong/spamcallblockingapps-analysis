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
import androidx.core.p036e.C0833d;
import androidx.p046g.p047a.p048a.C1157b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: androidx.swiperefreshlayout.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/b.class */
public final class C2808b extends Drawable implements Animatable {

    /* renamed from: d */
    private static final Interpolator f10610d = new LinearInterpolator();

    /* renamed from: e */
    private static final Interpolator f10611e = new C1157b();

    /* renamed from: f */
    private static final int[] f10612f = {-16777216};

    /* renamed from: a */
    final C2811a f10613a;

    /* renamed from: b */
    float f10614b;

    /* renamed from: c */
    boolean f10615c;

    /* renamed from: g */
    private float f10616g;

    /* renamed from: h */
    private Resources f10617h;

    /* renamed from: i */
    private Animator f10618i;

    /* renamed from: androidx.swiperefreshlayout.widget.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/b$a.class */
    public static final class C2811a {

        /* renamed from: b */
        final Paint f10624b;

        /* renamed from: c */
        final Paint f10625c;

        /* renamed from: d */
        final Paint f10626d;

        /* renamed from: i */
        int[] f10631i;

        /* renamed from: j */
        int f10632j;

        /* renamed from: k */
        float f10633k;

        /* renamed from: l */
        float f10634l;

        /* renamed from: m */
        float f10635m;

        /* renamed from: n */
        boolean f10636n;

        /* renamed from: o */
        Path f10637o;

        /* renamed from: q */
        float f10639q;

        /* renamed from: r */
        int f10640r;

        /* renamed from: s */
        int f10641s;

        /* renamed from: u */
        int f10643u;

        /* renamed from: a */
        final RectF f10623a = new RectF();

        /* renamed from: e */
        float f10627e = BitmapDescriptorFactory.HUE_RED;

        /* renamed from: f */
        float f10628f = BitmapDescriptorFactory.HUE_RED;

        /* renamed from: g */
        float f10629g = BitmapDescriptorFactory.HUE_RED;

        /* renamed from: h */
        float f10630h = 5.0f;

        /* renamed from: p */
        float f10638p = 1.0f;

        /* renamed from: t */
        int f10642t = 255;

        C2811a() {
            Paint paint = new Paint();
            this.f10624b = paint;
            Paint paint2 = new Paint();
            this.f10625c = paint2;
            Paint paint3 = new Paint();
            this.f10626d = paint3;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
            paint3.setColor(0);
        }

        /* renamed from: a */
        final int m39848a() {
            return (this.f10632j + 1) % this.f10631i.length;
        }

        /* renamed from: a */
        final void m39847a(float f) {
            this.f10630h = f;
            this.f10624b.setStrokeWidth(f);
        }

        /* renamed from: a */
        public final void m39846a(int i) {
            this.f10632j = i;
            this.f10643u = this.f10631i[i];
        }

        /* renamed from: a */
        final void m39845a(boolean z) {
            if (this.f10636n != z) {
                this.f10636n = z;
            }
        }

        /* renamed from: a */
        public final void m39844a(int[] iArr) {
            this.f10631i = iArr;
            m39846a(0);
        }

        /* renamed from: b */
        final int m39843b() {
            return this.f10631i[this.f10632j];
        }

        /* renamed from: c */
        final void m39842c() {
            this.f10633k = this.f10627e;
            this.f10634l = this.f10628f;
            this.f10635m = this.f10629g;
        }

        /* renamed from: d */
        final void m39841d() {
            this.f10633k = BitmapDescriptorFactory.HUE_RED;
            this.f10634l = BitmapDescriptorFactory.HUE_RED;
            this.f10635m = BitmapDescriptorFactory.HUE_RED;
            this.f10627e = BitmapDescriptorFactory.HUE_RED;
            this.f10628f = BitmapDescriptorFactory.HUE_RED;
            this.f10629g = BitmapDescriptorFactory.HUE_RED;
        }
    }

    public C2808b(Context context) {
        this.f10617h = ((Context) C0833d.m44410a(context)).getResources();
        final C2811a c2811a = new C2811a();
        this.f10613a = c2811a;
        c2811a.m39844a(f10612f);
        m39857a(2.5f);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.swiperefreshlayout.widget.b.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                C2808b.m39855a(floatValue, c2811a);
                C2808b.this.m39854a(floatValue, c2811a, false);
                C2808b.this.invalidateSelf();
            }
        });
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ofFloat.setInterpolator(f10610d);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: androidx.swiperefreshlayout.widget.b.2
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationRepeat(Animator animator) {
                C2808b.this.m39854a(1.0f, c2811a, true);
                c2811a.m39842c();
                C2811a c2811a2 = c2811a;
                c2811a2.m39846a(c2811a2.m39848a());
                if (!C2808b.this.f10615c) {
                    C2808b.this.f10614b += 1.0f;
                    return;
                }
                C2808b.this.f10615c = false;
                animator.cancel();
                animator.setDuration(1332L);
                animator.start();
                c2811a.m39845a(false);
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                C2808b.this.f10614b = BitmapDescriptorFactory.HUE_RED;
            }
        });
        this.f10618i = ofFloat;
    }

    /* renamed from: a */
    private void m39856a(float f, float f2, float f3, float f4) {
        C2811a c2811a = this.f10613a;
        float f5 = this.f10617h.getDisplayMetrics().density;
        c2811a.m39847a(f2 * f5);
        c2811a.f10639q = f * f5;
        c2811a.m39846a(0);
        c2811a.f10640r = (int) (f3 * f5);
        c2811a.f10641s = (int) (f4 * f5);
    }

    /* renamed from: a */
    static void m39855a(float f, C2811a c2811a) {
        if (f <= 0.75f) {
            c2811a.f10643u = c2811a.m39843b();
            return;
        }
        float f2 = (f - 0.75f) / 0.25f;
        int m39843b = c2811a.m39843b();
        int i = c2811a.f10631i[c2811a.m39848a()];
        int i2 = (m39843b >> 24) & 255;
        int i3 = (m39843b >> 16) & 255;
        int i4 = (m39843b >> 8) & 255;
        int i5 = m39843b & 255;
        c2811a.f10643u = ((i2 + ((int) ((((i >> 24) & 255) - i2) * f2))) << 24) | ((i3 + ((int) ((((i >> 16) & 255) - i3) * f2))) << 16) | ((i4 + ((int) ((((i >> 8) & 255) - i4) * f2))) << 8) | (i5 + ((int) (f2 * ((i & 255) - i5))));
    }

    /* renamed from: a */
    public final void m39858a() {
        this.f10613a.f10639q = 40.0f;
        invalidateSelf();
    }

    /* renamed from: a */
    public final void m39857a(float f) {
        this.f10613a.m39847a(f);
        invalidateSelf();
    }

    /* renamed from: a */
    final void m39854a(float f, C2811a c2811a, boolean z) {
        float f2;
        float f3;
        if (this.f10615c) {
            m39855a(f, c2811a);
            c2811a.f10627e = c2811a.f10633k + (((c2811a.f10634l - 0.01f) - c2811a.f10633k) * f);
            c2811a.f10628f = c2811a.f10634l;
            c2811a.f10629g = c2811a.f10635m + ((((float) (Math.floor(c2811a.f10635m / 0.8f) + 1.0d)) - c2811a.f10635m) * f);
        } else if (f == 1.0f && !z) {
        } else {
            float f4 = c2811a.f10635m;
            if (f < 0.5f) {
                f3 = c2811a.f10633k;
                f2 = (f10611e.getInterpolation(f / 0.5f) * 0.79f) + 0.01f + f3;
            } else {
                f2 = c2811a.f10633k + 0.79f;
                f3 = f2 - (((1.0f - f10611e.getInterpolation((f - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
            }
            float f5 = this.f10614b;
            c2811a.f10627e = f3;
            c2811a.f10628f = f2;
            c2811a.f10629g = f4 + (0.20999998f * f);
            this.f10616g = (f + f5) * 216.0f;
        }
    }

    /* renamed from: a */
    public final void m39853a(int i) {
        if (i == 0) {
            m39856a(11.0f, 3.0f, 12.0f, 6.0f);
        } else {
            m39856a(7.5f, 2.5f, 10.0f, 5.0f);
        }
        invalidateSelf();
    }

    /* renamed from: a */
    public final void m39852a(boolean z) {
        this.f10613a.m39845a(z);
        invalidateSelf();
    }

    /* renamed from: b */
    public final void m39851b(float f) {
        C2811a c2811a = this.f10613a;
        if (f != c2811a.f10638p) {
            c2811a.f10638p = f;
        }
        invalidateSelf();
    }

    /* renamed from: c */
    public final void m39850c(float f) {
        this.f10613a.f10627e = BitmapDescriptorFactory.HUE_RED;
        this.f10613a.f10628f = f;
        invalidateSelf();
    }

    /* renamed from: d */
    public final void m39849d(float f) {
        this.f10613a.f10629g = f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.f10616g, bounds.exactCenterX(), bounds.exactCenterY());
        C2811a c2811a = this.f10613a;
        RectF rectF = c2811a.f10623a;
        float f = c2811a.f10639q + (c2811a.f10630h / 2.0f);
        if (c2811a.f10639q <= BitmapDescriptorFactory.HUE_RED) {
            f = (Math.min(bounds.width(), bounds.height()) / 2.0f) - Math.max((c2811a.f10640r * c2811a.f10638p) / 2.0f, c2811a.f10630h / 2.0f);
        }
        rectF.set(bounds.centerX() - f, bounds.centerY() - f, bounds.centerX() + f, bounds.centerY() + f);
        float f2 = (c2811a.f10627e + c2811a.f10629g) * 360.0f;
        float f3 = ((c2811a.f10628f + c2811a.f10629g) * 360.0f) - f2;
        c2811a.f10624b.setColor(c2811a.f10643u);
        c2811a.f10624b.setAlpha(c2811a.f10642t);
        float f4 = c2811a.f10630h / 2.0f;
        rectF.inset(f4, f4);
        canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, c2811a.f10626d);
        float f5 = -f4;
        rectF.inset(f5, f5);
        canvas.drawArc(rectF, f2, f3, false, c2811a.f10624b);
        if (c2811a.f10636n) {
            if (c2811a.f10637o == null) {
                c2811a.f10637o = new Path();
                c2811a.f10637o.setFillType(Path.FillType.EVEN_ODD);
            } else {
                c2811a.f10637o.reset();
            }
            float min = Math.min(rectF.width(), rectF.height()) / 2.0f;
            float f6 = (c2811a.f10640r * c2811a.f10638p) / 2.0f;
            c2811a.f10637o.moveTo(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            c2811a.f10637o.lineTo(c2811a.f10640r * c2811a.f10638p, BitmapDescriptorFactory.HUE_RED);
            c2811a.f10637o.lineTo((c2811a.f10640r * c2811a.f10638p) / 2.0f, c2811a.f10641s * c2811a.f10638p);
            c2811a.f10637o.offset((min + rectF.centerX()) - f6, rectF.centerY() + (c2811a.f10630h / 2.0f));
            c2811a.f10637o.close();
            c2811a.f10625c.setColor(c2811a.f10643u);
            c2811a.f10625c.setAlpha(c2811a.f10642t);
            canvas.save();
            canvas.rotate(f2 + f3, rectF.centerX(), rectF.centerY());
            canvas.drawPath(c2811a.f10637o, c2811a.f10625c);
            canvas.restore();
        }
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f10613a.f10642t;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.f10618i.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f10613a.f10642t = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f10613a.f10624b.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        this.f10618i.cancel();
        this.f10613a.m39842c();
        if (this.f10613a.f10628f != this.f10613a.f10627e) {
            this.f10615c = true;
            this.f10618i.setDuration(666L);
            this.f10618i.start();
            return;
        }
        this.f10613a.m39846a(0);
        this.f10613a.m39841d();
        this.f10618i.setDuration(1332L);
        this.f10618i.start();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.f10618i.cancel();
        this.f10616g = BitmapDescriptorFactory.HUE_RED;
        this.f10613a.m39845a(false);
        this.f10613a.m39846a(0);
        this.f10613a.m39841d();
        invalidateSelf();
    }
}
