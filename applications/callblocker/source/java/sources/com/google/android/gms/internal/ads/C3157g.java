package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/g.class */
public final class C3157g {
    /* renamed from: a */
    public static void m7819a(C3102e c3102e, C3130f c3130f) {
        if (c3130f.m7845b() == null) {
            throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
        }
        if (TextUtils.isEmpty(c3130f.m7844c())) {
            throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
        }
        c3102e.m8110a(c3130f.m7845b(), c3130f.m7844c(), c3130f.m7846a(), c3130f.m7843d());
    }
}
