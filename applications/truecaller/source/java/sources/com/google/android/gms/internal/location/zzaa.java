package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzaa.class */
public final class zzaa extends zzab {
    private final /* synthetic */ PendingIntent zzbx;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaa(zzq zzqVar, GoogleApiClient googleApiClient, PendingIntent pendingIntent) {
        super(googleApiClient);
        this.zzbx = pendingIntent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ void doExecute(Api.AnyClient anyClient) throws RemoteException {
        ((zzaz) anyClient).zza(this.zzbx, new zzac(this));
    }
}
