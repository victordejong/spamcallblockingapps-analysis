package com.google.android.material.e;

import android.content.Context;
import android.graphics.Color;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.a;
import com.google.android.material.h.b;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/e/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f30491a;

    /* renamed from: b  reason: collision with root package name */
    private final int f30492b;

    /* renamed from: c  reason: collision with root package name */
    private final int f30493c;

    /* renamed from: d  reason: collision with root package name */
    private final float f30494d;

    public a(Context context) {
        this.f30491a = b.a(context, a.b.elevationOverlayEnabled, false);
        this.f30492b = com.google.android.material.b.a.a(context, a.b.elevationOverlayColor, 0);
        this.f30493c = com.google.android.material.b.a.a(context, a.b.colorSurface, 0);
        this.f30494d = context.getResources().getDisplayMetrics().density;
    }

    public final int a(int i, float f) {
        float f2;
        int i2 = i;
        if (this.f30491a) {
            i2 = i;
            if (androidx.core.graphics.a.b(i, 255) == this.f30493c) {
                float f3 = 0.0f;
                if (this.f30494d > BitmapDescriptorFactory.HUE_RED) {
                    f3 = f <= BitmapDescriptorFactory.HUE_RED ? 0.0f : Math.min(((((float) Math.log1p(f / f2)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
                }
                i2 = androidx.core.graphics.a.b(com.google.android.material.b.a.a(androidx.core.graphics.a.b(i, 255), this.f30492b, f3), Color.alpha(i));
            }
        }
        return i2;
    }
}
