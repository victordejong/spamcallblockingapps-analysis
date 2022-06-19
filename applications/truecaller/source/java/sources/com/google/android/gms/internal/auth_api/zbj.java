package com.google.android.gms.internal.auth_api;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.auth-api.zbl;
import com.google.android.gms.internal.auth-api.zbt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/zbj.class */
public final class zbj extends zbm<Status> {
    public zbj(zbl zblVar, GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* bridge */ /* synthetic */ Result createFailedResult(Status status) {
        return status;
    }

    @Override // com.google.android.gms.internal.auth_api.zbm
    public final void zba(Context context, zbt zbtVar) throws RemoteException {
        zbtVar.zbf(new zbk(this));
    }
}
