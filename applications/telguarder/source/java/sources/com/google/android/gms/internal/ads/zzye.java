package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzye.class */
public abstract class zzye extends zzgy implements zzyb {
    public zzye() {
        super("com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzb((zzvg) zzgx.zza(parcel, zzvg.CREATOR));
        } else if (i == 2) {
            onAdShowedFullScreenContent();
        } else if (i != 3) {
            return false;
        } else {
            onAdDismissedFullScreenContent();
        }
        parcel2.writeNoException();
        return true;
    }
}
