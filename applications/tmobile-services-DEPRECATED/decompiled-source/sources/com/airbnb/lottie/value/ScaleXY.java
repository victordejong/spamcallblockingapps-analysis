package com.airbnb.lottie.value;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/value/ScaleXY.class */
public class ScaleXY {

    /* renamed from: a */
    private float f6431a;

    /* renamed from: b */
    private float f6432b;

    public ScaleXY() {
        this(1.0f, 1.0f);
    }

    public ScaleXY(float f, float f2) {
        this.f6431a = f;
        this.f6432b = f2;
    }

    /* renamed from: a */
    public boolean m15653a(float f, float f2) {
        return this.f6431a == f && this.f6432b == f2;
    }

    /* renamed from: b */
    public float m15652b() {
        return this.f6431a;
    }

    /* renamed from: c */
    public float m15651c() {
        return this.f6432b;
    }

    /* renamed from: d */
    public void m15650d(float f, float f2) {
        this.f6431a = f;
        this.f6432b = f2;
    }

    public String toString() {
        return m15652b() + "x" + m15651c();
    }
}
