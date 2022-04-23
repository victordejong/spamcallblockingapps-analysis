package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcof.class */
public class zzcof extends Exception {
    public final zzdpg zzgiy;

    public zzcof(zzdpg zzdpgVar) {
        this.zzgiy = zzdpgVar;
    }

    public zzcof(zzdpg zzdpgVar, String str) {
        super(str);
        this.zzgiy = zzdpgVar;
    }

    public zzcof(zzdpg zzdpgVar, String str, Throwable th) {
        super(str, th);
        this.zzgiy = zzdpgVar;
    }

    public final zzdpg zzapr() {
        return this.zzgiy;
    }
}
