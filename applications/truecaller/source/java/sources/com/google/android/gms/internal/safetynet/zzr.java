package com.google.android.gms.internal.safetynet;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.safetynet.zzk;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/safetynet/zzr.class */
public final class zzr extends zzk.zze {
    private final /* synthetic */ String zzac;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzr(zzk zzkVar, GoogleApiClient googleApiClient, String str) {
        super(googleApiClient);
        this.zzac = str;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* synthetic */ void doExecute(zzx zzxVar) throws RemoteException {
        ((zzi) zzxVar.getService()).zza(this.zzaf, this.zzac);
    }
}
