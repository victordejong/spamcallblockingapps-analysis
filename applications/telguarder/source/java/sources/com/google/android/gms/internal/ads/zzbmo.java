package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbmo.class */
public final class zzbmo implements zzeqb<Set<zzbya<zzqw>>> {
    private final zzeqo<zzbno> zzftr;
    private final zzbmc zzfvc;

    public zzbmo(zzbmc zzbmcVar, zzeqo<zzbno> zzeqoVar) {
        this.zzfvc = zzbmcVar;
        this.zzftr = zzeqoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(Collections.singleton(new zzbya(this.zzftr.get(), zzazp.zzeih)), "Cannot return null from a non-@Nullable @Provides method");
    }
}
