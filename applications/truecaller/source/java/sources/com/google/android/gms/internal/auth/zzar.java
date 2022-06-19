package com.google.android.gms.internal.auth;

import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.proxy.ProxyRequest;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/zzar.class */
public final class zzar implements ProxyApi {
    public final PendingResult<ProxyApi.SpatulaHeaderResult> getSpatulaHeader(GoogleApiClient googleApiClient) {
        Objects.requireNonNull(googleApiClient, "null reference");
        return googleApiClient.mo38956i(new zzau(this, googleApiClient));
    }

    public final PendingResult<ProxyApi.ProxyResult> performProxyRequest(GoogleApiClient googleApiClient, ProxyRequest proxyRequest) {
        Objects.requireNonNull(googleApiClient, "null reference");
        Objects.requireNonNull(proxyRequest, "null reference");
        return googleApiClient.mo38956i(new zzas(this, googleApiClient, proxyRequest));
    }
}
