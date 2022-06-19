package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdpd.class */
public final class zzdpd {
    private final zzdpg zzhnb = new zzdpg();
    private int zzhnc;
    private int zzhnd;
    private int zzhne;
    private int zzhnf;
    private int zzhng;

    public final void zzavx() {
        this.zzhne++;
    }

    public final void zzavy() {
        this.zzhnf++;
    }

    public final void zzavz() {
        this.zzhnc++;
        this.zzhnb.zzhnv = true;
    }

    public final void zzawa() {
        this.zzhnd++;
        this.zzhnb.zzhnw = true;
    }

    public final void zzawb() {
        this.zzhng++;
    }

    public final zzdpg zzawc() {
        zzdpg zzdpgVar = (zzdpg) this.zzhnb.clone();
        zzdpg zzdpgVar2 = this.zzhnb;
        zzdpgVar2.zzhnv = false;
        zzdpgVar2.zzhnw = false;
        return zzdpgVar;
    }

    public final String zzawd() {
        return "\n\tPool does not exist: " + this.zzhne + "\n\tNew pools created: " + this.zzhnc + "\n\tPools removed: " + this.zzhnd + "\n\tEntries added: " + this.zzhng + "\n\tNo entries retrieved: " + this.zzhnf + "\n";
    }
}
