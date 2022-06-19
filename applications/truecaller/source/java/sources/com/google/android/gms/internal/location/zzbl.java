package com.google.android.gms.internal.location;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResult;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzbl.class */
public final class zzbl extends LocationServices.zza<LocationSettingsResult> {
    private final /* synthetic */ LocationSettingsRequest zzdp;
    private final /* synthetic */ String zzdq = null;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbl(zzbk zzbkVar, GoogleApiClient googleApiClient, LocationSettingsRequest locationSettingsRequest, String str) {
        super(googleApiClient);
        this.zzdp = locationSettingsRequest;
    }

    public final /* synthetic */ Result createFailedResult(Status status) {
        return new LocationSettingsResult(status);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ void doExecute(Api.AnyClient anyClient) throws RemoteException {
        ((zzaz) anyClient).zza(this.zzdp, (BaseImplementation.ResultHolder<LocationSettingsResult>) this, this.zzdq);
    }
}
