package com.google.android.gms.signin;

import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/SignInOptions.class */
public final class SignInOptions implements Api.ApiOptions.Optional {
    public static final SignInOptions DEFAULT = new SignInOptions(false, false, null, false, null, false, null, null);
    private final boolean zarv = false;
    private final boolean zay = false;
    private final String zaab = null;
    private final boolean zaaa = false;
    private final boolean zarw = false;
    private final String zaac = null;
    private final Long zarx = null;
    private final Long zary = null;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/SignInOptions$zaa.class */
    public static final class zaa {
    }

    static {
        new zaa();
    }

    private SignInOptions(boolean z, boolean z2, String str, boolean z3, String str2, boolean z4, Long l, Long l2) {
    }

    public final Long getAuthApiSignInModuleVersion() {
        return this.zarx;
    }

    public final String getHostedDomain() {
        return this.zaac;
    }

    public final Long getRealClientLibraryVersion() {
        return this.zary;
    }

    public final String getServerClientId() {
        return this.zaab;
    }

    public final boolean isForceCodeForRefreshToken() {
        return this.zaaa;
    }

    public final boolean isIdTokenRequested() {
        return this.zay;
    }

    public final boolean isOfflineAccessRequested() {
        return this.zarv;
    }

    public final boolean waitForAccessTokenRefresh() {
        return this.zarw;
    }
}
