package com.google.android.gms.ads.internal.util;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.internal.ads.dvb;
import com.google.android.gms.internal.ads.dvc;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbi.class */
public final class zzbi extends dvb implements zzbg {
    public zzbi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.util.IWorkManagerUtil");
    }

    @Override // com.google.android.gms.ads.internal.util.zzbg
    public final void zzaq(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(2, zzdp);
    }

    @Override // com.google.android.gms.ads.internal.util.zzbg
    public final boolean zzd(AbstractC12126b abstractC12126b, String str, String str2) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzdp.writeString(str);
        zzdp.writeString(str2);
        Parcel zza = zza(1, zzdp);
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }
}
