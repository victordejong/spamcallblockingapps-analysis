package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbpw.class */
public final class zzbpw implements zzeqb<zzbya<zzbsa>> {
    private final zzeqo<zzbud> zzewe;
    private final zzeqo<Executor> zzewf;

    private zzbpw(zzeqo<zzbud> zzeqoVar, zzeqo<Executor> zzeqoVar2) {
        this.zzewe = zzeqoVar;
        this.zzewf = zzeqoVar2;
    }

    public static zzbpw zzn(zzeqo<zzbud> zzeqoVar, zzeqo<Executor> zzeqoVar2) {
        return new zzbpw(zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzewe.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
