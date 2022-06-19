package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
@Deprecated
/* renamed from: com.google.android.gms.internal.ads.s3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/s3.class */
public final class C1934s3 {
    /* renamed from: a */
    public static final void m5812a(C1917r3 c1917r3, C1887p3 c1887p3) {
        if (c1887p3.m6233b() != null) {
            if (TextUtils.isEmpty(c1887p3.m6232c())) {
                throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
            }
            c1917r3.m5998a(c1887p3.m6233b(), c1887p3.m6232c(), c1887p3.m6234a(), c1887p3.m6231d());
            return;
        }
        throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
    }
}
