package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbvn.class */
public final class zzbvn extends zzadj implements zzbvp {
    public zzbvn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
    }

    @Override // com.google.android.gms.internal.ads.zzbvp
    public final IObjectWrapper zze() throws RemoteException {
        return C22128a.m8608j1(zzbi(1, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbvp
    public final boolean zzf() throws RemoteException {
        Parcel zzbi = zzbi(2, zza());
        boolean zza = zzadl.zza(zzbi);
        zzbi.recycle();
        return zza;
    }
}
