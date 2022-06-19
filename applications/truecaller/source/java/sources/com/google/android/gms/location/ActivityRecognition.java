package com.google.android.gms.location;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.location.zzaz;
import com.google.android.gms.internal.location.zze;
import e.m.a.f.j.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/location/ActivityRecognition.class */
public class ActivityRecognition {

    /* renamed from: a */
    public static final Api.ClientKey<zzaz> f6223a;

    /* renamed from: b */
    public static final Api.AbstractClientBuilder<zzaz, Api.ApiOptions.NoOptions> f6224b;

    /* renamed from: c */
    public static final Api<Api.ApiOptions.NoOptions> f6225c;

    static {
        Api.ClientKey<zzaz> clientKey = new Api.ClientKey<>();
        f6223a = clientKey;
        a aVar = new a();
        f6224b = aVar;
        f6225c = new Api<>("ActivityRecognition.API", aVar, clientKey);
        new zze();
    }

    private ActivityRecognition() {
    }
}
