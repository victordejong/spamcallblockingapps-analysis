package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcad.class */
public final class zzcad extends zzadj implements zzcaf {
    public zzcad(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zze(List<Uri> list) throws RemoteException {
        Parcel zza = zza();
        zza.writeTypedList(list);
        zzbj(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zzf(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzbj(2, zza);
    }
}
