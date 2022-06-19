package com.google.android.gms.maps.internal;

import android.location.Location;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.maps.zza;
import com.google.android.gms.internal.maps.zzc;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/internal/zzai.class */
public final class zzai extends zza implements zzah {
    public zzai(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IOnLocationChangeListener");
    }

    @Override // com.google.android.gms.maps.internal.zzah
    public final void zza(Location location) throws RemoteException {
        Parcel zza = zza();
        zzc.zza(zza, location);
        zzb(2, zza);
    }
}
