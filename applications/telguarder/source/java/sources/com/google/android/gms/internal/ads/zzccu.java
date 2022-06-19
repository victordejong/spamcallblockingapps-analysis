package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzccu.class */
public final class zzccu implements zzeqb<zzbya<zzbtt>> {
    private final zzeqo<zzcyq> zzewe;
    private final zzeqo<Executor> zzewf;

    private zzccu(zzeqo<zzcyq> zzeqoVar, zzeqo<Executor> zzeqoVar2) {
        this.zzewe = zzeqoVar;
        this.zzewf = zzeqoVar2;
    }

    public static zzccu zzu(zzeqo<zzcyq> zzeqoVar, zzeqo<Executor> zzeqoVar2) {
        return new zzccu(zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzewe.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
