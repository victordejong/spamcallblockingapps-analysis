package com.airbnb.lottie.model;

import android.graphics.PointF;
import androidx.annotation.RestrictTo;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/CubicCurveData.class */
public class CubicCurveData {

    /* renamed from: a */
    private final PointF f6056a;

    /* renamed from: b */
    private final PointF f6057b;

    /* renamed from: c */
    private final PointF f6058c;

    public CubicCurveData() {
        this.f6056a = new PointF();
        this.f6057b = new PointF();
        this.f6058c = new PointF();
    }

    public CubicCurveData(PointF pointF, PointF pointF2, PointF pointF3) {
        this.f6056a = pointF;
        this.f6057b = pointF2;
        this.f6058c = pointF3;
    }

    /* renamed from: a */
    public PointF m16101a() {
        return this.f6056a;
    }

    /* renamed from: b */
    public PointF m16100b() {
        return this.f6057b;
    }

    /* renamed from: c */
    public PointF m16099c() {
        return this.f6058c;
    }

    /* renamed from: d */
    public void m16098d(float f, float f2) {
        this.f6056a.set(f, f2);
    }

    /* renamed from: e */
    public void m16097e(float f, float f2) {
        this.f6057b.set(f, f2);
    }

    /* renamed from: f */
    public void m16096f(float f, float f2) {
        this.f6058c.set(f, f2);
    }
}
