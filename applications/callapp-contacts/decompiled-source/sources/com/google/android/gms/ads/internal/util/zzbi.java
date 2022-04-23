package com.google.android.gms.ads.internal.util;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.internal.ads.dvb;
import com.google.android.gms.internal.ads.dvc;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbi.class */
public final class zzbi extends dvb implements zzbg {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.util.IWorkManagerUtil");
    }

    @Override // com.google.android.gms.ads.internal.util.zzbg
    public final void zzaq(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(2, zzdp);
    }

    @Override // com.google.android.gms.ads.internal.util.zzbg
    public final boolean zzd(b bVar, String str, String str2) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzdp.writeString(str);
        zzdp.writeString(str2);
        Parcel zza = zza(1, zzdp);
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }
}
