package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfda.class */
public final class zzfda {
    private final long zza;
    private long zzc;
    private final zzfcz zzb = new zzfcz();
    private int zzd = 0;
    private int zze = 0;
    private int zzf = 0;

    public zzfda() {
        long mo38787c = zzt.zzj().mo38787c();
        this.zza = mo38787c;
        this.zzc = mo38787c;
    }

    public final void zza() {
        this.zzc = zzt.zzj().mo38787c();
        this.zzd++;
    }

    public final void zzb() {
        this.zze++;
        this.zzb.zza = true;
    }

    public final void zzc() {
        this.zzf++;
        this.zzb.zzb++;
    }

    public final long zzd() {
        return this.zza;
    }

    public final long zze() {
        return this.zzc;
    }

    public final int zzf() {
        return this.zzd;
    }

    public final zzfcz zzg() {
        zzfcz clone = this.zzb.clone();
        zzfcz zzfczVar = this.zzb;
        zzfczVar.zza = false;
        zzfczVar.zzb = 0;
        return clone;
    }

    public final String zzh() {
        StringBuilder m8728C = C22128a.m8728C("Created: ");
        m8728C.append(this.zza);
        m8728C.append(" Last accessed: ");
        m8728C.append(this.zzc);
        m8728C.append(" Accesses: ");
        m8728C.append(this.zzd);
        m8728C.append("\nEntries retrieved: Valid: ");
        m8728C.append(this.zze);
        m8728C.append(" Stale: ");
        m8728C.append(this.zzf);
        return m8728C.toString();
    }
}
