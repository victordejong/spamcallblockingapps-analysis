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
import androidx.core.e.d;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/b.class */
public final class b extends Drawable implements Animatable {

    /* renamed from: d  reason: collision with root package name */
    private static final Interpolator f5665d = new LinearInterpolator();
    private static final Interpolator e = new androidx.g.a.a.b();
    private static final int[] f = {-16777216};

    /* renamed from: a  reason: collision with root package name */
    final a f5666a;

    /* renamed from: b  reason: collision with root package name */
    float f5667b;

    /* renamed from: c  reason: collision with root package name */
    boolean f5668c;
    private float g;
    private Resources h;
    private Animator i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/b$a.class */
    public static final class a {

        /* renamed from: b  reason: collision with root package name */
        final Paint f5674b;

        /* renamed from: c  reason: collision with root package name */
        final Paint f5675c;

        /* renamed from: d  reason: collision with root package name */
        final Paint f5676d;
        int[] i;
        int j;
        float k;
        float l;
        float m;
        boolean n;
        Path o;
        float q;
        int r;
        int s;
        int u;

        /* renamed from: a  reason: collision with root package name */
        final RectF f5673a = new RectF();
        float e = BitmapDescriptorFactory.HUE_RED;
        float f = BitmapDescriptorFactory.HUE_RED;
        float g = BitmapDescriptorFactory.HUE_RED;
        float h = 5.0f;
        float p = 1.0f;
        int t = 255;

        a() {
            Paint paint = new Paint();
            this.f5674b = paint;
            Paint paint2 = new Paint();
            this.f5675c = paint2;
            Paint paint3 = new Paint();
            this.f5676d = paint3;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
            paint3.setColor(0);
        }

        final int a() {
            return (this.j + 1) % this.i.length;
        }

