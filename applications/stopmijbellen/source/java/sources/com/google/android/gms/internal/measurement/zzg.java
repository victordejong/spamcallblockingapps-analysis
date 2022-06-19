package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzg.class */
public final class zzg {
    public final zzg zza;
    public final zzax zzb;
    public final Map<String, zzap> zzc = new HashMap();
    public final Map<String, Boolean> zzd = new HashMap();

    public zzg(zzg zzgVar, zzax zzaxVar) {
        this.zza = zzgVar;
        this.zzb = zzaxVar;
    }

    public final zzap zza(zzap zzapVar) {
        return this.zzb.zzb(this, zzapVar);
    }

    public final zzap zzb(zzae zzaeVar) {
        zzap zzapVar = zzap.zzf;
        Iterator<Integer> zzg = zzaeVar.zzg();
        while (true) {
            if (!zzg.hasNext()) {
                break;
            }
            zzap zzb = this.zzb.zzb(this, zzaeVar.zzl(zzg.next().intValue()));
            zzapVar = zzb;
            if (zzb instanceof zzag) {
                zzapVar = zzb;
                break;
            }
        }
        return zzapVar;
    }

    public final zzg zzc() {
        return new zzg(this, this.zzb);
    }

    public final boolean zzd(String str) {
        if (this.zzc.containsKey(str)) {
            return true;
        }
        zzg zzgVar = this.zza;
        if (zzgVar == null) {
            return false;
        }
        return zzgVar.zzd(str);
    }

    public final void zze(String str, zzap zzapVar) {
        zzg zzgVar;
        if (!this.zzc.containsKey(str) && (zzgVar = this.zza) != null && zzgVar.zzd(str)) {
            this.zza.zze(str, zzapVar);
        } else if (this.zzd.containsKey(str)) {
        } else {
            if (zzapVar == null) {
                this.zzc.remove(str);
            } else {
                this.zzc.put(str, zzapVar);
            }
        }
    }

    public final void zzf(String str, zzap zzapVar) {
        if (this.zzd.containsKey(str)) {
            return;
        }
        if (zzapVar == null) {
            this.zzc.remove(str);
        } else {
            this.zzc.put(str, zzapVar);
        }
    }

    public final void zzg(String str, zzap zzapVar) {
        zzf(str, zzapVar);
        this.zzd.put(str, Boolean.TRUE);
    }

    public final zzap zzh(String str) {
        if (this.zzc.containsKey(str)) {
            return this.zzc.get(str);
        }
        zzg zzgVar = this.zza;
        if (zzgVar == null) {
            throw new IllegalArgumentException(String.format("%s is not defined", str));
        }
        return zzgVar.zzh(str);
    }
}
