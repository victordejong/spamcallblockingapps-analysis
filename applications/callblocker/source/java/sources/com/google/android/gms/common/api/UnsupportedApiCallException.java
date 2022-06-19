package com.google.android.gms.common.api;

import com.google.android.gms.common.C2587d;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/UnsupportedApiCallException.class */
public final class UnsupportedApiCallException extends UnsupportedOperationException {

    /* renamed from: a */
    private final C2587d f7040a;

    public UnsupportedApiCallException(C2587d c2587d) {
        this.f7040a = c2587d;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String valueOf = String.valueOf(this.f7040a);
        return new StringBuilder(String.valueOf(valueOf).length() + 8).append("Missing ").append(valueOf).toString();
    }
}
