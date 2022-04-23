package com.google.android.material.k;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/k/e.class */
public final class e extends d {

    /* renamed from: a  reason: collision with root package name */
    float f30674a;

    public e() {
        this.f30674a = -1.0f;
    }

    @Deprecated
    public e(float f) {
        this.f30674a = -1.0f;
        this.f30674a = f;
    }

    @Override // com.google.android.material.k.d
    public final void a(o oVar, float f, float f2, float f3) {
        oVar.a(BitmapDescriptorFactory.HUE_RED, f3 * f2, 180.0f, 90.0f);
        double d2 = f3;
        double d3 = f2;
        oVar.b((float) (Math.sin(Math.toRadians(90.0d)) * d2 * d3), (float) (Math.sin(Math.toRadians(0.0d)) * d2 * d3));
    }
}
