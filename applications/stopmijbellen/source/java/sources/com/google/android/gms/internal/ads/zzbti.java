package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbti.class */
public final class zzbti implements zzfvx<zzbtg, ParcelFileDescriptor> {
    public final /* synthetic */ zzbta zza;

    public zzbti(zzbtm zzbtmVar, zzbta zzbtaVar) {
        this.zza = zzbtaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfvx
    public final /* bridge */ /* synthetic */ zzfxa<ParcelFileDescriptor> zza(zzbtg zzbtgVar) throws Exception {
        zzcjr zzcjrVar = new zzcjr();
        zzbtgVar.zze(this.zza, new zzbth(this, zzcjrVar));
        return zzcjrVar;
    }
}
