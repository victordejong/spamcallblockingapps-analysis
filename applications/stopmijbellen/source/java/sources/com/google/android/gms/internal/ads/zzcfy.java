package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfy.class */
final class zzcfy implements zzfwm<Void> {
    public final /* synthetic */ zzfxa zza;

    public zzcfy(zzcfz zzcfzVar, zzfxa zzfxaVar) {
        this.zza = zzfxaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zza(Throwable th) {
        List list;
        list = zzcfz.zzc;
        list.remove(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final /* bridge */ /* synthetic */ void zzb(Void r4) {
        List list;
        list = zzcfz.zzc;
        list.remove(this.zza);
    }
}
