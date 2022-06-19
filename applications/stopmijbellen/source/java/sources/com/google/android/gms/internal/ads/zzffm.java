package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import java.util.LinkedList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzffm.class */
public final class zzffm {
    private final int zzb;
    private final int zzc;
    private final LinkedList<zzffw<?, ?>> zza = new LinkedList<>();
    private final zzfgl zzd = new zzfgl();

    public zzffm(int i, int i2) {
        this.zzb = i;
        this.zzc = i2;
    }

    private final void zzi() {
        while (!this.zza.isEmpty()) {
            if (zzt.zzA().currentTimeMillis() - this.zza.getFirst().zzd < this.zzc) {
                return;
            }
            this.zzd.zzg();
            this.zza.remove();
        }
    }

    public final int zza() {
        return this.zzd.zza();
    }

    public final int zzb() {
        zzi();
        return this.zza.size();
    }

    public final long zzc() {
        return this.zzd.zzb();
    }

    public final long zzd() {
        return this.zzd.zzc();
    }

    public final zzffw<?, ?> zze() {
        this.zzd.zzf();
        zzi();
        if (this.zza.isEmpty()) {
            return null;
        }
        zzffw<?, ?> remove = this.zza.remove();
        if (remove != null) {
            this.zzd.zzh();
        }
        return remove;
    }

    public final zzfgk zzf() {
        return this.zzd.zzd();
    }

    public final String zzg() {
        return this.zzd.zze();
    }

    public final boolean zzh(zzffw<?, ?> zzffwVar) {
        this.zzd.zzf();
        zzi();
        if (this.zza.size() == this.zzb) {
            return false;
        }
        this.zza.add(zzffwVar);
        return true;
    }
}
