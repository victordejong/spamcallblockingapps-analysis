package com.theartofdev.edmodo.cropper;

import android.graphics.RectF;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/e.class */
public final class e {

    /* renamed from: b  reason: collision with root package name */
    float f35064b;

    /* renamed from: c  reason: collision with root package name */
    float f35065c;

    /* renamed from: d  reason: collision with root package name */
    float f35066d;
    float e;
    float f;
    float g;
    float h;
    float i;

    /* renamed from: a  reason: collision with root package name */
    final RectF f35063a = new RectF();
    private final RectF l = new RectF();
    float j = 1.0f;
    float k = 1.0f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(float f, float f2, float f3, float f4, float f5) {
        return Math.abs(f - f3) <= f5 && Math.abs(f2 - f4) <= f5;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(float f, float f2, float f3, float f4, float f5, float f6) {
        return f > f3 && f < f4 && Math.abs(f2 - f5) <= f6;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(float f, float f2, float f3, float f4, float f5, float f6) {
        return Math.abs(f - f3) <= f6 && f2 > f4 && f2 < f5;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean c(float f, float f2, float f3, float f4, float f5, float f6) {
        return f > f3 && f < f5 && f2 > f4 && f2 < f6;
    }

    public final RectF a() {
        this.l.set(this.f35063a);
        return this.l;
    }

    public final void a(RectF rectF) {
        this.f35063a.set(rectF);
    }

    public final float b() {
        return Math.max(this.f35064b, this.f / this.j);
    }

    public final float c() {
        return Math.max(this.f35065c, this.g / this.k);
    }

    public final float d() {
        return Math.min(this.f35066d, this.h / this.j);
    }

    public final float e() {
        return Math.min(this.e, this.i / this.k);
    }

    public final boolean f() {
        return this.f35063a.width() >= 100.0f && this.f35063a.height() >= 100.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean g() {
        return !f();
    }
}
