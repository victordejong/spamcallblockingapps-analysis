package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdqc.class */
public final class zzdqc {
    private final long zzhpf;
    private long zzhph;
    private final zzdqb zzhpg = new zzdqb();
    private int zzhpi = 0;
    private int zzhpj = 0;
    private int zzhpe = 0;

    public zzdqc() {
        long currentTimeMillis = zzr.zzky().currentTimeMillis();
        this.zzhpf = currentTimeMillis;
        this.zzhph = currentTimeMillis;
    }

    public final long getCreationTimeMillis() {
        return this.zzhpf;
    }

    public final long zzavq() {
        return this.zzhph;
    }

    public final int zzavr() {
        return this.zzhpi;
    }

    public final String zzawd() {
        return "Created: " + this.zzhpf + " Last accessed: " + this.zzhph + " Accesses: " + this.zzhpi + "\nEntries retrieved: Valid: " + this.zzhpj + " Stale: " + this.zzhpe;
    }

    public final void zzawn() {
        this.zzhph = zzr.zzky().currentTimeMillis();
        this.zzhpi++;
    }

    public final void zzawo() {
        this.zzhpj++;
        this.zzhpg.zzhpd = true;
    }

    public final void zzawp() {
        this.zzhpe++;
        this.zzhpg.zzhpe++;
    }

    public final zzdqb zzawq() {
        zzdqb zzdqbVar = (zzdqb) this.zzhpg.clone();
        zzdqb zzdqbVar2 = this.zzhpg;
        zzdqbVar2.zzhpd = false;
        zzdqbVar2.zzhpe = 0;
        return zzdqbVar;
    }
}
