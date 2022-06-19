package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.ResolvableApiException;
import com.google.android.gms.common.api.Status;
/* renamed from: com.google.android.gms.common.internal.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/b.class */
public final class C12001b {
    /* renamed from: a */
    public static ApiException m19215a(Status status) {
        return status.hasResolution() ? new ResolvableApiException(status) : new ApiException(status);
    }
}
