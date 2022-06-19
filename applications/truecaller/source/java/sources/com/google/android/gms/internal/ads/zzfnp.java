package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfnp.class */
public final class zzfnp extends zzfne {
    public final /* synthetic */ zzfns zza;
    private final Object zzb;
    private int zzc;

    public zzfnp(zzfns zzfnsVar, int i) {
        this.zza = zzfnsVar;
        this.zzb = zzfns.zzs(zzfnsVar, i);
        this.zzc = i;
    }

    private final void zza() {
        int zzy;
        int i = this.zzc;
        if (i == -1 || i >= this.zza.size() || !zzflt.zza(this.zzb, zzfns.zzs(this.zza, this.zzc))) {
            zzy = this.zza.zzy(this.zzb);
            this.zzc = zzy;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfne, java.util.Map.Entry
    public final Object getKey() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfne, java.util.Map.Entry
    public final Object getValue() {
        Map zzg = this.zza.zzg();
        if (zzg != null) {
            return zzg.get(this.zzb);
        }
        zza();
        int i = this.zzc;
        if (i != -1) {
            return zzfns.zzt(this.zza, i);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzfne, java.util.Map.Entry
    public final Object setValue(Object obj) {
        Map zzg = this.zza.zzg();
        if (zzg != null) {
            return zzg.put(this.zzb, obj);
        }
        zza();
        int i = this.zzc;
        if (i == -1) {
            this.zza.put(this.zzb, obj);
            return null;
        }
        Object zzt = zzfns.zzt(this.zza, i);
        zzfns.zzu(this.zza, this.zzc, obj);
        return zzt;
    }
}
