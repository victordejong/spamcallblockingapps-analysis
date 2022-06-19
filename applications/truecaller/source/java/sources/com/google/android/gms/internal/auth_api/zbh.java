package com.google.android.gms.internal.auth_api;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.auth-api.zbl;
import com.google.android.gms.internal.auth-api.zbt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/zbh.class */
public final class zbh extends zbm<Status> {
    public final /* synthetic */ Credential zba;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zbh(zbl zblVar, GoogleApiClient googleApiClient, Credential credential) {
        super(googleApiClient);
        this.zba = credential;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* bridge */ /* synthetic */ Result createFailedResult(Status status) {
        return status;
    }

    @Override // com.google.android.gms.internal.auth_api.zbm
    public final void zba(Context context, zbt zbtVar) throws RemoteException {
        zbtVar.zbe(new zbk(this), new zbu(this.zba));
    }
}
