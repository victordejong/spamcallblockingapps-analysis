package com.theartofdev.edmodo.cropper;

import android.graphics.RectF;
/* renamed from: com.theartofdev.edmodo.cropper.e */
/* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/e.class */
public final class C17187e {

    /* renamed from: b */
    float f60877b;

    /* renamed from: c */
    float f60878c;

    /* renamed from: d */
    float f60879d;

    /* renamed from: e */
    float f60880e;

    /* renamed from: f */
    float f60881f;

    /* renamed from: g */
    float f60882g;

    /* renamed from: h */
    float f60883h;

    /* renamed from: i */
    float f60884i;

    /* renamed from: a */
    final RectF f60876a = new RectF();

    /* renamed from: l */
    private final RectF f60887l = new RectF();

    /* renamed from: j */
    float f60885j = 1.0f;

    /* renamed from: k */
    float f60886k = 1.0f;

    /* renamed from: a */
    public static boolean m5749a(float f, float f2, float f3, float f4, float f5) {
        return Math.abs(f - f3) <= f5 && Math.abs(f2 - f4) <= f5;
    }

    /* renamed from: a */
    public static boolean m5748a(float f, float f2, float f3, float f4, float f5, float f6) {
        return f > f3 && f < f4 && Math.abs(f2 - f5) <= f6;
    }

    /* renamed from: b */
    public static boolean m5745b(float f, float f2, float f3, float f4, float f5, float f6) {
        return Math.abs(f - f3) <= f6 && f2 > f4 && f2 < f5;
    }

    /* renamed from: c */
    public static boolean m5743c(float f, float f2, float f3, float f4, float f5, float f6) {
        return f > f3 && f < f5 && f2 > f4 && f2 < f6;
    }

    /* renamed from: a */
    public final RectF m5750a() {
        this.f60887l.set(this.f60876a);
        return this.f60887l;
    }

    /* renamed from: a */
    public final void m5747a(RectF rectF) {
        this.f60876a.set(rectF);
    }

    /* renamed from: b */
    public final float m5746b() {
        return Math.max(this.f60877b, this.f60881f / this.f60885j);
    }

    /* renamed from: c */
    public final float m5744c() {
        return Math.max(this.f60878c, this.f60882g / this.f60886k);
    }

    /* renamed from: d */
    public final float m5742d() {
        return Math.min(this.f60879d, this.f60883h / this.f60885j);
    }

    /* renamed from: e */
    public final float m5741e() {
        return Math.min(this.f60880e, this.f60884i / this.f60886k);
    }

    /* renamed from: f */
    public final boolean m5740f() {
        return this.f60876a.width() >= 100.0f && this.f60876a.height() >= 100.0f;
    }

    /* renamed from: g */
    public final boolean m5739g() {
        return !m5740f();
    }
}
