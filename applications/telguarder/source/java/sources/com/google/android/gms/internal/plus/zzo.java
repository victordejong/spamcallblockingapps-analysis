package com.google.android.gms.internal.plus;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.plus.internal.zzh;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/plus/zzo.class */
final class zzo extends zzp {
    private final /* synthetic */ String[] zzam;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzo(zzj zzjVar, GoogleApiClient googleApiClient, String[] strArr) {
        super(googleApiClient, null);
        this.zzam = strArr;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void doExecute(zzh zzhVar) throws RemoteException {
        zzhVar.zza(this, this.zzam);
    }
}
