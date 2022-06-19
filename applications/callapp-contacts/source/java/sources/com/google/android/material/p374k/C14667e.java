package com.google.android.material.p374k;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: com.google.android.material.k.e */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/k/e.class */
public final class C14667e extends C14666d {

    /* renamed from: a */
    float f53471a;

    public C14667e() {
        this.f53471a = -1.0f;
    }

    @Deprecated
    public C14667e(float f) {
        this.f53471a = -1.0f;
        this.f53471a = f;
    }

    @Override // com.google.android.material.p374k.C14666d
    /* renamed from: a */
    public final void mo10431a(C14686o c14686o, float f, float f2, float f3) {
        c14686o.m10393a(BitmapDescriptorFactory.HUE_RED, f3 * f2, 180.0f, 90.0f);
        double d = f3;
        double d2 = f2;
        c14686o.m10388b((float) (Math.sin(Math.toRadians(90.0d)) * d * d2), (float) (Math.sin(Math.toRadians(0.0d)) * d * d2));
    }
}
