package com.google.android.gms.common.api;

import com.google.android.gms.common.Feature;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/UnsupportedApiCallException.class */
public final class UnsupportedApiCallException extends UnsupportedOperationException {

    /* renamed from: a */
    private final Feature f39174a;

    public UnsupportedApiCallException(Feature feature) {
        this.f39174a = feature;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String valueOf = String.valueOf(this.f39174a);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 8);
        sb.append("Missing ");
        sb.append(valueOf);
        return sb.toString();
    }
}
