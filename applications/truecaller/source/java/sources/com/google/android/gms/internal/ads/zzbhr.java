package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbhr.class */
public final class zzbhr extends zzbrr {
    public final /* synthetic */ zzbhs zza;

    public /* synthetic */ zzbhr(zzbhs zzbhsVar, zzbhp zzbhpVar) {
        this.zza = zzbhsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrs
    public final void zzb(List<zzbrl> list) throws RemoteException {
        InitializationStatus zzx;
        ArrayList arrayList;
        ArrayList arrayList2;
        this.zza.zze = false;
        this.zza.zzf = true;
        zzbhs zzbhsVar = this.zza;
        zzx = zzbhs.zzx(list);
        arrayList = zzbhs.zze().zza;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((OnInitializationCompleteListener) arrayList.get(i)).onInitializationComplete(zzx);
        }
        arrayList2 = zzbhs.zze().zza;
        arrayList2.clear();
    }
}
