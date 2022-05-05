package com.google.android.gms.internal.firebase_messaging;

import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_messaging/zzl.class */
public final class zzl {
    /* renamed from: a */
    public static int m14074a(int i, int i2) {
        long j = i << 1;
        if (j > 2147483647L) {
            return Api.BaseClientBuilder.API_PRIORITY_OTHER;
        }
        if (j < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j;
    }
}
