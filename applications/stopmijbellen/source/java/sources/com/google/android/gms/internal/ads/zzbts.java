package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbts.class */
public final class zzbts extends zzaoj implements zzbtu {
    public zzbts(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.initialization.IInitializationCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbtu
    public final void zzb(List<zzbtn> list) throws RemoteException {
        Parcel zza = zza();
        zza.writeTypedList(list);
        zzbt(1, zza);
    }
}
