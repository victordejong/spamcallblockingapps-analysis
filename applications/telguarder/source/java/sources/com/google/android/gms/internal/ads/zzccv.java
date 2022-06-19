package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzccv.class */
public final class zzccv implements zzeqb<zzccd> {
    private final zzccp zzgfg;

    private zzccv(zzccp zzccpVar) {
        this.zzgfg = zzccpVar;
    }

    public static zzccv zza(zzccp zzccpVar) {
        return new zzccv(zzccpVar);
    }

    public static zzccd zzb(zzccp zzccpVar) {
        return (zzccd) zzeqh.zza(zzccpVar.zzaoq(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzb(this.zzgfg);
    }
}
