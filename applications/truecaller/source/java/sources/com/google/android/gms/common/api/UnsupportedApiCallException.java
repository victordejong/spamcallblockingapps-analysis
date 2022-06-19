package com.google.android.gms.common.api;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/UnsupportedApiCallException.class */
public final class UnsupportedApiCallException extends UnsupportedOperationException {

    /* renamed from: a */
    public final Feature f5732a;

    @KeepForSdk
    public UnsupportedApiCallException(Feature feature) {
        this.f5732a = feature;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String valueOf = String.valueOf(this.f5732a);
        valueOf.length();
        return "Missing ".concat(valueOf);
    }
}
