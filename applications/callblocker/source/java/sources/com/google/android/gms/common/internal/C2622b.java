package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.ResolvableApiException;
import com.google.android.gms.common.api.Status;
/* renamed from: com.google.android.gms.common.internal.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/b.class */
public class C2622b {
    /* renamed from: a */
    public static ApiException m14111a(Status status) {
        return status.m14461c() ? new ResolvableApiException(status) : new ApiException(status);
    }
}
