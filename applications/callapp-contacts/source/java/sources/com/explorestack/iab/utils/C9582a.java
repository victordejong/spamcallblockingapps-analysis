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
/* renamed from: com.explorestack.iab.utils.a */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/a.class */
public final class C9582a extends Drawable implements Animatable {

    /* renamed from: b */
    private static final Interpolator f32550b = new LinearInterpolator();

    /* renamed from: c */
    private static final Interpolator f32551c = new Interpolator() { // from class: com.explorestack.iab.utils.a.1

        /* renamed from: a */
        private final float[] f32559a;

        /* renamed from: b */
        private final float f32560b;

        {
            float[] fArr = {BitmapDescriptorFactory.HUE_RED, 1.0E-4f, 2.0E-4f, 5.0E-4f, 9.0E-4f, 0.0014f, 0.002f, 0.0027f, 0.0036f, 0.0046f, 0.0058f, 0.0071f, 0.0085f, 0.0101f, 0.0118f, 0.0137f, 0.0158f, 0.018f, 0.0205f, 0.0231f, 0.0259f, 0.0289f, 0.0321f, 0.0355f, 0.0391f, 0.043f, 0.0471f, 0.0514f, 0.056f, 0.0608f, 0.066f, 0.0714f, 0.0771f, 0.083f, 0.0893f, 0.0959f, 0.1029f, 0.1101f, 0.1177f, 0.1257f, 0.1339f, 0.1426f, 0.1516f, 0.161f, 0.1707f, 0.1808f, 0.1913f, 0.2021f, 0.2133f, 0.2248f, 0.2366f, 0.2487f, 0.2611f, 0.2738f, 0.2867f, 0.2998f, 0.3131f, 0.3265f, 0.34f, 0.3536f, 0.3673f, 0.381f, 0.3946f, 0.4082f, 0.4217f, 0.4352f, 0.4485f, 0.4616f, 0.4746f, 0.4874f, 0.5f, 0.5124f, 0.5246f, 0.5365f, 0.5482f, 0.5597f, 0.571f, 0.582f, 0.5928f, 0.6033f, 0.6136f, 0.6237f, 0.6335f, 0.6431f, 0.6525f, 0.6616f, 0.6706f, 0.6793f, 0.6878f, 0.6961f, 0.7043f, 0.7122f, 0.7199f, 0.7275f, 0.7349f, 0.7421f, 0.7491f, 0.7559f, 0.7626f, 0.7692f, 0.7756f, 0.7818f, 0.7879f, 0.7938f, 0.7996f, 0.8053f, 0.8108f, 0.8162f, 0.8215f, 0.8266f, 0.8317f, 0.8366f, 0.8414f, 0.8461f, 0.8507f, 0.8551f, 0.8595f, 0.8638f, 0.8679f, 0.872f, 0.876f, 0.8798f, 0.8836f, 0.8873f, 0.8909f, 0.8945f, 0.8979f, 0.9013f, 0.9046f, 0.9078f, 0.9109f, 0.9139f, 0.9169f, 0.9198f, 0.9227f, 0.9254f, 0.9281f, 0.9307f, 0.9333f, 0.9358f, 0.9382f, 0.9406f, 0.9429f, 0.9452f, 0.9474f, 0.9495f, 0.9516f, 0.9536f, 0.9556f, 0.9575f, 0.9594f, 0.9612f, 0.9629f, 0.9646f, 0.9663f, 0.9679f, 0.9695f, 0.971f, 0.9725f, 0.9739f, 0.9753f, 0.9766f, 0.9779f, 0.9791f, 0.9803f, 0.9815f, 0.9826f, 0.9837f, 0.9848f, 0.9858f, 0.9867f, 0.9877f, 0.9885f, 0.9894f, 0.9902f, 0.991f, 0.9917f, 0.9924f, 0.9931f, 0.9937f, 0.9944f, 0.9949f, 0.9955f, 0.996f, 0.9964f, 0.9969f, 0.9973f, 0.9977f, 0.998f, 0.9984f, 0.9986f, 0.9989f, 0.9991f, 0.9993f, 0.9995f, 0.9997f, 0.9998f, 0.9999f, 0.9999f, 1.0f, 1.0f};
            this.f32559a = fArr;
            this.f32560b = 1.0f / (fArr.length - 1);
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
            int min = Math.min((int) ((fArr.length - 1) * f), this.f32559a.length - 2);
            float f2 = min;
            float f3 = this.f32560b;
            float f4 = (f - (f2 * f3)) / f3;
            float[] fArr2 = this.f32559a;
            return fArr2[min] + (f4 * (fArr2[min + 1] - fArr2[min]));
        }
    };

