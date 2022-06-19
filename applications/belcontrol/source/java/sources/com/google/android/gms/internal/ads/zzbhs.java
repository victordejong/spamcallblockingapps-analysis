package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbhs.class */
public final class zzbhs {
    private zzbgb zzewm;
    private zzbig zzfoa;
    private zzdru zzfob;
    private zzbiq zzfoc;
    private zzdol zzfod;

    private zzbhs() {
    }

    public final zzbhs zza(zzbig zzbigVar) {
        this.zzfoa = (zzbig) zzeqh.checkNotNull(zzbigVar);
        return this;
    }

    public final zzbgc zzahv() {
        zzeqh.zza(this.zzewm, zzbgb.class);
        zzeqh.zza(this.zzfoa, zzbig.class);
        if (this.zzfob == null) {
            this.zzfob = new zzdru();
        }
        if (this.zzfoc == null) {
            this.zzfoc = new zzbiq();
        }
        if (this.zzfod == null) {
            this.zzfod = new zzdol();
        }
        return new zzbgz(this.zzewm, this.zzfoa, this.zzfob, this.zzfoc, this.zzfod, (zzbgy) null);
    }

    public final zzbhs zzc(zzbgb zzbgbVar) {
        this.zzewm = (zzbgb) zzeqh.checkNotNull(zzbgbVar);
        return this;
    }
}
