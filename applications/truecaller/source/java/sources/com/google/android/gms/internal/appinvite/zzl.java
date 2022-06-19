package com.google.android.gms.internal.appinvite;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/appinvite/zzl.class */
public final class zzl extends zze {
    private final /* synthetic */ zzi zzo;

    public zzl(zzi zziVar) {
        this.zzo = zziVar;
    }

    @Override // com.google.android.gms.internal.appinvite.zze, com.google.android.gms.internal.appinvite.zzo
    public final void zza(Status status) throws RemoteException {
        this.zzo.setResult((zzi) status);
    }
}
