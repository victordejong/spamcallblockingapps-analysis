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
            this.zzdld.zzb((zzei) null).zza(new zzbae(zzbaaVar) { // from class: com.google.android.gms.internal.ads.zzamr
                private final zzbaa zzbwd;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzbwd = zzbaaVar;
                }

                @Override // com.google.android.gms.internal.ads.zzbae
                public final void zzg(Object obj) {
                    this.zzbwd.set((zzalx) obj);
                }
            }, new zzbac(zzbaaVar) { // from class: com.google.android.gms.internal.ads.zzamq
                private final zzbaa zzbwd;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzbwd = zzbaaVar;
                }

                @Override // com.google.android.gms.internal.ads.zzbac
                public final void run() {
                    this.zzbwd.setException(new zzaly("Cannot get Javascript Engine"));
                }
            });
        }
    }

    public final <I, O> zzamv<I, O> zzb(String str, zzamc<I> zzamcVar, zzamd<O> zzamdVar) {
        zzus();
        return new zzamv<>(this.zzdle, str, zzamcVar, zzamdVar);
    }

    public final void zzc(String str, zzaif<? super zzalx> zzaifVar) {
        zzus();
        this.zzdle = zzdzk.zzb(this.zzdle, new zzdyu(str, zzaifVar) { // from class: com.google.android.gms.internal.ads.zzamt
            private final String zzdlh;
            private final zzaif zzdli;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzdlh = str;
                this.zzdli = zzaifVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdyu
            public final zzdzw zzf(Object obj) {
                zzalx zzalxVar = (zzalx) obj;
                zzalxVar.zza(this.zzdlh, this.zzdli);
                return zzdzk.zzag(zzalxVar);
            }
        }, zzazp.zzeih);
    }

    public final void zzd(String str, zzaif<? super zzalx> zzaifVar) {
        this.zzdle = zzdzk.zzb(this.zzdle, new zzdvz(str, zzaifVar) { // from class: com.google.android.gms.internal.ads.zzams
            private final String zzdlh;
            private final zzaif zzdli;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzdlh = str;
                this.zzdli = zzaifVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdvz
            public final Object apply(Object obj) {
                zzalx zzalxVar = (zzalx) obj;
                zzalxVar.zzb(this.zzdlh, this.zzdli);
                return zzalxVar;
            }
        }, zzazp.zzeih);
    }
}
