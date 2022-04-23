package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/ResolvableApiException.class */
public class ResolvableApiException extends ApiException {
    public ResolvableApiException(@NonNull Status status) {
        super(status);
    }
}
