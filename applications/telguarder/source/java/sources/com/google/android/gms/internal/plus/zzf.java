package com.google.android.gms.internal.plus;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.plus.internal.zzh;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/plus/zzf.class */
final class zzf extends zzg {
    public zzf(zze zzeVar, GoogleApiClient googleApiClient) {
        super(googleApiClient, null);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void doExecute(zzh zzhVar) throws RemoteException {
        zzhVar.zzb(this);
    }
}
