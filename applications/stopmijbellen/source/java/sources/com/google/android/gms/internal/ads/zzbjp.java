package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjp.class */
public final class zzbjp extends zzbtt {
    public final /* synthetic */ zzbjq zza;

    public /* synthetic */ zzbjp(zzbjq zzbjqVar, zzbjo zzbjoVar) {
        this.zza = zzbjqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbtu
    public final void zzb(List<zzbtn> list) throws RemoteException {
        InitializationStatus zzx;
        ArrayList arrayList;
        ArrayList arrayList2;
        this.zza.zze = false;
        this.zza.zzf = true;
        zzbjq zzbjqVar = this.zza;
        zzx = zzbjq.zzx(list);
        arrayList = zzbjq.zzf().zzb;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((OnInitializationCompleteListener) arrayList.get(i)).onInitializationComplete(zzx);
        }
        arrayList2 = zzbjq.zzf().zzb;
        arrayList2.clear();
    }
}
