package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdsu.class */
public final class zzdsu implements zzeqb<zzdss> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzazo> zzewo;

    public zzdsu(zzeqo<Executor> zzeqoVar, zzeqo<zzazo> zzeqoVar2) {
        this.zzewf = zzeqoVar;
        this.zzewo = zzeqoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdss(this.zzewf.get(), this.zzewo.get());
    }
}
