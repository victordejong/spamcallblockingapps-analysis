package com.google.android.material.p368e;

import android.content.Context;
import android.graphics.Color;
import androidx.core.graphics.C0834a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
import com.google.android.material.p365b.C14416a;
import com.google.android.material.p371h.C14597b;
/* renamed from: com.google.android.material.e.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/e/a.class */
public final class C14552a {

    /* renamed from: a */
    public final boolean f53068a;

    /* renamed from: b */
    private final int f53069b;

    /* renamed from: c */
    private final int f53070c;

    /* renamed from: d */
    private final float f53071d;

    public C14552a(Context context) {
        this.f53068a = C14597b.m10656a(context, C14376a.C14378b.elevationOverlayEnabled, false);
        this.f53069b = C14416a.m11240a(context, C14376a.C14378b.elevationOverlayColor, 0);
        this.f53070c = C14416a.m11240a(context, C14376a.C14378b.colorSurface, 0);
        this.f53071d = context.getResources().getDisplayMetrics().density;
    }

    /* renamed from: a */
    public final int m10779a(int i, float f) {
        float f2;
        int i2 = i;
        if (this.f53068a) {
            i2 = i;
            if (C0834a.m44396b(i, 255) == this.f53070c) {
                float f3 = 0.0f;
                if (this.f53071d > BitmapDescriptorFactory.HUE_RED) {
                    f3 = f <= BitmapDescriptorFactory.HUE_RED ? 0.0f : Math.min(((((float) Math.log1p(f / f2)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
                }
                i2 = C0834a.m44396b(C14416a.m11241a(C0834a.m44396b(i, 255), this.f53069b, f3), Color.alpha(i));
            }
        }
        return i2;
    }
}
