package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzarh.class */
public final class zzarh extends zzgw implements zzarf {
    public zzarh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtils");
    }

    @Override // com.google.android.gms.internal.ads.zzarf
    public final void zzc(Intent intent) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, intent);
        zzb(1, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzarf
    public final void zzc(IObjectWrapper iObjectWrapper, String str, String str2) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzdo.writeString(str);
        zzdo.writeString(str2);
        zzb(2, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzarf
    public final void zzvt() throws RemoteException {
        zzb(3, zzdo());
    }
}
