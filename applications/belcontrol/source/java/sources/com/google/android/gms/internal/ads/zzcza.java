package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcza.class */
public final class zzcza {
    private final zzcxy zzfzw;
    private final zzcco zzgza;
    private final zzbrr zzgzb;

    public zzcza(zzcco zzccoVar, zzdrz zzdrzVar) {
        this.zzgza = zzccoVar;
        zzcxy zzcxyVar = new zzcxy(zzdrzVar);
        this.zzfzw = zzcxyVar;
        this.zzgzb = new zzcyz(zzcxyVar, zzccoVar.zzaon());
    }

    public final zzcaq zzaso() {
        return new zzcaq(this.zzgza, this.zzfzw.zzasj());
    }

    public final zzcxy zzasp() {
        return this.zzfzw;
    }

    public final zzbtb zzasq() {
        return this.zzfzw;
    }

    public final zzbrr zzasr() {
        return this.zzgzb;
    }

    public final void zzd(zzwx zzwxVar) {
        this.zzfzw.zzc(zzwxVar);
    }
}
