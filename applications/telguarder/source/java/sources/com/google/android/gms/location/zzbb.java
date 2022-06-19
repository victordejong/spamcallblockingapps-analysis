package com.google.android.gms.location;

import android.location.Location;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.internal.location.zza;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/zzbb.class */
public final class zzbb extends zza implements zzbd {
    public zzbb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.ILocationListener");
    }

    @Override // com.google.android.gms.location.zzbd
    public final void zzd(Location location) throws RemoteException {
        throw null;
    }
}
