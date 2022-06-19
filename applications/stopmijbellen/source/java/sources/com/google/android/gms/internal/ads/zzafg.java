package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzafg.class */
public final class zzafg {
    private final List<zzab> zza;
    private final zzxt[] zzb;

    public zzafg(List<zzab> list) {
        this.zza = list;
        this.zzb = new zzxt[list.size()];
    }

    public final void zza(long j, zzfd zzfdVar) {
        if (zzfdVar.zza() < 9) {
            return;
        }
        int zze = zzfdVar.zze();
        int zze2 = zzfdVar.zze();
        int zzk = zzfdVar.zzk();
        if (zze != 434 || zze2 != 1195456820 || zzk != 3) {
            return;
        }
        zzwh.zzb(j, zzfdVar, this.zzb);
    }

    public final void zzb(zzws zzwsVar, zzafd zzafdVar) {
        for (int i = 0; i < this.zzb.length; i++) {
            zzafdVar.zzc();
            zzxt zzv = zzwsVar.zzv(zzafdVar.zza(), 3);
            zzab zzabVar = this.zza.get(i);
            String str = zzabVar.zzm;
            boolean z = true;
            if (!"application/cea-608".equals(str)) {
                z = "application/cea-708".equals(str);
            }
            String valueOf = String.valueOf(str);
            zzdy.zze(z, valueOf.length() != 0 ? "Invalid closed caption mime type provided: ".concat(valueOf) : new String("Invalid closed caption mime type provided: "));
            zzz zzzVar = new zzz();
            zzzVar.zzH(zzafdVar.zzb());
            zzzVar.zzS(str);
            zzzVar.zzU(zzabVar.zze);
            zzzVar.zzK(zzabVar.zzd);
            zzzVar.zzu(zzabVar.zzE);
            zzzVar.zzI(zzabVar.zzo);
            zzv.zzk(zzzVar.zzY());
            this.zzb[i] = zzv;
        }
    }
}
