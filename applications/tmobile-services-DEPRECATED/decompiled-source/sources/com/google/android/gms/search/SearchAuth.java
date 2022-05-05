package com.google.android.gms.search;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.icing.zzap;
import com.google.android.gms.internal.icing.zzas;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/search/SearchAuth.class */
public class SearchAuth {

    /* renamed from: a */
    private static final Api.AbstractClientBuilder<zzap, Api.ApiOptions.NoOptions> f9794a = new zzb();

    /* renamed from: b */
    private static final Api.ClientKey<zzap> f9795b;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/search/SearchAuth$StatusCodes.class */
    public static class StatusCodes {
    }

    static {
        Api.ClientKey<zzap> clientKey = new Api.ClientKey<>();
        f9795b = clientKey;
        new Api("SearchAuth.API", f9794a, clientKey);
        new zzas();
    }

    private SearchAuth() {
    }
}