        final void a(float f) {
            this.h = f;
            this.f5674b.setStrokeWidth(f);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a(int i) {
            this.j = i;
            this.u = this.i[i];
        }

        final void a(boolean z) {
            if (this.n != z) {
                this.n = z;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a(int[] iArr) {
            this.i = iArr;
            a(0);
        }

        final int b() {
            return this.i[this.j];
        }

        final void c() {
            this.k = this.e;
            this.l = this.f;
            this.m = this.g;
        }

        final void d() {
            this.k = BitmapDescriptorFactory.HUE_RED;
            this.l = BitmapDescriptorFactory.HUE_RED;
            this.m = BitmapDescriptorFactory.HUE_RED;
            this.e = BitmapDescriptorFactory.HUE_RED;
            this.f = BitmapDescriptorFactory.HUE_RED;
            this.g = BitmapDescriptorFactory.HUE_RED;
        }
    }

    public b(Context context) {
        this.h = ((Context) d.a(context)).getResources();
        final a aVar = new a();
        this.f5666a = aVar;
        aVar.a(f);
        a(2.5f);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.swiperefreshlayout.widget.b.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                b.a(floatValue, aVar);
                b.this.a(floatValue, aVar, false);
                b.this.invalidateSelf();
            }
        });
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ofFloat.setInterpolator(f5665d);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: androidx.swiperefreshlayout.widget.b.2
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationRepeat(Animator animator) {
                b.this.a(1.0f, aVar, true);
                aVar.c();
                a aVar2 = aVar;
                aVar2.a(aVar2.a());
                if (b.this.f5668c) {
                    b.this.f5668c = false;
                    animator.cancel();
                    animator.setDuration(1332L);
                    animator.start();
                    aVar.a(false);
                    return;
                }
                b.this.f5667b += 1.0f;
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                b.this.f5667b = BitmapDescriptorFactory.HUE_RED;
            }
        });
        this.i = ofFloat;
    }

    private void a(float f2, float f3, float f4, float f5) {
        a aVar = this.f5666a;
        float f6 = this.h.getDisplayMetrics().density;
        aVar.a(f3 * f6);
        aVar.q = f2 * f6;
        aVar.a(0);
        aVar.r = (int) (f4 * f6);
        aVar.s = (int) (f5 * f6);
    }

    static void a(float f2, a aVar) {
        if (f2 > 0.75f) {
            float f3 = (f2 - 0.75f) / 0.25f;
            int b2 = aVar.b();
            int i = aVar.i[aVar.a()];
            int i2 = (b2 >> 24) & 255;
            int i3 = (b2 >> 16) & 255;
            int i4 = (b2 >> 8) & 255;
            int i5 = b2 & 255;
            aVar.u = ((i2 + ((int) ((((i >> 24) & 255) - i2) * f3))) << 24) | ((i3 + ((int) ((((i >> 16) & 255) - i3) * f3))) << 16) | ((i4 + ((int) ((((i >> 8) & 255) - i4) * f3))) << 8) | (i5 + ((int) (f3 * ((i & 255) - i5))));
            return;
        }
        aVar.u = aVar.b();
    }

    public final void a() {
        this.f5666a.q = 40.0f;
        invalidateSelf();
    }

    public final void a(float f2) {
        this.f5666a.a(f2);
        invalidateSelf();
    }

    final void a(float f2, a aVar, boolean z) {
        float f3;
        float f4;
        if (this.f5668c) {
            a(f2, aVar);
            aVar.e = aVar.k + (((aVar.l - 0.01f) - aVar.k) * f2);
            aVar.f = aVar.l;
            aVar.g = aVar.m + ((((float) (Math.floor(aVar.m / 0.8f) + 1.0d)) - aVar.m) * f2);
        } else if (f2 != 1.0f || z) {
            float f5 = aVar.m;
            if (f2 < 0.5f) {
                f4 = aVar.k;
                f3 = (e.getInterpolation(f2 / 0.5f) * 0.79f) + 0.01f + f4;
            } else {
                f3 = aVar.k + 0.79f;
                f4 = f3 - (((1.0f - e.getInterpolation((f2 - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
            }
            float f6 = this.f5667b;
            aVar.e = f4;
            aVar.f = f3;
            aVar.g = f5 + (0.20999998f * f2);
            this.g = (f2 + f6) * 216.0f;
        }
    }

    public final void a(int i) {
        if (i == 0) {
            a(11.0f, 3.0f, 12.0f, 6.0f);
        } else {
            a(7.5f, 2.5f, 10.0f, 5.0f);
        }
        invalidateSelf();
    }

    public final void a(boolean z) {
        this.f5666a.a(z);
        invalidateSelf();
    }

    public final void b(float f2) {
        a aVar = this.f5666a;
        if (f2 != aVar.p) {
            aVar.p = f2;
        }
        invalidateSelf();
    }

    public final void c(float f2) {
        this.f5666a.e = BitmapDescriptorFactory.HUE_RED;
        this.f5666a.f = f2;
        invalidateSelf();
    }

    public final void d(float f2) {
        this.f5666a.g = f2;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.g, bounds.exactCenterX(), bounds.exactCenterY());
        a aVar = this.f5666a;
        RectF rectF = aVar.f5673a;
        float f2 = aVar.q + (aVar.h / 2.0f);
        if (aVar.q <= BitmapDescriptorFactory.HUE_RED) {
            f2 = (Math.min(bounds.width(), bounds.height()) / 2.0f) - Math.max((aVar.r * aVar.p) / 2.0f, aVar.h / 2.0f);
        }
        rectF.set(bounds.centerX() - f2, bounds.centerY() - f2, bounds.centerX() + f2, bounds.centerY() + f2);
        float f3 = (aVar.e + aVar.g) * 360.0f;
        float f4 = ((aVar.f + aVar.g) * 360.0f) - f3;
        aVar.f5674b.setColor(aVar.u);
        aVar.f5674b.setAlpha(aVar.t);
        float f5 = aVar.h / 2.0f;
        rectF.inset(f5, f5);
        canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, aVar.f5676d);
        float f6 = -f5;
        rectF.inset(f6, f6);
        canvas.drawArc(rectF, f3, f4, false, aVar.f5674b);
        if (aVar.n) {
            if (aVar.o == null) {
                aVar.o = new Path();
                aVar.o.setFillType(Path.FillType.EVEN_ODD);
            } else {
                aVar.o.reset();
            }
            float min = Math.min(rectF.width(), rectF.height()) / 2.0f;
            float f7 = (aVar.r * aVar.p) / 2.0f;
            aVar.o.moveTo(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            aVar.o.lineTo(aVar.r * aVar.p, BitmapDescriptorFactory.HUE_RED);
            aVar.o.lineTo((aVar.r * aVar.p) / 2.0f, aVar.s * aVar.p);
            aVar.o.offset((min + rectF.centerX()) - f7, rectF.centerY() + (aVar.h / 2.0f));
            aVar.o.close();
            aVar.f5675c.setColor(aVar.u);
            aVar.f5675c.setAlpha(aVar.t);
            canvas.save();
            canvas.rotate(f3 + f4, rectF.centerX(), rectF.centerY());
            canvas.drawPath(aVar.o, aVar.f5675c);
            canvas.restore();
        }
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f5666a.t;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.i.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f5666a.t = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f5666a.f5674b.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        this.i.cancel();
        this.f5666a.c();
        if (this.f5666a.f != this.f5666a.e) {
            this.f5668c = true;
            this.i.setDuration(666L);
            this.i.start();
            return;
        }
        this.f5666a.a(0);
        this.f5666a.d();
        this.i.setDuration(1332L);
        this.i.start();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.i.cancel();
        this.g = BitmapDescriptorFactory.HUE_RED;
        this.f5666a.a(false);
        this.f5666a.a(0);
        this.f5666a.d();
        invalidateSelf();
    }
}
