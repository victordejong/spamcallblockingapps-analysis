package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcdr.class */
public final class zzcdr implements zzfrz<Void> {
    public final /* synthetic */ zzfsm zza;

    public zzcdr(zzcds zzcdsVar, zzfsm zzfsmVar) {
        this.zza = zzfsmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final void zza(Throwable th) {
        List list;
        list = zzcds.zzc;
        list.remove(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfrz
    public final /* bridge */ /* synthetic */ void zzb(Void r4) {
        List list;
        list = zzcds.zzc;
        list.remove(this.zza);
    }
}
