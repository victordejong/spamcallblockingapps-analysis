package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbim.class */
public abstract class zzbim extends zzaok implements zzbin {
    public zzbim() {
        super("com.google.android.gms.ads.internal.client.IOnAdInspectorClosedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zze((zzbew) zzaol.zza(parcel, zzbew.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
