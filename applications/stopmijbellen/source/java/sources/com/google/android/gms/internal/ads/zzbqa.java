package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqa.class */
public final class zzbqa extends zzaoj implements zzbqc {
    public zzbqa(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbqc
    public final void zze() throws RemoteException {
        zzbt(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbqc
    public final void zzf(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzbt(1, zza);
    }
}
