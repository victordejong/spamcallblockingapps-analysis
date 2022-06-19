package com.google.android.gms.internal.plus;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.plus.internal.zzh;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/plus/zzl.class */
final class zzl extends zzp {
    private final /* synthetic */ String zzak;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzl(zzj zzjVar, GoogleApiClient googleApiClient, String str) {
        super(googleApiClient, null);
        this.zzak = str;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void doExecute(zzh zzhVar) throws RemoteException {
        setCancelToken(zzhVar.zza(this, 0, this.zzak));
    }
}
