package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzamo.class */
public final class zzamo {
    private zzakz zzdld;
    private zzdzw<zzalx> zzdle;

    public zzamo(zzakz zzakzVar) {
        this.zzdld = zzakzVar;
    }

    private final void zzus() {
        if (this.zzdle == null) {
            zzbaa zzbaaVar = new zzbaa();
            this.zzdle = zzbaaVar;
            this.zzdld.zzb((zzei) null).zza(new zzamr(zzbaaVar), new zzamq(zzbaaVar));
        }
    }

    public final <I, O> zzamv<I, O> zzb(String str, zzamc<I> zzamcVar, zzamd<O> zzamdVar) {
        zzus();
        return new zzamv<>(this.zzdle, str, zzamcVar, zzamdVar);
    }

    public final void zzc(String str, zzaif<? super zzalx> zzaifVar) {
        zzus();
        this.zzdle = zzdzk.zzb(this.zzdle, new zzamt(str, zzaifVar), zzazp.zzeih);
    }

    public final void zzd(String str, zzaif<? super zzalx> zzaifVar) {
        this.zzdle = zzdzk.zzb(this.zzdle, new zzams(str, zzaifVar), zzazp.zzeih);
    }
}
