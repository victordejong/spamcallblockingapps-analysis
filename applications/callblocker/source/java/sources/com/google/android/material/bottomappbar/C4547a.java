package com.google.android.material.bottomappbar;

import com.google.android.material.p159q.C4735f;
import com.google.android.material.p159q.C4750m;
/* renamed from: com.google.android.material.bottomappbar.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomappbar/a.class */
public class C4547a extends C4735f implements Cloneable {

    /* renamed from: a */
    private float f19734a;

    /* renamed from: b */
    private float f19735b;

    /* renamed from: c */
    private float f19736c;

    /* renamed from: d */
    private float f19737d;

    /* renamed from: e */
    private float f19738e;

    /* renamed from: a */
    public float m3634a() {
        return this.f19736c;
    }

    /* renamed from: a */
    public void m3633a(float f) {
        this.f19736c = f;
    }

    @Override // com.google.android.material.p159q.C4735f
    /* renamed from: a */
    public void mo2746a(float f, float f2, float f3, C4750m c4750m) {
        if (this.f19736c == 0.0f) {
            c4750m.m2598b(f, 0.0f);
            return;
        }
        float f4 = ((this.f19735b * 2.0f) + this.f19736c) / 2.0f;
        float f5 = f3 * this.f19734a;
        float f6 = f2 + this.f19738e;
        float f7 = (this.f19737d * f3) + ((1.0f - f3) * f4);
        if (f7 / f4 >= 1.0f) {
            c4750m.m2598b(f, 0.0f);
            return;
        }
        float f8 = f4 + f5;
        float f9 = f7 + f5;
        float sqrt = (float) Math.sqrt((f8 * f8) - (f9 * f9));
        float f10 = f6 - sqrt;
        float f11 = f6 + sqrt;
        float degrees = (float) Math.toDegrees(Math.atan(sqrt / f9));
        float f12 = 90.0f - degrees;
        c4750m.m2598b(f10, 0.0f);
        c4750m.m2604a(f10 - f5, 0.0f, f10 + f5, f5 * 2.0f, 270.0f, degrees);
        c4750m.m2604a(f6 - f4, (-f4) - f7, f6 + f4, f4 - f7, 180.0f - f12, (2.0f * f12) - 180.0f);
        c4750m.m2604a(f11 - f5, 0.0f, f11 + f5, f5 * 2.0f, 270.0f - degrees, degrees);
        c4750m.m2598b(f, 0.0f);
    }

    /* renamed from: b */
    public float m3632b() {
        return this.f19737d;
    }

    /* renamed from: b */
    public void m3631b(float f) {
        this.f19738e = f;
    }

    /* renamed from: c */
    public float m3630c() {
        return this.f19735b;
    }

    /* renamed from: c */
    public void m3629c(float f) {
        this.f19737d = f;
    }

    /* renamed from: d */
    public float m3628d() {
        return this.f19734a;
    }

    /* renamed from: d */
    public void m3627d(float f) {
        this.f19735b = f;
    }

    /* renamed from: e */
    public void m3626e(float f) {
        this.f19734a = f;
    }
}
