package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccf.class */
public final class zzccf extends zzaoj implements zzcch {
    public zzccf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzcch
    public final void zze(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzbt(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcch
    public final void zzf(List<Uri> list) throws RemoteException {
        Parcel zza = zza();
        zza.writeTypedList(list);
        zzbt(1, zza);
    }
}
