package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcop.class */
public final class zzcop implements zzgla<WeakReference<Context>> {
    private final zzcom zza;

    public zzcop(zzcom zzcomVar) {
        this.zza = zzcomVar;
    }

    public final WeakReference<Context> zza() {
        WeakReference<Context> zzb = this.zza.zzb();
        zzgli.zzb(zzb);
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgln
    public final /* bridge */ /* synthetic */ Object zzb() {
        WeakReference<Context> zzb = this.zza.zzb();
        zzgli.zzb(zzb);
        return zzb;
    }
}
