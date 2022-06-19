package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.location.GeofencingRequest;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzag.class */
public final class zzag extends zzai {
    private final /* synthetic */ PendingIntent zzbz;
    private final /* synthetic */ GeofencingRequest zzcs;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzag(zzaf zzafVar, GoogleApiClient googleApiClient, GeofencingRequest geofencingRequest, PendingIntent pendingIntent) {
        super(googleApiClient);
        this.zzcs = geofencingRequest;
        this.zzbz = pendingIntent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ void doExecute(Api.AnyClient anyClient) throws RemoteException {
        ((zzaz) anyClient).zza(this.zzcs, this.zzbz, (BaseImplementation.ResultHolder<Status>) this);
    }
}
