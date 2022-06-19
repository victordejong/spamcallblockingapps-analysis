package com.google.android.gms.appinvite;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.appinvite.zzf;
import com.google.android.gms.internal.appinvite.zzm;
import p193e.p1577m.p1578a.p1642f.p1643a.C24877a;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/appinvite/AppInvite.class */
public final class AppInvite {

    /* renamed from: a */
    public static final Api.ClientKey<zzm> f5312a;

    /* renamed from: b */
    public static final Api.AbstractClientBuilder<zzm, Api.ApiOptions.NoOptions> f5313b;

    /* renamed from: c */
    public static final Api<Api.ApiOptions.NoOptions> f5314c;

    static {
        Api.ClientKey<zzm> clientKey = new Api.ClientKey<>();
        f5312a = clientKey;
        C24877a c24877a = new C24877a();
        f5313b = c24877a;
        f5314c = new Api<>("AppInvite.API", c24877a, clientKey);
        new zzf();
    }

    private AppInvite() {
    }
}
