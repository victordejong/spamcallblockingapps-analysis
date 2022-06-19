package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbgl.class */
public final class zzbgl implements zzeqb<zzcro<zzdog, zzctg>> {
    private final zzbgb zzewc;
    private final zzeqo<zzcin> zzewd;

    public zzbgl(zzbgb zzbgbVar, zzeqo<zzcin> zzeqoVar) {
        this.zzewc = zzbgbVar;
        this.zzewd = zzeqoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzcro) zzeqh.zza(new zzcvl(this.zzewd.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
