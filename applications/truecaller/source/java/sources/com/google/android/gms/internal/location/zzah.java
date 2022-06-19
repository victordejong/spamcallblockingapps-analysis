package com.google.android.gms.internal.location;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.location.zzal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzah.class */
public final class zzah extends zzai {
    private final /* synthetic */ zzal zzct;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzah(zzaf zzafVar, GoogleApiClient googleApiClient, zzal zzalVar) {
        super(googleApiClient);
        this.zzct = zzalVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ void doExecute(Api.AnyClient anyClient) throws RemoteException {
        ((zzaz) anyClient).zza(this.zzct, (BaseImplementation.ResultHolder<Status>) this);
    }
}
