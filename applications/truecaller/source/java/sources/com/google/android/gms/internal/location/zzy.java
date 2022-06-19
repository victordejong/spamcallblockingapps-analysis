package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationRequest;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzy.class */
public final class zzy extends zzab {
    private final /* synthetic */ PendingIntent zzbx;
    private final /* synthetic */ LocationRequest zzck;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzy(zzq zzqVar, GoogleApiClient googleApiClient, LocationRequest locationRequest, PendingIntent pendingIntent) {
        super(googleApiClient);
        this.zzck = locationRequest;
        this.zzbx = pendingIntent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ void doExecute(Api.AnyClient anyClient) throws RemoteException {
        ((zzaz) anyClient).zza(this.zzck, this.zzbx, new zzac(this));
    }
}
