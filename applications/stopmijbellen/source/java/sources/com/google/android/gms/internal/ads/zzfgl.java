package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfgl.class */
public final class zzfgl {
    private final long zza;
    private long zzc;
    private final zzfgk zzb = new zzfgk();
    private int zzd = 0;
    private int zze = 0;
    private int zzf = 0;

    public zzfgl() {
        long currentTimeMillis = zzt.zzA().currentTimeMillis();
        this.zza = currentTimeMillis;
        this.zzc = currentTimeMillis;
    }

    public final int zza() {
        return this.zzd;
    }

    public final long zzb() {
        return this.zza;
    }

    public final long zzc() {
        return this.zzc;
    }

    public final zzfgk zzd() {
        zzfgk clone = this.zzb.clone();
        zzfgk zzfgkVar = this.zzb;
        zzfgkVar.zza = false;
        zzfgkVar.zzb = 0;
        return clone;
    }

    public final String zze() {
        StringBuilder m8752j = C0082b.m8752j("Created: ");
        m8752j.append(this.zza);
        m8752j.append(" Last accessed: ");
        m8752j.append(this.zzc);
        m8752j.append(" Accesses: ");
        m8752j.append(this.zzd);
        m8752j.append("\nEntries retrieved: Valid: ");
        m8752j.append(this.zze);
        m8752j.append(" Stale: ");
        m8752j.append(this.zzf);
        return m8752j.toString();
    }

    public final void zzf() {
        this.zzc = zzt.zzA().currentTimeMillis();
        this.zzd++;
    }

    public final void zzg() {
        this.zzf++;
        this.zzb.zzb++;
    }

    public final void zzh() {
        this.zze++;
        this.zzb.zza = true;
    }
}
