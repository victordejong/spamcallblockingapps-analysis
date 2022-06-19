package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import p143k2.EnumC3320a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbyv.class */
final class zzbyv implements Runnable {
    public final /* synthetic */ EnumC3320a zza;
    public final /* synthetic */ zzbyx zzb;

    public zzbyv(zzbyx zzbyxVar, EnumC3320a enumC3320a) {
        this.zzb = zzbyxVar;
        this.zza = enumC3320a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbxn zzbxnVar;
        try {
            zzbxnVar = this.zzb.zza;
            zzbxnVar.zzg(zzbyy.zza(this.zza));
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }
}
