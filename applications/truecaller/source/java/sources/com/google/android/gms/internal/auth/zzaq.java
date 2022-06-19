package com.google.android.gms.internal.auth;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.AuthProxy;
import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/zzaq.class */
public abstract class zzaq extends BaseImplementation.ApiMethodImpl<ProxyApi.SpatulaHeaderResult, zzak> {
    public zzaq(GoogleApiClient googleApiClient) {
        super(AuthProxy.f5361c, googleApiClient);
    }

    public static ProxyApi.SpatulaHeaderResult zzc(Status status) {
        return new zzax(status);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public /* synthetic */ Result createFailedResult(Status status) {
        return zzc(status);
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public /* synthetic */ void doExecute(zzak zzakVar) throws RemoteException {
        zzak zzakVar2 = zzakVar;
        zza(zzakVar2.getContext(), (zzan) zzakVar2.getService());
    }

    public abstract void zza(Context context, zzan zzanVar) throws RemoteException;
}
