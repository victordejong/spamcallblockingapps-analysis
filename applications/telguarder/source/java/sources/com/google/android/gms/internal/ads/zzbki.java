package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbki.class */
public final class zzbki implements zzeqb<zzamo> {
    private final zzeqo<zzamj> zzfte;

    private zzbki(zzeqo<zzamj> zzeqoVar) {
        this.zzfte = zzeqoVar;
    }

    public static zzbki zzb(zzeqo<zzamj> zzeqoVar) {
        return new zzbki(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzamo) zzeqh.zza(this.zzfte.get().zzur(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
