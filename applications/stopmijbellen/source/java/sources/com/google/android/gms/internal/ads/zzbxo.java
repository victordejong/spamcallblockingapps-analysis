package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbxo.class */
public final class zzbxo extends zzaoj implements zzbxq {
    public zzbxo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
    }

    @Override // com.google.android.gms.internal.ads.zzbxq
    public final IObjectWrapper zze() throws RemoteException {
        return C0033h.m8887j(zzbs(1, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbxq
    public final boolean zzf() throws RemoteException {
        Parcel zzbs = zzbs(2, zza());
        boolean zzg = zzaol.zzg(zzbs);
        zzbs.recycle();
        return zzg;
    }
}
