package com.google.android.gms.internal.safetynet;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.safetynet.zzk;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/safetynet/zzp.class */
public final class zzp extends zzk.zzc {
    public zzp(zzk zzkVar, GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* synthetic */ void doExecute(zzx zzxVar) throws RemoteException {
        ((zzi) zzxVar.getService()).zzc(this.zzaf);
    }
}
