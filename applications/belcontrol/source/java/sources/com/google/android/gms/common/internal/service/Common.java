package com.google.android.gms.common.internal.service;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/service/Common.class */
public final class Common {
    @KeepForSdk
    public static final Api<Api.ApiOptions.NoOptions> API;
    @KeepForSdk
    public static final Api.ClientKey<zaj> CLIENT_KEY;
    public static final zad zaa = new zac();
    private static final Api.AbstractClientBuilder<zaj, Api.ApiOptions.NoOptions> zab;

    static {
        Api.ClientKey<zaj> clientKey = new Api.ClientKey<>();
        CLIENT_KEY = clientKey;
        zab zabVar = new zab();
        zab = zabVar;
        API = new Api<>("Common.API", zabVar, clientKey);
    }
}
