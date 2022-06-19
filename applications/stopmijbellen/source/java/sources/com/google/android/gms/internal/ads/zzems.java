package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdError;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzems.class */
final class zzems implements zzdga {
    public boolean zza = false;
    public final /* synthetic */ zzehw zzb;
    public final /* synthetic */ zzcjr zzc;
    public final /* synthetic */ zzemt zzd;

    public zzems(zzemt zzemtVar, zzehw zzehwVar, zzcjr zzcjrVar) {
        this.zzd = zzemtVar;
        this.zzb = zzehwVar;
        this.zzc = zzcjrVar;
    }

    private final void zze(zzbew zzbewVar) {
        int i = 1;
        if (true == ((Boolean) zzbgq.zzc().zzb(zzblj.zzdT)).booleanValue()) {
            i = 3;
        }
        this.zzc.zze(new zzehx(i, zzbewVar));
    }

    @Override // com.google.android.gms.internal.ads.zzdga
    public final void zza(int i) {
        if (this.zza) {
            return;
        }
        zze(new zzbew(i, zzemt.zze(this.zzb.zza, i), AdError.UNDEFINED_DOMAIN, null, null));
    }

    @Override // com.google.android.gms.internal.ads.zzdga
    public final void zzb(zzbew zzbewVar) {
        synchronized (this) {
            this.zza = true;
            zze(zzbewVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdga
    public final void zzc(int i, String str) {
        synchronized (this) {
            if (this.zza) {
                return;
            }
            this.zza = true;
            String str2 = str;
            if (str == null) {
                str2 = zzemt.zze(this.zzb.zza, i);
            }
            zze(new zzbew(i, str2, AdError.UNDEFINED_DOMAIN, null, null));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdga
    public final void zzd() {
        synchronized (this) {
            this.zzc.zzd(null);
        }
    }
}
