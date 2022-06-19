package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.location.ActivityTransitionRequest;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzh.class */
public final class zzh extends zzj {
    private final /* synthetic */ ActivityTransitionRequest zzby;
    private final /* synthetic */ PendingIntent zzbz;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzh(zze zzeVar, GoogleApiClient googleApiClient, ActivityTransitionRequest activityTransitionRequest, PendingIntent pendingIntent) {
        super(googleApiClient);
        this.zzby = activityTransitionRequest;
        this.zzbz = pendingIntent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ void doExecute(Api.AnyClient anyClient) throws RemoteException {
        ((zzaz) anyClient).zza(this.zzby, this.zzbz, (BaseImplementation.ResultHolder<Status>) this);
    }
}
