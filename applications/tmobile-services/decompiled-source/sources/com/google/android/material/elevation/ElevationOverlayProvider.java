package com.google.android.material.elevation;

import android.content.Context;
import android.graphics.Color;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.C1027R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.resources.MaterialAttributes;
/* loaded from: classes-dex2jar.jar:com/google/android/material/elevation/ElevationOverlayProvider.class */
public class ElevationOverlayProvider {

    /* renamed from: a */
    private final boolean f10639a;

    /* renamed from: b */
    private final int f10640b;

    /* renamed from: c */
    private final int f10641c;

    /* renamed from: d */
    private final float f10642d;

    public ElevationOverlayProvider(@NonNull Context context) {
        this.f10639a = MaterialAttributes.m9397b(context, C1027R.attr.elevationOverlayEnabled, false);
        this.f10640b = MaterialColors.m10016a(context, C1027R.attr.elevationOverlayColor, 0);
        this.f10641c = MaterialColors.m10016a(context, C1027R.attr.colorSurface, 0);
        this.f10642d = context.getResources().getDisplayMetrics().density;
    }

    /* renamed from: e */
    private boolean m9791e(@ColorInt int i) {
        return ColorUtils.m19584d(i, 255) == this.f10641c;
    }

    /* renamed from: a */
    public float m9795a(float f) {
        float f2 = this.f10642d;
        if (f2 <= 0.0f || f <= 0.0f) {
            return 0.0f;
        }
        return Math.min(((((float) Math.log1p(f / f2)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
    }

    @ColorInt
    /* renamed from: b */
    public int m9794b(@ColorInt int i, float f) {
        float a = m9795a(f);
        return ColorUtils.m19584d(MaterialColors.m10011f(ColorUtils.m19584d(i, 255), this.f10640b, a), Color.alpha(i));
    }

    @ColorInt
    /* renamed from: c */
    public int m9793c(@ColorInt int i, float f) {
        int i2 = i;
        if (this.f10639a) {
            i2 = i;
            if (m9791e(i)) {
                i2 = m9794b(i, f);
            }
        }
        return i2;
    }

    /* renamed from: d */
    public boolean m9792d() {
        return this.f10639a;
    }
}
