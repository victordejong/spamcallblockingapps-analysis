package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzbx;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegy.class */
public final class zzegy implements zzeek<zzdmh, zzfbi, zzefy> {
    private final Context zza;
    private final zzdlb zzb;
    private final Executor zzc;

    public zzegy(Context context, zzdlb zzdlbVar, Executor executor) {
        this.zza = context;
        this.zzb = zzdlbVar;
        this.zzc = executor;
    }

    private static final boolean zzc(zzfal zzfalVar, int i) {
        return zzfalVar.zza.zza.zzg.contains(Integer.toString(i));
    }

    @Override // com.google.android.gms.internal.ads.zzeek
    public final void zza(zzfal zzfalVar, zzezz zzezzVar, zzeef<zzfbi, zzefy> zzeefVar) throws zzfaw {
        zzfbi zzfbiVar = zzeefVar.zzb;
        Context context = this.zza;
        zzbdg zzbdgVar = zzfalVar.zza.zza.zzd;
        String jSONObject = zzezzVar.zzv.toString();
        String zzl = zzbx.zzl(zzezzVar.zzs);
        zzefy zzefyVar = zzeefVar.zzc;
        zzfar zzfarVar = zzfalVar.zza.zza;
        zzfbiVar.zzo(context, zzbdgVar, jSONObject, zzl, zzefyVar, zzfarVar.zzi, zzfarVar.zzg);
    }

    @Override // com.google.android.gms.internal.ads.zzeek
    public final /* bridge */ /* synthetic */ zzdmh zzb(zzfal zzfalVar, zzezz zzezzVar, zzeef<zzfbi, zzefy> zzeefVar) throws zzfaw, zzehs {
        zzdmm zzdmmVar;
        zzbvr zzB = zzeefVar.zzb.zzB();
        zzbvs zzC = zzeefVar.zzb.zzC();
        zzbvv zzu = zzeefVar.zzb.zzu();
        if (zzu != null && zzc(zzfalVar, 6)) {
            zzdmmVar = zzdmm.zzaa(zzu);
        } else if (zzB != null && zzc(zzfalVar, 6)) {
            zzdmmVar = zzdmm.zzad(zzB);
        } else if (zzB != null && zzc(zzfalVar, 2)) {
            zzdmmVar = zzdmm.zzac(zzB);
        } else if (zzC != null && zzc(zzfalVar, 6)) {
            zzdmmVar = zzdmm.zzae(zzC);
        } else if (zzC == null || !zzc(zzfalVar, 1)) {
            throw new zzehs(1, "No native ad mappers");
        } else {
            zzdmmVar = zzdmm.zzab(zzC);
        }
        if (zzfalVar.zza.zza.zzg.contains(Integer.toString(zzdmmVar.zzv()))) {
            zzdmo zzU = this.zzb.zzU(new zzcxv(zzfalVar, zzezzVar, zzeefVar.zza), new zzdmy(zzdmmVar), new zzdol(zzC, zzB, zzu, null));
            zzeefVar.zzc.zzc(zzU.zzf());
            zzU.zza().zzi(new zzcsw(zzeefVar.zzb), this.zzc);
            return zzU.zzh();
        }
        throw new zzehs(1, "No corresponding native ad listener");
    }
}
