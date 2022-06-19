package com.google.android.gms.internal.auth;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyRequest;
import com.google.android.gms.common.api.GoogleApiClient;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/zzas.class */
public final class zzas extends zzap {
    private final /* synthetic */ ProxyRequest zzce;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzas(zzar zzarVar, GoogleApiClient googleApiClient, ProxyRequest proxyRequest) {
        super(googleApiClient);
        this.zzce = proxyRequest;
    }

    @Override // com.google.android.gms.internal.auth.zzap
    public final void zza(Context context, zzan zzanVar) throws RemoteException {
        zzanVar.zza(new zzat(this), this.zzce);
    }
}
