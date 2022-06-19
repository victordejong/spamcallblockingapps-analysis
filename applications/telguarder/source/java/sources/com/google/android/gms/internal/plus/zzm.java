package com.google.android.gms.internal.plus;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.plus.internal.zzh;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/plus/zzm.class */
final class zzm extends zzp {
    public zzm(zzj zzjVar, GoogleApiClient googleApiClient) {
        super(googleApiClient, null);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void doExecute(zzh zzhVar) throws RemoteException {
        zzhVar.zza(this);
    }
}
