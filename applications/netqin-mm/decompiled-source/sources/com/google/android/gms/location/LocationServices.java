package com.google.android.gms.location;

import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.internal.location.zzaf;
import com.google.android.gms.internal.location.zzaz;
import com.google.android.gms.internal.location.zzbk;
import com.google.android.gms.internal.location.zzq;
import p131c.p161d.p170b.p224d.p259h.C4633b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/LocationServices.class */
public class LocationServices {

    /* renamed from: a */
    public static final Api.ClientKey<zzaz> f29737a = new Api.ClientKey<>();

    /* renamed from: b */
    public static final Api.AbstractClientBuilder<zzaz, Api.ApiOptions.NoOptions> f29738b;

    /* renamed from: c */
    public static final Api<Api.ApiOptions.NoOptions> f29739c;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/location/LocationServices$zza.class */
    public static abstract class zza<R extends Result> extends BaseImplementation.ApiMethodImpl<R, zzaz> {
    }

    static {
        C4633b bVar = new C4633b();
        f29738b = bVar;
        f29739c = new Api<>("LocationServices.API", bVar, f29737a);
        new zzq();
        new zzaf();
        new zzbk();
    }

    /* renamed from: a */
    public static FusedLocationProviderClient m9411a(Context context) {
        return new FusedLocationProviderClient(context);
    }
}
