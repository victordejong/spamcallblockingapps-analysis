package com.google.android.gms.internal.mlkit_translate;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzfk.class */
public final class zzfk extends zzea<zzds> {
    public final void zza(zzgd zzgdVar, zzds zzdsVar) throws IOException {
        if (zzdsVar == null || (zzdsVar instanceof zzdu)) {
            zzgdVar.zze();
            return;
        }
        boolean z = zzdsVar instanceof zzdy;
        if (z) {
            if (!z) {
                throw new IllegalStateException("Not a JSON Primitive: " + zzdsVar);
            }
            zzdy zzdyVar = (zzdy) zzdsVar;
            if (zzdyVar.zzh()) {
                zzgdVar.zza(zzdyVar.zzd());
                return;
            } else if (zzdyVar.zzg()) {
                zzgdVar.zzb(zzdyVar.zzb());
                return;
            } else {
                zzgdVar.zzb(zzdyVar.zze());
                return;
            }
        }
        boolean z2 = zzdsVar instanceof zzdt;
        if (z2) {
            zzgdVar.zza();
            if (!z2) {
                throw new IllegalStateException("Not a JSON Array: " + zzdsVar);
            }
            Iterator<zzds> it = ((zzdt) zzdsVar).iterator();
            while (it.hasNext()) {
                zza(zzgdVar, it.next());
            }
            zzgdVar.zzb();
        } else if (!(zzdsVar instanceof zzdx)) {
            throw new IllegalArgumentException("Couldn't write " + zzdsVar.getClass());
        } else {
            zzgdVar.zzc();
            for (Map.Entry<String, zzds> entry : zzdsVar.zza().zzg()) {
                zzgdVar.zza(entry.getKey());
                zza(zzgdVar, entry.getValue());
            }
            zzgdVar.zzd();
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzea
    public final /* synthetic */ zzds zza(zzfy zzfyVar) throws IOException {
        switch (zzft.zza[zzfyVar.zzg().ordinal()]) {
            case 1:
                return new zzdy(new zzee(zzfyVar.zzi()));
            case 2:
                return new zzdy(Boolean.valueOf(zzfyVar.zzj()));
            case 3:
                return new zzdy(zzfyVar.zzi());
            case 4:
                zzfyVar.zzk();
                return zzdu.zza;
            case 5:
                zzdt zzdtVar = new zzdt();
                zzfyVar.zzb();
                while (zzfyVar.zzf()) {
                    zzdtVar.zza((zzds) zza(zzfyVar));
                }
                zzfyVar.zzc();
                return zzdtVar;
            case 6:
                zzdx zzdxVar = new zzdx();
                zzfyVar.zzd();
                while (zzfyVar.zzf()) {
                    zzdxVar.zza(zzfyVar.zzh(), (zzds) zza(zzfyVar));
                }
                zzfyVar.zze();
                return zzdxVar;
            default:
                throw new IllegalArgumentException();
        }
    }
}
