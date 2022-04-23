package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcgo.class */
public final class zzcgo implements zzeoy<zzcab<VideoController.VideoLifecycleCallbacks>> {

    /* renamed from: a */
    public final zzeph<zzcjc> f25991a;

    /* renamed from: b */
    public final zzeph<Executor> f25992b;

    public zzcgo(zzcgf zzcgfVar, zzeph<zzcjc> zzephVar, zzeph<Executor> zzephVar2) {
        this.f25991a = zzephVar;
        this.f25992b = zzephVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25991a.get(), this.f25992b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
