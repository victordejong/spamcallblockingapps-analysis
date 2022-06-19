package com.google.android.gms.auth.api;

import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.auth.zzak;
import com.google.android.gms.internal.auth.zzar;
import p193e.p1577m.p1578a.p1642f.p1644b.p1646b.C24893f;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/AuthProxy.class */
public final class AuthProxy {

    /* renamed from: a */
    public static final Api.ClientKey<zzak> f5359a;

    /* renamed from: b */
    public static final Api.AbstractClientBuilder<zzak, AuthProxyOptions> f5360b;
    @KeepForSdk

    /* renamed from: c */
    public static final Api<AuthProxyOptions> f5361c;
    @KeepForSdk

    /* renamed from: d */
    public static final ProxyApi f5362d = new zzar();

    static {
        Api.ClientKey<zzak> clientKey = new Api.ClientKey<>();
        f5359a = clientKey;
        C24893f c24893f = new C24893f();
        f5360b = c24893f;
        f5361c = new Api<>("Auth.PROXY_API", c24893f, clientKey);
    }
}
