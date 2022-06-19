package com.google.android.gms.internal.location;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.location.LocationListener;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzz.class */
public final class zzz extends zzab {
    private final /* synthetic */ LocationListener zzcl;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzz(zzq zzqVar, GoogleApiClient googleApiClient, LocationListener locationListener) {
        super(googleApiClient);
        this.zzcl = locationListener;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ void doExecute(Api.AnyClient anyClient) throws RemoteException {
        ((zzaz) anyClient).zza(ListenerHolders.m39020b(this.zzcl, LocationListener.class.getSimpleName()), new zzac(this));
    }
}
