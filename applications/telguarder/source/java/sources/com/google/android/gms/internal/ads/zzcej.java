package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcej.class */
public final class zzcej implements zzeqb<zzbya<VideoController.VideoLifecycleCallbacks>> {
    private final zzeqo<zzcgx> zzewe;
    private final zzeqo<Executor> zzfux;
    private final zzcee zzghg;

    public zzcej(zzcee zzceeVar, zzeqo<zzcgx> zzeqoVar, zzeqo<Executor> zzeqoVar2) {
        this.zzghg = zzceeVar;
        this.zzewe = zzeqoVar;
        this.zzfux = zzeqoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzewe.get(), this.zzfux.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
