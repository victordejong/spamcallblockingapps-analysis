package com.google.android.gms.internal.location;

import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzp.class */
final class zzp extends zzx {
    final /* synthetic */ Location zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzp(zzz zzzVar, GoogleApiClient googleApiClient, Location location) {
        super(googleApiClient);
        this.zza = location;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* bridge */ /* synthetic */ void doExecute(zzaz zzazVar) throws RemoteException {
        zzazVar.zzJ(this.zza);
        setResult((zzp) Status.RESULT_SUCCESS);
    }
}
