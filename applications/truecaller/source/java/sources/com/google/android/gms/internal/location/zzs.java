package com.google.android.gms.internal.location;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.location.LocationCallback;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzs.class */
public final class zzs extends zzab {
    private final /* synthetic */ LocationCallback zzcm;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzs(zzq zzqVar, GoogleApiClient googleApiClient, LocationCallback locationCallback) {
        super(googleApiClient);
        this.zzcm = locationCallback;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ void doExecute(Api.AnyClient anyClient) throws RemoteException {
        ((zzaz) anyClient).zzb(ListenerHolders.m39020b(this.zzcm, LocationCallback.class.getSimpleName()), new zzac(this));
    }
}
