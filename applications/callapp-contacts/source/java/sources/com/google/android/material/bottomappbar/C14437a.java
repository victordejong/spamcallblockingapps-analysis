package com.google.android.material.bottomappbar;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.p374k.C14668f;
import com.google.android.material.p374k.C14686o;
/* renamed from: com.google.android.material.bottomappbar.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/bottomappbar/a.class */
public final class C14437a extends C14668f implements Cloneable {

    /* renamed from: a */
    float f52578a;

    /* renamed from: b */
    float f52579b;

    /* renamed from: c */
    float f52580c;

    /* renamed from: d */
    float f52581d;

    /* renamed from: e */
    float f52582e = BitmapDescriptorFactory.HUE_RED;

    public C14437a(float f, float f2, float f3) {
        this.f52579b = f;
        this.f52578a = f2;
        m11157a(f3);
    }

    /* renamed from: a */
    public final void m11157a(float f) {
        if (f >= BitmapDescriptorFactory.HUE_RED) {
            this.f52581d = f;
            return;
        }
        throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
    }

    @Override // com.google.android.material.p374k.C14668f
    /* renamed from: a */
    public final void mo10433a(float f, float f2, float f3, C14686o c14686o) {
        float f4 = this.f52580c;
        if (f4 == BitmapDescriptorFactory.HUE_RED) {
            c14686o.m10388b(f, BitmapDescriptorFactory.HUE_RED);
            return;
        }
        float f5 = ((this.f52579b * 2.0f) + f4) / 2.0f;
        float f6 = f3 * this.f52578a;
        float f7 = f2 + this.f52582e;
        float f8 = (this.f52581d * f3) + ((1.0f - f3) * f5);
        if (f8 / f5 >= 1.0f) {
            c14686o.m10388b(f, BitmapDescriptorFactory.HUE_RED);
            return;
        }
        float f9 = f5 + f6;
        float f10 = f8 + f6;
        float sqrt = (float) Math.sqrt((f9 * f9) - (f10 * f10));
        float f11 = f7 - sqrt;
        float f12 = f7 + sqrt;
        float degrees = (float) Math.toDegrees(Math.atan(sqrt / f10));
        float f13 = 90.0f - degrees;
        c14686o.m10388b(f11, BitmapDescriptorFactory.HUE_RED);
        float f14 = f6 * 2.0f;
        c14686o.m10392a(f11 - f6, BitmapDescriptorFactory.HUE_RED, f11 + f6, f14, 270.0f, degrees);
        c14686o.m10392a(f7 - f5, (-f5) - f8, f7 + f5, f5 - f8, 180.0f - f13, (f13 * 2.0f) - 180.0f);
        c14686o.m10392a(f12 - f6, BitmapDescriptorFactory.HUE_RED, f12 + f6, f14, 270.0f - degrees, degrees);
        c14686o.m10388b(f, BitmapDescriptorFactory.HUE_RED);
    }
}
