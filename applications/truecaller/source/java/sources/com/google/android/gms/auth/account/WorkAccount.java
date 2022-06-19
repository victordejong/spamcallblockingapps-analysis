package com.google.android.gms.auth.account;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.auth.zzh;
import com.google.android.gms.internal.auth.zzr;
import p193e.p1577m.p1578a.p1642f.p1644b.p1645a.C24879a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/account/WorkAccount.class */
public class WorkAccount {

    /* renamed from: a */
    public static final Api.ClientKey<zzr> f5342a;

    /* renamed from: b */
    public static final Api.AbstractClientBuilder<zzr, Api.ApiOptions.NoOptions> f5343b;

    /* renamed from: c */
    public static final Api<Api.ApiOptions.NoOptions> f5344c;

    static {
        Api.ClientKey<zzr> clientKey = new Api.ClientKey<>();
        f5342a = clientKey;
        C24879a c24879a = new C24879a();
        f5343b = c24879a;
        f5344c = new Api<>("WorkAccount.API", c24879a, clientKey);
        new zzh();
    }

    private WorkAccount() {
    }
}
