package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzehx.class */
public final class zzehx implements zzeek<zzdrw, zzfbi, zzefy> {
    private final Context zza;
    private final Executor zzb;
    private final zzdsb zzc;

    public zzehx(Context context, Executor executor, zzdsb zzdsbVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzdsbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeek
    public final void zza(zzfal zzfalVar, zzezz zzezzVar, zzeef<zzfbi, zzefy> zzeefVar) throws zzfaw {
        try {
            zzfar zzfarVar = zzfalVar.zza.zza;
            if (zzfarVar.zzo.zza == 3) {
                zzeefVar.zzb.zzx(this.zza, zzfarVar.zzd, zzezzVar.zzv.toString(), zzeefVar.zzc);
            } else {
                zzeefVar.zzb.zzv(this.zza, zzfarVar.zzd, zzezzVar.zzv.toString(), zzeefVar.zzc);
            }
        } catch (Exception e) {
            String valueOf = String.valueOf(zzeefVar.zza);
            zzcgt.zzj(valueOf.length() != 0 ? "Fail to load ad from adapter ".concat(valueOf) : new String("Fail to load ad from adapter "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeek
    public final /* bridge */ /* synthetic */ zzdrw zzb(zzfal zzfalVar, zzezz zzezzVar, zzeef<zzfbi, zzefy> zzeefVar) throws zzfaw, zzehs {
        zzdrx zzU = this.zzc.zzU(new zzcxv(zzfalVar, zzezzVar, zzeefVar.zza), new zzdry(new zzdkn(zzeefVar) { // from class: com.google.android.gms.internal.ads.zzehw
            private final zzeef zza;

            {
                this.zza = zzeefVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdkn
            public final void zza(boolean z, Context context, zzdbp zzdbpVar) {
                zzeef zzeefVar2 = this.zza;
                try {
                    ((zzfbi) zzeefVar2.zzb).zzs(z);
                    ((zzfbi) zzeefVar2.zzb).zzw(context);
                } catch (zzfaw e) {
                    throw new zzdkm(e.getCause());
                }
            }
        }));
        zzU.zza().zzi(new zzcsw(zzeefVar.zzb), this.zzb);
        zzeefVar.zzc.zzc(zzU.zzm());
        return zzU.zzh();
    }
}
