package com.google.android.gms.internal.measurement;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzg.class */
public final class zzg {
    public final zzg zza;
    public final zzax zzb;
    public final Map zzc = new HashMap();
    public final Map zzd = new HashMap();

    public zzg(zzg zzgVar, zzax zzaxVar) {
        this.zza = zzgVar;
        this.zzb = zzaxVar;
    }

    public final zzg zza() {
        return new zzg(this, this.zzb);
    }

    public final zzap zzb(zzap zzapVar) {
        return this.zzb.zza(this, zzapVar);
    }

    public final zzap zzc(zzae zzaeVar) {
        zzap zzapVar = zzap.zzf;
        Iterator zzk = zzaeVar.zzk();
        while (true) {
            if (!zzk.hasNext()) {
                break;
            }
            zzap zza = this.zzb.zza(this, zzaeVar.zze(((Integer) zzk.next()).intValue()));
            zzapVar = zza;
            if (zza instanceof zzag) {
                zzapVar = zza;
                break;
            }
        }
        return zzapVar;
    }

    public final zzap zzd(String str) {
        if (this.zzc.containsKey(str)) {
            return (zzap) this.zzc.get(str);
        }
        zzg zzgVar = this.zza;
        if (zzgVar == null) {
            throw new IllegalArgumentException(String.format("%s is not defined", str));
        }
        return zzgVar.zzd(str);
    }

    public final void zze(String str, zzap zzapVar) {
        if (this.zzd.containsKey(str)) {
            return;
        }
        if (zzapVar == null) {
            this.zzc.remove(str);
        } else {
            this.zzc.put(str, zzapVar);
        }
    }

    public final void zzf(String str, zzap zzapVar) {
        zze(str, zzapVar);
        this.zzd.put(str, Boolean.TRUE);
    }

    public final void zzg(String str, zzap zzapVar) {
        zzg zzgVar;
        if (!this.zzc.containsKey(str) && (zzgVar = this.zza) != null && zzgVar.zzh(str)) {
            this.zza.zzg(str, zzapVar);
        } else if (this.zzd.containsKey(str)) {
        } else {
            if (zzapVar == null) {
                this.zzc.remove(str);
            } else {
                this.zzc.put(str, zzapVar);
            }
        }
    }

    public final boolean zzh(String str) {
        if (this.zzc.containsKey(str)) {
            return true;
        }
        zzg zzgVar = this.zza;
        if (zzgVar == null) {
            return false;
        }
        return zzgVar.zzh(str);
    }
}
