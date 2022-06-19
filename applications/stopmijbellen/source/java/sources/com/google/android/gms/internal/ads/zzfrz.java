package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfrz.class */
final class zzfrz extends zzfrn {
    public final /* synthetic */ zzfsb zza;
    private final Object zzb;
    private int zzc;

    public zzfrz(zzfsb zzfsbVar, int i) {
        this.zza = zzfsbVar;
        this.zzb = zzfsb.zzg(zzfsbVar, i);
        this.zzc = i;
    }

    private final void zza() {
        int zzw;
        int i = this.zzc;
        if (i == -1 || i >= this.zza.size() || !zzfqc.zza(this.zzb, zzfsb.zzg(this.zza, this.zzc))) {
            zzw = this.zza.zzw(this.zzb);
            this.zzc = zzw;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfrn, java.util.Map.Entry
    public final Object getKey() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfrn, java.util.Map.Entry
    public final Object getValue() {
        Map zzl = this.zza.zzl();
        if (zzl != null) {
            return zzl.get(this.zzb);
        }
        zza();
        int i = this.zzc;
        if (i != -1) {
            return zzfsb.zzj(this.zza, i);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzfrn, java.util.Map.Entry
    public final Object setValue(Object obj) {
        Map zzl = this.zza.zzl();
        if (zzl != null) {
            return zzl.put(this.zzb, obj);
        }
        zza();
        int i = this.zzc;
        if (i == -1) {
            this.zza.put(this.zzb, obj);
            return null;
        }
        Object zzj = zzfsb.zzj(this.zza, i);
        zzfsb.zzn(this.zza, this.zzc, obj);
        return zzj;
    }
}
