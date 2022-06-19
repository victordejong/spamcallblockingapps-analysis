package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbih.class */
public final class zzbih extends zzaoj implements zzbij {
    public zzbih(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMuteThisAdReason");
    }

    @Override // com.google.android.gms.internal.ads.zzbij
    public final String zze() throws RemoteException {
        Parcel zzbs = zzbs(1, zza());
        String readString = zzbs.readString();
        zzbs.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbij
    public final String zzf() throws RemoteException {
        Parcel zzbs = zzbs(2, zza());
        String readString = zzbs.readString();
        zzbs.recycle();
        return readString;
    }
}
