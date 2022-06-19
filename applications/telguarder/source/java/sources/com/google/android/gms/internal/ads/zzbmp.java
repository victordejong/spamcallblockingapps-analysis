package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbmp.class */
public final class zzbmp implements zzeqb<zzbya<zzbvn>> {
    private final zzbmc zzfvc;
    private final zzeqo<zzbts> zzfvg;

    public zzbmp(zzbmc zzbmcVar, zzeqo<zzbts> zzeqoVar) {
        this.zzfvc = zzbmcVar;
        this.zzfvg = zzeqoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(new zzbvn(this.zzfvg.get()) { // from class: com.google.android.gms.internal.ads.zzbme
            private final zzbts zzfve;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzfve = zzbtsVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbvn
            public final void zzakf() {
                this.zzfve.zzals();
            }
        }, zzazp.zzeih), "Cannot return null from a non-@Nullable @Provides method");
    }
}
