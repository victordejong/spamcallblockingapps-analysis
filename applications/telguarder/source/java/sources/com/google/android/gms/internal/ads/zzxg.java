package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzxg.class */
public abstract class zzxg extends zzgy implements zzxd {
    public zzxg() {
        super("com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzb((zzvl) zzgx.zza(parcel, zzvl.CREATOR));
            parcel2.writeNoException();
            return true;
        } else if (i == 2) {
            String mediationAdapterClassName = getMediationAdapterClassName();
            parcel2.writeNoException();
            parcel2.writeString(mediationAdapterClassName);
            return true;
        } else if (i == 3) {
            boolean isLoading = isLoading();
            parcel2.writeNoException();
            zzgx.writeBoolean(parcel2, isLoading);
            return true;
        } else if (i == 4) {
            String zzkh = zzkh();
            parcel2.writeNoException();
            parcel2.writeString(zzkh);
            return true;
        } else if (i != 5) {
            return false;
        } else {
            zza((zzvl) zzgx.zza(parcel, zzvl.CREATOR), parcel.readInt());
            parcel2.writeNoException();
            return true;
        }
    }
}
