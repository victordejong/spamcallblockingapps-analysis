package com.google.android.gms.internal.auth;

import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.common.api.Status;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/zzax.class */
public final class zzax implements ProxyApi.SpatulaHeaderResult {
    private Status mStatus;
    private String zzci;

    public zzax(Status status) {
        Objects.requireNonNull(status, "null reference");
        this.mStatus = status;
    }

    public zzax(String str) {
        Objects.requireNonNull(str, "null reference");
        this.zzci = str;
        this.mStatus = Status.f5722f;
    }

    public final String getSpatulaHeader() {
        return this.zzci;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.mStatus;
    }
}
