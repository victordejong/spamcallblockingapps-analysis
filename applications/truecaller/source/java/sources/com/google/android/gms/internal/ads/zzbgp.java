package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbgp.class */
public abstract class zzbgp extends zzadk implements zzbgq {
    public zzbgp() {
        super("com.google.android.gms.ads.internal.client.IOnAdInspectorClosedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final boolean zzbz(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zze((zzbcz) zzadl.zzc(parcel, zzbcz.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
