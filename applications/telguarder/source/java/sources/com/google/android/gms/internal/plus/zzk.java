package com.google.android.gms.internal.plus;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.plus.internal.zzh;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/plus/zzk.class */
final class zzk extends zzp {
    private final /* synthetic */ int zzaj;
    private final /* synthetic */ String zzak;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzk(zzj zzjVar, GoogleApiClient googleApiClient, int i, String str) {
        super(googleApiClient, null);
        this.zzaj = i;
        this.zzak = str;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void doExecute(zzh zzhVar) throws RemoteException {
        setCancelToken(zzhVar.zza(this, this.zzaj, this.zzak));
    }
}
