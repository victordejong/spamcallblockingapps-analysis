package com.google.android.gms.internal.ads;

import android.os.Build;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gs1.class */
public final class gs1 {
    /* renamed from: a */
    public static float m7341a(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getZ();
        }
        return 0.0f;
    }

    /* renamed from: b */
    public static String m7340b(View view) {
        if (Build.VERSION.SDK_INT < 19 || view.isAttachedToWindow()) {
            int visibility = view.getVisibility();
            if (visibility != 0) {
                return visibility != 4 ? visibility != 8 ? "viewNotVisible" : "viewGone" : "viewInvisible";
            } else if (view.getAlpha() != 0.0f) {
                return null;
            } else {
                return "viewAlphaZero";
            }
        }
        return "notAttached";
    }
}
