package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbwx.class */
public final class zzbwx implements zzeqb<Set<zzbya<AppEventListener>>> {
    private final zzbwg zzgav;

    private zzbwx(zzbwg zzbwgVar) {
        this.zzgav = zzbwgVar;
    }

    public static zzbwx zzw(zzbwg zzbwgVar) {
        return new zzbwx(zzbwgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(this.zzgav.zzamd(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
