package com.google.android.gms.safetynet;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.safetynet.zzk;
import com.google.android.gms.internal.safetynet.zzx;
import com.google.android.gms.internal.safetynet.zzy;
import e.m.a.f.n.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/safetynet/SafetyNet.class */
public final class SafetyNet {

    /* renamed from: a */
    public static final Api.ClientKey<zzx> f6458a;

    /* renamed from: b */
    public static final Api.AbstractClientBuilder<zzx, Api.ApiOptions.NoOptions> f6459b;
    @Deprecated

    /* renamed from: c */
    public static final Api<Api.ApiOptions.NoOptions> f6460c;
    @Deprecated

    /* renamed from: d */
    public static final SafetyNetApi f6461d = new zzk();

    static {
        Api.ClientKey<zzx> clientKey = new Api.ClientKey<>();
        f6458a = clientKey;
        a aVar = new a();
        f6459b = aVar;
        f6460c = new Api<>("SafetyNet.API", aVar, clientKey);
        new zzy();
    }

    private SafetyNet() {
    }
}
