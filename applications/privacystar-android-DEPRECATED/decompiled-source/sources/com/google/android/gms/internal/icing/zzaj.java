package com.google.android.gms.internal.icing;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.icing.zzai;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzaj.class */
public final class zzaj extends zzai.zzc<Status> {
    private final /* synthetic */ zzx[] zzas;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaj(zzai zzaiVar, GoogleApiClient googleApiClient, zzx[] zzxVarArr) {
        super(googleApiClient);
        this.zzas = zzxVarArr;
    }

    @Override // com.google.android.gms.internal.icing.zzai.zzb
    protected final void zza(zzab zzabVar) throws RemoteException {
        zzabVar.zza(new zzai.zzd(this), null, this.zzas);
    }
}
