package com.airbnb.lottie.value;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieComposition;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/value/Keyframe.class */
public class Keyframe<T> {
    @Nullable

    /* renamed from: a */
    private final LottieComposition f6406a;
    @Nullable

    /* renamed from: b */
    public final T f6407b;
    @Nullable

    /* renamed from: c */
    public T f6408c;
    @Nullable

    /* renamed from: d */
    public final Interpolator f6409d;

    /* renamed from: e */
    public final float f6410e;
    @Nullable

    /* renamed from: f */
    public Float f6411f;

    /* renamed from: g */
    private float f6412g;

    /* renamed from: h */
    private float f6413h;

    /* renamed from: i */
    private int f6414i;

    /* renamed from: j */
    private int f6415j;

    /* renamed from: k */
    private float f6416k;

    /* renamed from: l */
    private float f6417l;

    /* renamed from: m */
    public PointF f6418m;

    /* renamed from: n */
    public PointF f6419n;

    public Keyframe(LottieComposition lottieComposition, @Nullable T t, @Nullable T t2, @Nullable Interpolator interpolator, float f, @Nullable Float f2) {
        this.f6412g = -3987645.8f;
        this.f6413h = -3987645.8f;
        this.f6414i = 784923401;
        this.f6415j = 784923401;
        this.f6416k = Float.MIN_VALUE;
        this.f6417l = Float.MIN_VALUE;
        this.f6418m = null;
        this.f6419n = null;
        this.f6406a = lottieComposition;
        this.f6407b = t;
        this.f6408c = t2;
        this.f6409d = interpolator;
        this.f6410e = f;
        this.f6411f = f2;
    }

    public Keyframe(T t) {
        this.f6412g = -3987645.8f;
        this.f6413h = -3987645.8f;
        this.f6414i = 784923401;
        this.f6415j = 784923401;
        this.f6416k = Float.MIN_VALUE;
        this.f6417l = Float.MIN_VALUE;
        this.f6418m = null;
        this.f6419n = null;
        this.f6406a = null;
        this.f6407b = t;
        this.f6408c = t;
        this.f6409d = null;
        this.f6410e = Float.MIN_VALUE;
        this.f6411f = Float.valueOf(Float.MAX_VALUE);
    }

    /* renamed from: a */
    public boolean m15679a(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        return f >= m15675e() && f < m15678b();
    }

    /* renamed from: b */
    public float m15678b() {
        if (this.f6406a == null) {
            return 1.0f;
        }
        if (this.f6417l == Float.MIN_VALUE) {
            if (this.f6411f == null) {
                this.f6417l = 1.0f;
            } else {
                this.f6417l = m15675e() + ((this.f6411f.floatValue() - this.f6410e) / this.f6406a.m16342e());
            }
        }
        return this.f6417l;
    }

    /* renamed from: c */
    public float m15677c() {
        if (this.f6413h == -3987645.8f) {
            this.f6413h = ((Float) this.f6408c).floatValue();
        }
        return this.f6413h;
    }

    /* renamed from: d */
    public int m15676d() {
        if (this.f6415j == 784923401) {
            this.f6415j = ((Integer) this.f6408c).intValue();
        }
        return this.f6415j;
    }

    /* renamed from: e */
    public float m15675e() {
        LottieComposition lottieComposition = this.f6406a;
        if (lottieComposition == null) {
            return 0.0f;
        }
        if (this.f6416k == Float.MIN_VALUE) {
            this.f6416k = (this.f6410e - lottieComposition.m16332o()) / this.f6406a.m16342e();
        }
        return this.f6416k;
    }

    /* renamed from: f */
    public float m15674f() {
        if (this.f6412g == -3987645.8f) {
            this.f6412g = ((Float) this.f6407b).floatValue();
        }
        return this.f6412g;
    }

    /* renamed from: g */
    public int m15673g() {
        if (this.f6414i == 784923401) {
            this.f6414i = ((Integer) this.f6407b).intValue();
        }
        return this.f6414i;
    }

    /* renamed from: h */
    public boolean m15672h() {
        return this.f6409d == null;
    }

    public String toString() {
        return "Keyframe{startValue=" + this.f6407b + ", endValue=" + this.f6408c + ", startFrame=" + this.f6410e + ", endFrame=" + this.f6411f + ", interpolator=" + this.f6409d + '}';
    }
}
