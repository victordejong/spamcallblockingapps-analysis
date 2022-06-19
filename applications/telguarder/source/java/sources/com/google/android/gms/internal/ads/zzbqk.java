package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbqk.class */
public final class zzbqk implements zzeqb<zzbya<zzbua>> {
    private final zzeqo<zzbqf> zzewe;
    private final zzbqh zzfxy;

    private zzbqk(zzbqh zzbqhVar, zzeqo<zzbqf> zzeqoVar) {
        this.zzfxy = zzbqhVar;
        this.zzewe = zzeqoVar;
    }

    public static zzbqk zza(zzbqh zzbqhVar, zzeqo<zzbqf> zzeqoVar) {
        return new zzbqk(zzbqhVar, zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzewe.get(), zzazp.zzeih), "Cannot return null from a non-@Nullable @Provides method");
    }
}
