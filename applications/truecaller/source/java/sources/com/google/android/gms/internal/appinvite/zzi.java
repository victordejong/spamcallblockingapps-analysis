package com.google.android.gms.internal.appinvite;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/appinvite/zzi.class */
public final class zzi extends zzh<Status> {
    private final String zzj;

    public zzi(zzf zzfVar, GoogleApiClient googleApiClient, String str) {
        super(googleApiClient);
        this.zzj = str;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* synthetic */ void doExecute(zzm zzmVar) throws RemoteException {
        zzm zzmVar2 = zzmVar;
        try {
            ((zzq) zzmVar2.getService()).zzb(new zzl(this), this.zzj);
        } catch (RemoteException e) {
        }
    }
}
