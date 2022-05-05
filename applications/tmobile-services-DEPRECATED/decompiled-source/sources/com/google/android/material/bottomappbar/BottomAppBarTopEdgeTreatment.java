package com.google.android.material.bottomappbar;

import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import com.google.android.material.shape.EdgeTreatment;
import com.google.android.material.shape.ShapePath;
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment.class */
public class BottomAppBarTopEdgeTreatment extends EdgeTreatment implements Cloneable {

    /* renamed from: f */
    private float f10137f;

    /* renamed from: g */
    private float f10138g;

    /* renamed from: h */
    private float f10139h;

    /* renamed from: i */
    private float f10140i;

    /* renamed from: j */
    private float f10141j = 0.0f;

    public BottomAppBarTopEdgeTreatment(float f, float f2, float f3) {
        this.f10138g = f;
        this.f10137f = f2;
        m10487j(f3);
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    /* renamed from: b */
    public void mo9150b(float f, float f2, float f3, @NonNull ShapePath shapePath) {
        float f4 = this.f10139h;
        if (f4 == 0.0f) {
            shapePath.m9191m(f, 0.0f);
            return;
        }
        float f5 = ((this.f10138g * 2.0f) + f4) / 2.0f;
        float f6 = f3 * this.f10137f;
        float f7 = f2 + this.f10141j;
        float f8 = (this.f10140i * f3) + ((1.0f - f3) * f5);
        if (f8 / f5 >= 1.0f) {
            shapePath.m9191m(f, 0.0f);
            return;
        }
        float f9 = f5 + f6;
        float f10 = f8 + f6;
        float sqrt = (float) Math.sqrt((f9 * f9) - (f10 * f10));
        float f11 = f7 - sqrt;
        float f12 = f7 + sqrt;
        float degrees = (float) Math.toDegrees(Math.atan(sqrt / f10));
        float f13 = 90.0f - degrees;
        shapePath.m9191m(f11, 0.0f);
        float f14 = f6 * 2.0f;
        shapePath.m9203a(f11 - f6, 0.0f, f11 + f6, f14, 270.0f, degrees);
        shapePath.m9203a(f7 - f5, (-f5) - f8, f7 + f5, f5 - f8, 180.0f - f13, (f13 * 2.0f) - 180.0f);
        shapePath.m9203a(f12 - f6, 0.0f, f12 + f6, f14, 270.0f - degrees, degrees);
        shapePath.m9191m(f, 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public float m10492c() {
        return this.f10140i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public float m10491d() {
        return this.f10138g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public float m10490f() {
        return this.f10137f;
    }

    @RestrictTo
    /* renamed from: g */
    public float m10489g() {
        return this.f10139h;
    }

    @RestrictTo
    /* renamed from: i */
    public float m10488i() {
        return this.f10141j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public void m10487j(@FloatRange(from = 0.0d) float f) {
        if (f >= 0.0f) {
            this.f10140i = f;
            return;
        }
        throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public void m10486l(float f) {
        this.f10138g = f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public void m10485m(float f) {
        this.f10137f = f;
    }

    @RestrictTo
    /* renamed from: n */
    public void m10484n(float f) {
        this.f10139h = f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public void m10483o(float f) {
        this.f10141j = f;
    }
}
