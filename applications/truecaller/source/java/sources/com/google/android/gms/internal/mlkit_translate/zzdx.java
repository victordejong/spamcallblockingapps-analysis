package com.google.android.gms.internal.mlkit_translate;

import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzdx.class */
public final class zzdx extends zzds {
    private final zzeh<String, zzds> zza = new zzeh<>();

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof zzdx) && ((zzdx) obj).zza.equals(this.zza);
        }
        return true;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final void zza(String str, zzds zzdsVar) {
        zzdu zzduVar = zzdsVar;
        if (zzdsVar == null) {
            zzduVar = zzdu.zza;
        }
        this.zza.put(str, zzduVar);
    }

    public final boolean zza(String str) {
        return this.zza.containsKey(str);
    }

    public final zzds zzb(String str) {
        return this.zza.get(str);
    }

    public final zzdy zzc(String str) {
        return (zzdy) this.zza.get(str);
    }

    public final zzdx zzd(String str) {
        return (zzdx) this.zza.get(str);
    }

    public final Set<Map.Entry<String, zzds>> zzg() {
        return this.zza.entrySet();
    }
}
