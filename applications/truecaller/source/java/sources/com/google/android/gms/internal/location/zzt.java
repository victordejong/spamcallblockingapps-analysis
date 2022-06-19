package com.google.android.gms.internal.location;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzt.class */
public final class zzt extends zzab {
    private final /* synthetic */ boolean zzcn;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzt(zzq zzqVar, GoogleApiClient googleApiClient, boolean z) {
        super(googleApiClient);
        this.zzcn = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ void doExecute(Api.AnyClient anyClient) throws RemoteException {
        ((zzaz) anyClient).zza(this.zzcn);
        setResult(Status.f5722f);
    }
}
