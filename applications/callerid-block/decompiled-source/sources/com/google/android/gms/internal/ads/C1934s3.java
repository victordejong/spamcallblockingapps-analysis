package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
@Deprecated
/* renamed from: com.google.android.gms.internal.ads.s3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/s3.class */
public final class C1934s3 {
    /* renamed from: a */
    public static final void m5812a(C1917r3 r3Var, C1887p3 p3Var) {
        if (p3Var.m6233b() == null) {
            throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
        } else if (!TextUtils.isEmpty(p3Var.m6232c())) {
            r3Var.m5998a(p3Var.m6233b(), p3Var.m6232c(), p3Var.m6234a(), p3Var.m6231d());
        } else {
            throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
        }
    }
}
