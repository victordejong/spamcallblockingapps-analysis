package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import java.util.LinkedList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfcb.class */
public final class zzfcb {
    private final int zzb;
    private final int zzc;
    private final LinkedList<zzfcl<?, ?>> zza = new LinkedList<>();
    private final zzfda zzd = new zzfda();

    public zzfcb(int i, int i2) {
        this.zzb = i;
        this.zzc = i2;
    }

    private final void zzi() {
        while (!this.zza.isEmpty()) {
            if (zzt.zzj().mo38787c() - this.zza.getFirst().zzd < this.zzc) {
                return;
            }
            this.zzd.zzc();
            this.zza.remove();
        }
    }

    public final boolean zza(zzfcl<?, ?> zzfclVar) {
        this.zzd.zza();
        zzi();
        if (this.zza.size() == this.zzb) {
            return false;
        }
        this.zza.add(zzfclVar);
        return true;
    }

    public final zzfcl<?, ?> zzb() {
        this.zzd.zza();
        zzi();
        if (this.zza.isEmpty()) {
            return null;
        }
        zzfcl<?, ?> remove = this.zza.remove();
        if (remove != null) {
            this.zzd.zzb();
        }
        return remove;
    }

    public final int zzc() {
        zzi();
        return this.zza.size();
    }

    public final long zzd() {
        return this.zzd.zzd();
    }

    public final long zze() {
        return this.zzd.zze();
    }

    public final int zzf() {
        return this.zzd.zzf();
    }

    public final String zzg() {
        return this.zzd.zzh();
    }

    public final zzfcz zzh() {
        return this.zzd.zzg();
    }
}
