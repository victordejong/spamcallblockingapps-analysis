package com.google.android.material.bottomappbar;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.k.f;
import com.google.android.material.k.o;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomappbar/a.class */
public final class a extends f implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    float f30287a;

    /* renamed from: b  reason: collision with root package name */
    float f30288b;

    /* renamed from: c  reason: collision with root package name */
    float f30289c;

    /* renamed from: d  reason: collision with root package name */
    float f30290d;
    float e = BitmapDescriptorFactory.HUE_RED;

    public a(float f, float f2, float f3) {
        this.f30288b = f;
        this.f30287a = f2;
        a(f3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(float f) {
        if (f >= BitmapDescriptorFactory.HUE_RED) {
            this.f30290d = f;
            return;
        }
        throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
    }

    @Override // com.google.android.material.k.f
    public final void a(float f, float f2, float f3, o oVar) {
        float f4 = this.f30289c;
        if (f4 == BitmapDescriptorFactory.HUE_RED) {
            oVar.b(f, BitmapDescriptorFactory.HUE_RED);
            return;
        }
        float f5 = ((this.f30288b * 2.0f) + f4) / 2.0f;
        float f6 = f3 * this.f30287a;
        float f7 = f2 + this.e;
        float f8 = (this.f30290d * f3) + ((1.0f - f3) * f5);
        if (f8 / f5 >= 1.0f) {
            oVar.b(f, BitmapDescriptorFactory.HUE_RED);
            return;
        }
        float f9 = f5 + f6;
        float f10 = f8 + f6;
        float sqrt = (float) Math.sqrt((f9 * f9) - (f10 * f10));
        float f11 = f7 - sqrt;
        float f12 = f7 + sqrt;
        float degrees = (float) Math.toDegrees(Math.atan(sqrt / f10));
        float f13 = 90.0f - degrees;
        oVar.b(f11, BitmapDescriptorFactory.HUE_RED);
        float f14 = f6 * 2.0f;
        oVar.a(f11 - f6, BitmapDescriptorFactory.HUE_RED, f11 + f6, f14, 270.0f, degrees);
        oVar.a(f7 - f5, (-f5) - f8, f7 + f5, f5 - f8, 180.0f - f13, (f13 * 2.0f) - 180.0f);
        oVar.a(f12 - f6, BitmapDescriptorFactory.HUE_RED, f12 + f6, f14, 270.0f - degrees, degrees);
        oVar.b(f, BitmapDescriptorFactory.HUE_RED);
    }
}
