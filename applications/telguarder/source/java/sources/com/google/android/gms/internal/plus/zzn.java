package com.google.android.gms.internal.plus;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.plus.internal.zzh;
import java.util.Collection;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/plus/zzn.class */
final class zzn extends zzp {
    private final /* synthetic */ Collection zzal;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzn(zzj zzjVar, GoogleApiClient googleApiClient, Collection collection) {
        super(googleApiClient, null);
        this.zzal = collection;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    protected final /* synthetic */ void doExecute(zzh zzhVar) throws RemoteException {
        zzhVar.zza(this, this.zzal);
    }
}
