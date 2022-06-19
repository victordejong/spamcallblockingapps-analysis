package com.google.android.gms.internal.auth;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/auth/zzau.class */
public final class zzau extends zzaq {
    public zzau(zzar zzarVar, GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    @Override // com.google.android.gms.internal.auth.zzaq
    public final void zza(Context context, zzan zzanVar) throws RemoteException {
        zzanVar.zza(new zzav(this));
    }
}
