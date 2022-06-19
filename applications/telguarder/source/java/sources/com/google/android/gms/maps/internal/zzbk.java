package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.maps.zzb;
import com.google.android.gms.internal.maps.zzc;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/internal/zzbk.class */
public abstract class zzbk extends zzb implements zzbj {
    public zzbk() {
        super("com.google.android.gms.maps.internal.IOnStreetViewPanoramaChangeListener");
    }

    @Override // com.google.android.gms.internal.maps.zzb
    protected final boolean dispatchTransaction(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            onStreetViewPanoramaChange((StreetViewPanoramaLocation) zzc.zza(parcel, StreetViewPanoramaLocation.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