    /* renamed from: d */
    private static final int[] f32552d = {-16777216};

    /* renamed from: a */
    final C9586a f32553a;

    /* renamed from: e */
    private float f32554e;

    /* renamed from: f */
    private Resources f32555f;

    /* renamed from: g */
    private Animator f32556g;

    /* renamed from: h */
    private float f32557h;

    /* renamed from: i */
    private boolean f32558i;

    /* renamed from: com.explorestack.iab.utils.a$a */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/a$a.class */
    public static final class C9586a {

        /* renamed from: b */
        final Paint f32566b;

        /* renamed from: c */
        final Paint f32567c;

        /* renamed from: d */
        final Paint f32568d;

        /* renamed from: e */
        final Paint f32569e;

        /* renamed from: j */
        int[] f32574j;

        /* renamed from: k */
        int f32575k;

        /* renamed from: l */
        float f32576l;

        /* renamed from: m */
        float f32577m;

        /* renamed from: n */
        float f32578n;

        /* renamed from: o */
        float f32579o;

        /* renamed from: q */
        int f32581q;

        /* renamed from: a */
        final RectF f32565a = new RectF();

        /* renamed from: f */
        float f32570f = BitmapDescriptorFactory.HUE_RED;

        /* renamed from: g */
        float f32571g = BitmapDescriptorFactory.HUE_RED;

        /* renamed from: h */
        float f32572h = BitmapDescriptorFactory.HUE_RED;

        /* renamed from: i */
        float f32573i = 5.0f;

        /* renamed from: p */
        int f32580p = 255;

        C9586a() {
            Paint paint = new Paint();
            this.f32566b = paint;
            Paint paint2 = new Paint();
            this.f32567c = paint2;
            Paint paint3 = new Paint();
            this.f32568d = paint3;
            Paint paint4 = new Paint();
            this.f32569e = paint4;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
            paint3.setColor(0);
            paint4.setColor(0);
        }

        /* renamed from: a */
        final int m24085a() {
            return (this.f32575k + 1) % this.f32574j.length;
        }

        /* renamed from: a */
        final void m24084a(float f) {
            this.f32573i = f;
            this.f32566b.setStrokeWidth(f);
        }

        /* renamed from: a */
        final void m24083a(int i) {
            this.f32575k = i;
            this.f32581q = this.f32574j[i];
        }

        /* renamed from: a */
        final void m24082a(Paint.Cap cap) {
            this.f32566b.setStrokeCap(cap);
        }

        /* renamed from: a */
        final void m24081a(int[] iArr) {
            this.f32574j = iArr;
            m24083a(0);
        }

        /* renamed from: b */
        final int m24080b() {
            return this.f32574j[this.f32575k];
        }

        /* renamed from: c */
        final void m24079c() {
            this.f32576l = this.f32570f;
            this.f32577m = this.f32571g;
            this.f32578n = this.f32572h;
        }

        /* renamed from: d */
        final void m24078d() {
            this.f32576l = BitmapDescriptorFactory.HUE_RED;
            this.f32577m = BitmapDescriptorFactory.HUE_RED;
            this.f32578n = BitmapDescriptorFactory.HUE_RED;
            this.f32570f = BitmapDescriptorFactory.HUE_RED;
            this.f32571g = BitmapDescriptorFactory.HUE_RED;
            this.f32572h = BitmapDescriptorFactory.HUE_RED;
        }
    }

