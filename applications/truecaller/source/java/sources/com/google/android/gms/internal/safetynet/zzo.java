package com.google.android.gms.internal.safetynet;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.safetynet.zzk;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/safetynet/zzo.class */
public final class zzo extends zzk.zzc {
    public zzo(zzk zzkVar, GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* synthetic */ void doExecute(zzx zzxVar) throws RemoteException {
        ((zzi) zzxVar.getService()).zzb(this.zzaf);
    }
}
