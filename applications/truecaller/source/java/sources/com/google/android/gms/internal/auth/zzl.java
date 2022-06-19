package com.google.android.gms.internal.auth;

import android.accounts.Account;
import android.os.RemoteException;
import com.google.android.gms.auth.account.zzc;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/zzl.class */
public final class zzl extends BaseImplementation.ApiMethodImpl<Result, zzr> {
    private final /* synthetic */ Account zzo;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzl(zzh zzhVar, Api api, GoogleApiClient googleApiClient, Account account) {
        super(api, googleApiClient);
        this.zzo = account;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final Result createFailedResult(Status status) {
        return new zzq(status);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* synthetic */ void doExecute(zzr zzrVar) throws RemoteException {
        ((zzc) zzrVar.getService()).mo39132y1(new zzm(this), this.zzo);
    }
}
