package com.google.android.gms.internal.safetynet;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.safetynet.zzk;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/safetynet/zzm.class */
public final class zzm extends zzk.zzf {
    private final /* synthetic */ String zzx = null;
    private final /* synthetic */ List zzy;
    private final /* synthetic */ String zzz;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzm(zzk zzkVar, GoogleApiClient googleApiClient, List list, String str, String str2) {
        super(googleApiClient);
        this.zzy = list;
        this.zzz = str;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* synthetic */ void doExecute(zzx zzxVar) throws RemoteException {
        zzxVar.zza(this.zzaf, this.zzy, 1, this.zzz, this.zzx);
    }
}
