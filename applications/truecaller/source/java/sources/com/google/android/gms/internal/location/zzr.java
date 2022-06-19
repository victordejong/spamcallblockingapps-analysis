package com.google.android.gms.internal.location;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzr.class */
public final class zzr extends zzab {
    private final /* synthetic */ LocationRequest zzck;
    private final /* synthetic */ LocationListener zzcl;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzr(zzq zzqVar, GoogleApiClient googleApiClient, LocationRequest locationRequest, LocationListener locationListener) {
        super(googleApiClient);
        this.zzck = locationRequest;
        this.zzcl = locationListener;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ void doExecute(Api.AnyClient anyClient) throws RemoteException {
        ((zzaz) anyClient).zza(this.zzck, ListenerHolders.m39021a(this.zzcl, zzbm.zzc(), LocationListener.class.getSimpleName()), new zzac(this));
    }
}
