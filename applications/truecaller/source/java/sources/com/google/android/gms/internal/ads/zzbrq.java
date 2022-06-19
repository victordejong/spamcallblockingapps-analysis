package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbrq.class */
public final class zzbrq extends zzadj implements zzbrs {
    public zzbrq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.initialization.IInitializationCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbrs
    public final void zzb(List<zzbrl> list) throws RemoteException {
        Parcel zza = zza();
        zza.writeTypedList(list);
        zzbj(1, zza);
    }
}
