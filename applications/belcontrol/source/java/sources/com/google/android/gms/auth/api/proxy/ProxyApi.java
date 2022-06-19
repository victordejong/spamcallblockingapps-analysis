package com.google.android.gms.auth.api.proxy;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/proxy/ProxyApi.class */
public interface ProxyApi {
    @KeepForSdk
    PendingResult<SpatulaHeaderResult> getSpatulaHeader(GoogleApiClient googleApiClient);

    @KeepForSdk
    PendingResult<ProxyResult> performProxyRequest(GoogleApiClient googleApiClient, ProxyRequest proxyRequest);
}
