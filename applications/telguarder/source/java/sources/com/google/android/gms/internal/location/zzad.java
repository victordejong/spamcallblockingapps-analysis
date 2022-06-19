package com.google.android.gms.internal.location;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.zzbq;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzad.class */
public final class zzad extends zzae {
    final /* synthetic */ zzbq zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzad(zzaf zzafVar, GoogleApiClient googleApiClient, zzbq zzbqVar) {
        super(googleApiClient);
        this.zza = zzbqVar;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* bridge */ /* synthetic */ void doExecute(zzaz zzazVar) throws RemoteException {
        zzazVar.zzw(this.zza, this);
    }
}
