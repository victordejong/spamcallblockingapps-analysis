package com.google.android.gms.auth.api;

import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.signin.GoogleSignInApi;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.zzf;
import com.google.android.gms.auth.api.signin.internal.zzg;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.internal.auth_api.zzj;
import com.google.android.gms.internal.auth_api.zzq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/Auth.class */
public final class Auth {
    public static final Api<AuthCredentialsOptions> CREDENTIALS_API;
    public static final Api<GoogleSignInOptions> GOOGLE_SIGN_IN_API;
    public static final Api.ClientKey<zzq> zzg;
    public static final Api.ClientKey<zzf> zzh;
    private static final Api.AbstractClientBuilder<zzq, AuthCredentialsOptions> zzi;
    private static final Api.AbstractClientBuilder<zzf, GoogleSignInOptions> zzj;
    @ShowFirstParty
    @KeepForSdk
    @Deprecated
    public static final Api<AuthProxyOptions> PROXY_API = AuthProxy.API;
    @ShowFirstParty
    @KeepForSdk
    @Deprecated
    public static final ProxyApi ProxyApi = AuthProxy.ProxyApi;
    public static final CredentialsApi CredentialsApi = new zzj();
    public static final GoogleSignInApi GoogleSignInApi = new zzg();

    static {
        Api.ClientKey<zzq> clientKey = new Api.ClientKey<>();
        zzg = clientKey;
        Api.ClientKey<zzf> clientKey2 = new Api.ClientKey<>();
        zzh = clientKey2;
        zzc zzcVar = new zzc();
        zzi = zzcVar;
        zzd zzdVar = new zzd();
        zzj = zzdVar;
        CREDENTIALS_API = new Api<>("Auth.CREDENTIALS_API", zzcVar, clientKey);
        GOOGLE_SIGN_IN_API = new Api<>("Auth.GOOGLE_SIGN_IN_API", zzdVar, clientKey2);
    }

    private Auth() {
    }
}
