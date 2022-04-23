package com.google.android.material.k;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/k/l.class */
public final class l extends d {

    /* renamed from: a  reason: collision with root package name */
    float f30690a;

    public l() {
        this.f30690a = -1.0f;
    }

    @Deprecated
    public l(float f) {
        this.f30690a = -1.0f;
        this.f30690a = f;
    }

    @Override // com.google.android.material.k.d
    public final void a(o oVar, float f, float f2, float f3) {
        oVar.a(BitmapDescriptorFactory.HUE_RED, f3 * f2, 180.0f, 90.0f);
        float f4 = f3 * 2.0f * f2;
        oVar.a(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f4, f4, 180.0f, 90.0f);
    }
}
