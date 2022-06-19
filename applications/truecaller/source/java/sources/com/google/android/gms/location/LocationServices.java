package com.google.android.gms.location;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.location.zzaf;
import com.google.android.gms.internal.location.zzaz;
import com.google.android.gms.internal.location.zzbk;
import com.google.android.gms.internal.location.zzq;
import e.m.a.f.j.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/location/LocationServices.class */
public class LocationServices {

    /* renamed from: a */
    public static final Api.ClientKey<zzaz> f6229a;

    /* renamed from: b */
    public static final Api.AbstractClientBuilder<zzaz, Api.ApiOptions.NoOptions> f6230b;

    /* renamed from: c */
    public static final Api<Api.ApiOptions.NoOptions> f6231c;
    @Deprecated

    /* renamed from: d */
    public static final SettingsApi f6232d = new zzbk();

    static {
        Api.ClientKey<zzaz> clientKey = new Api.ClientKey<>();
        f6229a = clientKey;
        b bVar = new b();
        f6230b = bVar;
        f6231c = new Api<>("LocationServices.API", bVar, clientKey);
        new zzq();
        new zzaf();
    }

    private LocationServices() {
    }

    /* renamed from: a */
    public static zzaz m38711a(GoogleApiClient googleApiClient) {
        Preconditions.m38906b(googleApiClient != null, "GoogleApiClient parameter is required.");
        zzaz zzazVar = (zzaz) googleApiClient.mo38997k(f6229a);
        Preconditions.m38895m(zzazVar != null, "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature.");
        return zzazVar;
    }
}
