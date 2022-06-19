package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeit.class */
public final class zzeit implements zzeek<zzdrw, zzfbi, zzefz> {
    private final Context zza;
    private final Executor zzb;
    private final zzdsb zzc;

    public zzeit(Context context, Executor executor, zzdsb zzdsbVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzdsbVar;
    }

    public static final void zze(zzfal zzfalVar, zzezz zzezzVar, zzeef<zzfbi, zzefz> zzeefVar) {
        try {
            zzeefVar.zzb.zzl(zzfalVar.zza.zza.zzd, zzezzVar.zzv.toString());
        } catch (Exception e) {
            String valueOf = String.valueOf(zzeefVar.zza);
            zzcgt.zzj(valueOf.length() != 0 ? "Fail to load ad from adapter ".concat(valueOf) : new String("Fail to load ad from adapter "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeek
    public final void zza(zzfal zzfalVar, zzezz zzezzVar, zzeef<zzfbi, zzefz> zzeefVar) throws zzfaw {
        if (zzeefVar.zzb.zzn()) {
            zze(zzfalVar, zzezzVar, zzeefVar);
            return;
        }
        zzeefVar.zzc.zzd(new zzeir(this, zzfalVar, zzezzVar, zzeefVar));
        zzeefVar.zzb.zzk(this.zza, zzfalVar.zza.zza.zzd, null, zzeefVar.zzc, zzezzVar.zzv.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzeek
    public final /* bridge */ /* synthetic */ zzdrw zzb(zzfal zzfalVar, zzezz zzezzVar, zzeef<zzfbi, zzefz> zzeefVar) throws zzfaw, zzehs {
        zzdrx zzU = this.zzc.zzU(new zzcxv(zzfalVar, zzezzVar, zzeefVar.zza), new zzdry(new zzdkn(zzeefVar) { // from class: com.google.android.gms.internal.ads.zzeip
            private final zzeef zza;

            {
                this.zza = zzeefVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdkn
            public final void zza(boolean z, Context context, zzdbp zzdbpVar) {
                zzeef zzeefVar2 = this.zza;
                try {
                    ((zzfbi) zzeefVar2.zzb).zzs(z);
                    ((zzfbi) zzeefVar2.zzb).zzm();
                } catch (zzfaw e) {
                    zzcgt.zzj("Cannot show rewarded video.", e);
                    throw new zzdkm(e.getCause());
                }
            }
        }));
        zzU.zza().zzi(new zzcsw(zzeefVar.zzb), this.zzb);
        zzdcj zzb = zzU.zzb();
        zzdba zzc = zzU.zzc();
        zzeefVar.zzc.zzc(new zzeis(this, zzU.zzi(), zzc, zzb, zzU.zzk()));
        return zzU.zzh();
    }
}
