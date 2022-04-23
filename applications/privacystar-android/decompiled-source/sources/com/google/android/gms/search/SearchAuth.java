package com.google.android.gms.search;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.icing.zzat;
import com.google.android.gms.internal.icing.zzau;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/search/SearchAuth.class */
public class SearchAuth {
    private static final Api.AbstractClientBuilder<zzat, Api.ApiOptions.NoOptions> zzbn = new zzb();
    private static final Api.ClientKey<zzat> CLIENT_KEY = new Api.ClientKey<>();
    public static final Api<Api.ApiOptions.NoOptions> API = new Api<>("SearchAuth.API", zzbn, CLIENT_KEY);
    public static final SearchAuthApi SearchAuthApi = new zzau();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/search/SearchAuth$StatusCodes.class */
    public static class StatusCodes {
        public static final int AUTH_DISABLED = 10000;
        public static final int AUTH_THROTTLED = 10001;
        public static final int DEVELOPER_ERROR = 10;
        public static final int INTERNAL_ERROR = 8;
        public static final int SUCCESS = 0;
    }

    private SearchAuth() {
    }
}
