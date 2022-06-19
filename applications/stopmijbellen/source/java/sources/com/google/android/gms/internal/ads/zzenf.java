package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzenf.class */
public final class zzenf<AdT> implements zzeht<AdT> {
    private final zzbme zza;
    private final zzfxb zzb;
    private final zzfie zzc;
    private final zzeno zzd;

    /* JADX WARN: Multi-variable type inference failed */
    public zzenf(zzfie zzfieVar, zzfie zzfieVar2, zzfxb zzfxbVar, zzbme zzbmeVar, zzeno zzenoVar) {
        this.zzc = zzfieVar;
        this.zzb = zzfieVar2;
        this.zza = zzfxbVar;
        this.zzd = zzbmeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeht
    public final zzfxa<AdT> zza(zzfdz zzfdzVar, zzfdn zzfdnVar) {
        zzcjr zzcjrVar = new zzcjr();
        zzenk zzenkVar = new zzenk();
        zzenkVar.zzd(new zzene(this, zzcjrVar, zzfdzVar, zzfdnVar, zzenkVar));
        zzfds zzfdsVar = zzfdnVar.zzt;
        final zzblz zzblzVar = new zzblz(zzenkVar, zzfdsVar.zzb, zzfdsVar.zza);
        zzfie zzfieVar = this.zzc;
        return zzfho.zzd(new zzfhi() { // from class: com.google.android.gms.internal.ads.zzend
            @Override // com.google.android.gms.internal.ads.zzfhi
            public final void zza() {
                zzenf.this.zzc(zzblzVar);
            }
        }, this.zzb, zzfhy.CUSTOM_RENDER_SYN, zzfieVar).zzb(zzfhy.CUSTOM_RENDER_ACK).zzd(zzcjrVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzeht
    public final boolean zzb(zzfdz zzfdzVar, zzfdn zzfdnVar) {
        zzfds zzfdsVar;
        return (this.zza == null || (zzfdsVar = zzfdnVar.zzt) == null || zzfdsVar.zza == null) ? false : true;
    }

    public final /* synthetic */ void zzc(zzblz zzblzVar) throws Exception {
        this.zza.zze(zzblzVar);
    }
}
