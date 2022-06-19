package com.google.android.gms.internal.auth;

import android.os.RemoteException;
import com.google.android.gms.auth.account.WorkAccountApi;
import com.google.android.gms.auth.account.zzc;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/zzj.class */
public final class zzj extends BaseImplementation.ApiMethodImpl<WorkAccountApi.AddAccountResult, zzr> {
    private final /* synthetic */ String zzq;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzj(zzh zzhVar, Api api, GoogleApiClient googleApiClient, String str) {
        super(api, googleApiClient);
        this.zzq = str;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        return new zzo(status, null);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* synthetic */ void doExecute(zzr zzrVar) throws RemoteException {
        ((zzc) zzrVar.getService()).mo39133w1(new zzk(this), this.zzq);
    }
}
