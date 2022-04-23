package com.explorestack.iab.utils;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/a.class */
public final class a extends Drawable implements Animatable {

    /* renamed from: b  reason: collision with root package name */
    private static final Interpolator f19169b = new LinearInterpolator();

    /* renamed from: c  reason: collision with root package name */
    private static final Interpolator f19170c = new Interpolator() { // from class: com.explorestack.iab.utils.a.1

        /* renamed from: a  reason: collision with root package name */
        private final float[] f19173a;

        /* renamed from: b  reason: collision with root package name */
        private final float f19174b;

        {
            float[] fArr = {BitmapDescriptorFactory.HUE_RED, 1.0E-4f, 2.0E-4f, 5.0E-4f, 9.0E-4f, 0.0014f, 0.002f, 0.0027f, 0.0036f, 0.0046f, 0.0058f, 0.0071f, 0.0085f, 0.0101f, 0.0118f, 0.0137f, 0.0158f, 0.018f, 0.0205f, 0.0231f, 0.0259f, 0.0289f, 0.0321f, 0.0355f, 0.0391f, 0.043f, 0.0471f, 0.0514f, 0.056f, 0.0608f, 0.066f, 0.0714f, 0.0771f, 0.083f, 0.0893f, 0.0959f, 0.1029f, 0.1101f, 0.1177f, 0.1257f, 0.1339f, 0.1426f, 0.1516f, 0.161f, 0.1707f, 0.1808f, 0.1913f, 0.2021f, 0.2133f, 0.2248f, 0.2366f, 0.2487f, 0.2611f, 0.2738f, 0.2867f, 0.2998f, 0.3131f, 0.3265f, 0.34f, 0.3536f, 0.3673f, 0.381f, 0.3946f, 0.4082f, 0.4217f, 0.4352f, 0.4485f, 0.4616f, 0.4746f, 0.4874f, 0.5f, 0.5124f, 0.5246f, 0.5365f, 0.5482f, 0.5597f, 0.571f, 0.582f, 0.5928f, 0.6033f, 0.6136f, 0.6237f, 0.6335f, 0.6431f, 0.6525f, 0.6616f, 0.6706f, 0.6793f, 0.6878f, 0.6961f, 0.7043f, 0.7122f, 0.7199f, 0.7275f, 0.7349f, 0.7421f, 0.7491f, 0.7559f, 0.7626f, 0.7692f, 0.7756f, 0.7818f, 0.7879f, 0.7938f, 0.7996f, 0.8053f, 0.8108f, 0.8162f, 0.8215f, 0.8266f, 0.8317f, 0.8366f, 0.8414f, 0.8461f, 0.8507f, 0.8551f, 0.8595f, 0.8638f, 0.8679f, 0.872f, 0.876f, 0.8798f, 0.8836f, 0.8873f, 0.8909f, 0.8945f, 0.8979f, 0.9013f, 0.9046f, 0.9078f, 0.9109f, 0.9139f, 0.9169f, 0.9198f, 0.9227f, 0.9254f, 0.9281f, 0.9307f, 0.9333f, 0.9358f, 0.9382f, 0.9406f, 0.9429f, 0.9452f, 0.9474f, 0.9495f, 0.9516f, 0.9536f, 0.9556f, 0.9575f, 0.9594f, 0.9612f, 0.9629f, 0.9646f, 0.9663f, 0.9679f, 0.9695f, 0.971f, 0.9725f, 0.9739f, 0.9753f, 0.9766f, 0.9779f, 0.9791f, 0.9803f, 0.9815f, 0.9826f, 0.9837f, 0.9848f, 0.9858f, 0.9867f, 0.9877f, 0.9885f, 0.9894f, 0.9902f, 0.991f, 0.9917f, 0.9924f, 0.9931f, 0.9937f, 0.9944f, 0.9949f, 0.9955f, 0.996f, 0.9964f, 0.9969f, 0.9973f, 0.9977f, 0.998f, 0.9984f, 0.9986f, 0.9989f, 0.9991f, 0.9993f, 0.9995f, 0.9997f, 0.9998f, 0.9999f, 0.9999f, 1.0f, 1.0f};
            this.f19173a = fArr;
            this.f19174b = 1.0f / (fArr.length - 1);
        }

        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f) {
            float[] fArr;
            if (f >= 1.0f) {
                return 1.0f;
            }
            if (f <= BitmapDescriptorFactory.HUE_RED) {
                return BitmapDescriptorFactory.HUE_RED;
            }
            int min = Math.min((int) ((fArr.length - 1) * f), this.f19173a.length - 2);
            float f2 = min;
            float f3 = this.f19174b;
            float f4 = (f - (f2 * f3)) / f3;
            float[] fArr2 = this.f19173a;
            return fArr2[min] + (f4 * (fArr2[min + 1] - fArr2[min]));
        }
    };

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f19171d = {-16777216};

    /* renamed from: a  reason: collision with root package name */
    final C0381a f19172a;
    private float e;
    private Resources f;
    private Animator g;
    private float h;
    private boolean i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.explorestack.iab.utils.a$a  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/a$a.class */
    public static final class C0381a {

        /* renamed from: b  reason: collision with root package name */
        final Paint f19180b;

        /* renamed from: c  reason: collision with root package name */
        final Paint f19181c;

        /* renamed from: d  reason: collision with root package name */
        final Paint f19182d;
        final Paint e;
        int[] j;
        int k;
        float l;
        float m;
        float n;
        float o;
        int q;

        /* renamed from: a  reason: collision with root package name */
        final RectF f19179a = new RectF();
        float f = BitmapDescriptorFactory.HUE_RED;
        float g = BitmapDescriptorFactory.HUE_RED;
        float h = BitmapDescriptorFactory.HUE_RED;
        float i = 5.0f;
        int p = 255;

        C0381a() {
            Paint paint = new Paint();
            this.f19180b = paint;
            Paint paint2 = new Paint();
            this.f19181c = paint2;
            Paint paint3 = new Paint();
            this.f19182d = paint3;
            Paint paint4 = new Paint();
            this.e = paint4;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
            paint3.setColor(0);
            paint4.setColor(0);
        }

        final int a() {
            return (this.k + 1) % this.j.length;
        }

        final void a(float f) {
            this.i = f;
            this.f19180b.setStrokeWidth(f);
        }

        final void a(int i) {
            this.k = i;
            this.q = this.j[i];
        }

        final void a(Paint.Cap cap) {
            this.f19180b.setStrokeCap(cap);
        }

        final void a(int[] iArr) {
            this.j = iArr;
            a(0);
        }

        final int b() {
            return this.j[this.k];
        }

        final void c() {
            this.l = this.f;
            this.m = this.g;
            this.n = this.h;
        }

        final void d() {
            this.l = BitmapDescriptorFactory.HUE_RED;
            this.m = BitmapDescriptorFactory.HUE_RED;
            this.n = BitmapDescriptorFactory.HUE_RED;
            this.f = BitmapDescriptorFactory.HUE_RED;
            this.g = BitmapDescriptorFactory.HUE_RED;
            this.h = BitmapDescriptorFactory.HUE_RED;
        }
    }

    public a(Context context) {
        this.f = context.getResources();
        final C0381a aVar = new C0381a();
        this.f19172a = aVar;
        aVar.a(f19171d);
        a(2.5f);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.explorestack.iab.utils.a.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                a aVar2 = a.this;
                a.a(floatValue, aVar);
                a.a(a.this, floatValue, aVar, false);
                a.this.invalidateSelf();
            }
        });
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ofFloat.setInterpolator(f19169b);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.explorestack.iab.utils.a.3
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationRepeat(Animator animator) {
                a.a(a.this, 1.0f, aVar, true);
                aVar.c();
                C0381a aVar2 = aVar;
                aVar2.a(aVar2.a());
                if (a.this.i) {
                    a.this.i = false;
                    animator.cancel();
                    animator.setDuration(1332L);
                    animator.start();
                    return;
                }
                a.this.h += 1.0f;
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                a.this.h = BitmapDescriptorFactory.HUE_RED;
            }
        });
        this.g = ofFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(float f, C0381a aVar) {
        if (f > 0.75f) {
            float f2 = (f - 0.75f) / 0.25f;
            int b2 = aVar.b();
            int i = aVar.j[aVar.a()];
            int i2 = (b2 >> 24) & 255;
            int i3 = (b2 >> 16) & 255;
            int i4 = (b2 >> 8) & 255;
            int i5 = b2 & 255;
            aVar.q = ((i2 + ((int) ((((i >> 24) & 255) - i2) * f2))) << 24) | ((i3 + ((int) ((((i >> 16) & 255) - i3) * f2))) << 16) | ((i4 + ((int) ((((i >> 8) & 255) - i4) * f2))) << 8) | (i5 + ((int) (f2 * ((i & 255) - i5))));
            return;
        }
        aVar.q = aVar.b();
    }

    static /* synthetic */ void a(a aVar, float f, C0381a aVar2, boolean z) {
        float f2;
        float f3;
        if (aVar.i) {
            a(f, aVar2);
            aVar2.f = aVar2.l + (((aVar2.m - 0.01f) - aVar2.l) * f);
            aVar2.g = aVar2.m;
            aVar2.h = aVar2.n + ((((float) (Math.floor(aVar2.n / 0.8f) + 1.0d)) - aVar2.n) * f);
        } else if (f != 1.0f || z) {
            float f4 = aVar2.n;
            if (f < 0.5f) {
                f3 = aVar2.l;
                f2 = (f19170c.getInterpolation(f / 0.5f) * 0.79f) + f3 + 0.01f;
            } else {
                f2 = aVar2.l + 0.79f;
                f3 = f2 - (((1.0f - f19170c.getInterpolation((f - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
            }
            float f5 = aVar.h;
            aVar2.f = f3;
            aVar2.g = f2;
            aVar2.h = f4 + (0.20999998f * f);
            aVar.e = (f + f5) * 216.0f;
        }
    }

    public final void a(float f) {
        this.f19172a.a(f);
        invalidateSelf();
    }

    public final void a(Paint.Cap cap) {
        this.f19172a.a(cap);
        invalidateSelf();
    }

    public final void a(int... iArr) {
        this.f19172a.a(iArr);
        this.f19172a.a(0);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.e, bounds.exactCenterX(), bounds.exactCenterY());
        C0381a aVar = this.f19172a;
        RectF rectF = aVar.f19179a;
        float f = aVar.o + (aVar.i / 2.0f);
        if (aVar.o <= BitmapDescriptorFactory.HUE_RED) {
            f = (Math.min(bounds.width(), bounds.height()) / 2.0f) - (aVar.i / 2.0f);
        }
        rectF.set(bounds.centerX() - f, bounds.centerY() - f, bounds.centerX() + f, bounds.centerY() + f);
        float f2 = (aVar.f + aVar.h) * 360.0f;
        float f3 = aVar.g;
        float f4 = aVar.h;
        aVar.f19180b.setColor(aVar.q);
        aVar.f19180b.setAlpha(aVar.p);
        float f5 = aVar.i / 2.0f;
        rectF.inset(f5, f5);
        canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, aVar.f19182d);
        float f6 = -f5;
        rectF.inset(f6, f6);
        canvas.drawArc(rectF, f2, ((f3 + f4) * 360.0f) - f2, false, aVar.f19180b);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f19172a.p;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.g.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f19172a.p = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f19172a.f19180b.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        this.g.cancel();
        this.f19172a.c();
        if (this.f19172a.g != this.f19172a.f) {
            this.i = true;
            this.g.setDuration(666L);
            this.g.start();
            return;
        }
        this.f19172a.a(0);
        this.f19172a.d();
        this.g.setDuration(1332L);
        this.g.start();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.g.cancel();
        this.e = BitmapDescriptorFactory.HUE_RED;
        this.f19172a.a(0);
        this.f19172a.d();
        invalidateSelf();
    }
}
