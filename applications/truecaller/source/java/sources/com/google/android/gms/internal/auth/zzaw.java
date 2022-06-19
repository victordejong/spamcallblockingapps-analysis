package com.google.android.gms.internal.auth;

import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.proxy.ProxyResponse;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/zzaw.class */
public final class zzaw implements ProxyApi.ProxyResult {
    private Status mStatus;
    private ProxyResponse zzch;

    public zzaw(ProxyResponse proxyResponse) {
        this.zzch = proxyResponse;
        this.mStatus = Status.f5722f;
    }

    public zzaw(Status status) {
        this.mStatus = status;
    }

    public final ProxyResponse getResponse() {
        return this.zzch;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.mStatus;
    }
}
