package com.google.android.gms.internal.ads;

import android.text.TextUtils;
@Deprecated
/* renamed from: com.google.android.gms.internal.ads.qw */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qw.class */
public final class C6901qw {
    /* renamed from: a */
    public static final void m11784a(C6864pw c6864pw, C6790nw c6790nw) {
        if (c6790nw.m12811b() != null) {
            if (TextUtils.isEmpty(c6790nw.m12810c())) {
                throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
            }
            c6864pw.m12120a(c6790nw.m12811b(), c6790nw.m12810c(), c6790nw.m12812a(), c6790nw.m12809d());
            return;
        }
        throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
    }
}
