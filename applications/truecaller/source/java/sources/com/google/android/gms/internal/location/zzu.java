package com.google.android.gms.internal.location;

import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzu.class */
public final class zzu extends zzab {
    private final /* synthetic */ Location zzco;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzu(zzq zzqVar, GoogleApiClient googleApiClient, Location location) {
        super(googleApiClient);
        this.zzco = location;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ void doExecute(Api.AnyClient anyClient) throws RemoteException {
        ((zzaz) anyClient).zza(this.zzco);
        setResult(Status.f5722f);
    }
}
