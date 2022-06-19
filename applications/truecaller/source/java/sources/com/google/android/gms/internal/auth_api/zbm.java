package com.google.android.gms.internal.auth_api;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.internal.auth-api.zbt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth_api/zbm.class */
public abstract class zbm<R extends Result> extends BaseImplementation.ApiMethodImpl<R, zbo> {
    public zbm(GoogleApiClient googleApiClient) {
        super(Auth.f5346a, googleApiClient);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void doExecute(zbo zboVar) throws RemoteException {
        zbo zboVar2 = zboVar;
        zba(zboVar2.getContext(), (zbt) zboVar2.getService());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl, com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    @KeepForSdk
    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((zbm<R>) ((Result) obj));
    }

    public abstract void zba(Context context, zbt zbtVar) throws DeadObjectException, RemoteException;
}