    public C9582a(Context context) {
        this.f32555f = context.getResources();
        final C9586a c9586a = new C9586a();
        this.f32553a = c9586a;
        c9586a.m24081a(f32552d);
        m24095a(2.5f);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.explorestack.iab.utils.a.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                C9582a c9582a = C9582a.this;
                C9582a.m24094a(floatValue, c9586a);
                C9582a.m24089a(C9582a.this, floatValue, c9586a, false);
                C9582a.this.invalidateSelf();
            }
        });
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ofFloat.setInterpolator(f32550b);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.explorestack.iab.utils.a.3
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationRepeat(Animator animator) {
                C9582a.m24089a(C9582a.this, 1.0f, c9586a, true);
                c9586a.m24079c();
                C9586a c9586a2 = c9586a;
                c9586a2.m24083a(c9586a2.m24085a());
                if (!C9582a.this.f32558i) {
                    C9582a.this.f32557h += 1.0f;
                    return;
                }
                C9582a.this.f32558i = false;
                animator.cancel();
                animator.setDuration(1332L);
                animator.start();
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                C9582a.this.f32557h = BitmapDescriptorFactory.HUE_RED;
            }
        });
        this.f32556g = ofFloat;
    }

    /* renamed from: a */
    public static void m24094a(float f, C9586a c9586a) {
        if (f <= 0.75f) {
            c9586a.f32581q = c9586a.m24080b();
            return;
        }
        float f2 = (f - 0.75f) / 0.25f;
        int m24080b = c9586a.m24080b();
        int i = c9586a.f32574j[c9586a.m24085a()];
        int i2 = (m24080b >> 24) & 255;
        int i3 = (m24080b >> 16) & 255;
        int i4 = (m24080b >> 8) & 255;
        int i5 = m24080b & 255;
        c9586a.f32581q = ((i2 + ((int) ((((i >> 24) & 255) - i2) * f2))) << 24) | ((i3 + ((int) ((((i >> 16) & 255) - i3) * f2))) << 16) | ((i4 + ((int) ((((i >> 8) & 255) - i4) * f2))) << 8) | (i5 + ((int) (f2 * ((i & 255) - i5))));
    }

    /* renamed from: a */
    static /* synthetic */ void m24089a(C9582a c9582a, float f, C9586a c9586a, boolean z) {
        float f2;
        float f3;
        if (c9582a.f32558i) {
            m24094a(f, c9586a);
            c9586a.f32570f = c9586a.f32576l + (((c9586a.f32577m - 0.01f) - c9586a.f32576l) * f);
            c9586a.f32571g = c9586a.f32577m;
            c9586a.f32572h = c9586a.f32578n + ((((float) (Math.floor(c9586a.f32578n / 0.8f) + 1.0d)) - c9586a.f32578n) * f);
        } else if (f == 1.0f && !z) {
        } else {
            float f4 = c9586a.f32578n;
            if (f < 0.5f) {
                f3 = c9586a.f32576l;
                f2 = (f32551c.getInterpolation(f / 0.5f) * 0.79f) + f3 + 0.01f;
            } else {
                f2 = c9586a.f32576l + 0.79f;
                f3 = f2 - (((1.0f - f32551c.getInterpolation((f - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
            }
            float f5 = c9582a.f32557h;
            c9586a.f32570f = f3;
            c9586a.f32571g = f2;
            c9586a.f32572h = f4 + (0.20999998f * f);
            c9582a.f32554e = (f + f5) * 216.0f;
        }
    }

    /* renamed from: a */
    public final void m24095a(float f) {
        this.f32553a.m24084a(f);
        invalidateSelf();
    }

    /* renamed from: a */
    public final void m24093a(Paint.Cap cap) {
        this.f32553a.m24082a(cap);
        invalidateSelf();
    }

    /* renamed from: a */
    public final void m24088a(int... iArr) {
        this.f32553a.m24081a(iArr);
        this.f32553a.m24083a(0);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.f32554e, bounds.exactCenterX(), bounds.exactCenterY());
        C9586a c9586a = this.f32553a;
        RectF rectF = c9586a.f32565a;
        float f = c9586a.f32579o + (c9586a.f32573i / 2.0f);
        if (c9586a.f32579o <= BitmapDescriptorFactory.HUE_RED) {
            f = (Math.min(bounds.width(), bounds.height()) / 2.0f) - (c9586a.f32573i / 2.0f);
        }
        rectF.set(bounds.centerX() - f, bounds.centerY() - f, bounds.centerX() + f, bounds.centerY() + f);
        float f2 = (c9586a.f32570f + c9586a.f32572h) * 360.0f;
        float f3 = c9586a.f32571g;
        float f4 = c9586a.f32572h;
        c9586a.f32566b.setColor(c9586a.f32581q);
        c9586a.f32566b.setAlpha(c9586a.f32580p);
        float f5 = c9586a.f32573i / 2.0f;
        rectF.inset(f5, f5);
        canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, c9586a.f32568d);
        float f6 = -f5;
        rectF.inset(f6, f6);
        canvas.drawArc(rectF, f2, ((f3 + f4) * 360.0f) - f2, false, c9586a.f32566b);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f32553a.f32580p;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.f32556g.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f32553a.f32580p = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f32553a.f32566b.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        this.f32556g.cancel();
        this.f32553a.m24079c();
        if (this.f32553a.f32571g != this.f32553a.f32570f) {
            this.f32558i = true;
            this.f32556g.setDuration(666L);
            this.f32556g.start();
            return;
        }
        this.f32553a.m24083a(0);
        this.f32553a.m24078d();
        this.f32556g.setDuration(1332L);
        this.f32556g.start();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.f32556g.cancel();
        this.f32554e = BitmapDescriptorFactory.HUE_RED;
        this.f32553a.m24083a(0);
        this.f32553a.m24078d();
        invalidateSelf();
    }
}
