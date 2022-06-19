package com.google.android.gms.internal.mlkit_translate;

import android.os.SystemClock;
import com.google.android.gms.internal.mlkit_translate.zzbj;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzhl.class */
public final class zzhl {
    private long zza;
    private long zzb;
    private final List<zzbj.zzbg.zza> zzc = new ArrayList();
    private final List<zzbj.zzbg.zza> zzd = new ArrayList();
    private final List<zzbj.zzbg.zza> zze = new ArrayList();
    private int zzf;
    private boolean zzg;

    public final void zza() {
        this.zza = SystemClock.elapsedRealtime();
    }

    public final void zza(int i) {
        this.zzf = i;
    }

    public final void zza(zzbj.zzbg.zza zzaVar) {
        if (this.zzg) {
            this.zzd.add(zzaVar);
        } else {
            this.zzc.add(zzaVar);
        }
    }

    public final void zzb() {
        this.zzb = SystemClock.elapsedRealtime();
    }

    public final void zzb(zzbj.zzbg.zza zzaVar) {
        this.zzd.add(zzaVar);
    }

    public final void zzc() {
        this.zzg = true;
    }

    public final void zzc(zzbj.zzbg.zza zzaVar) {
        this.zze.add(zzaVar);
    }

    public final zzbj.zzbg.zzb zzd() {
        zzi.zzb(this.zza != 0);
        zzi.zzb(this.zzb != 0);
        long j = this.zzb;
        long j2 = this.zza;
        zzbj.zzbg.zzb zza = zzbj.zzbg.zza();
        zza.zza(j - j2);
        List<zzbj.zzbg.zza> list = this.zzc;
        if (list != null) {
            zza.zzc(list);
        }
        List<zzbj.zzbg.zza> list2 = this.zzd;
        if (list2 != null) {
            zza.zzb(list2);
        }
        List<zzbj.zzbg.zza> list3 = this.zze;
        if (list3 != null) {
            zza.zza(list3);
        }
        int i = this.zzf;
        if (i != 0) {
            zza.zza(i);
        }
        return zza;
    }
}
