package com.google.android.gms.common.internal;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.ResolvableApiException;
import com.google.android.gms.common.api.Status;
/* renamed from: com.google.android.gms.common.internal.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/b.class */
public class C6107b {
    /* renamed from: a */
    public static ApiException m17143a(@RecentlyNonNull Status status) {
        return status.m17487o0() ? new ResolvableApiException(status) : new ApiException(status);
    }
}
