package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcqs.class */
public final class zzcqs implements zzgpr<WeakReference<Context>> {
    private final zzcqp zza;

    public zzcqs(zzcqp zzcqpVar) {
        this.zza = zzcqpVar;
    }

    public final WeakReference<Context> zza() {
        WeakReference<Context> zzf = this.zza.zzf();
        zzgpz.zzb(zzf);
        return zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* synthetic */ Object zzb() {
        WeakReference<Context> zzf = this.zza.zzf();
        zzgpz.zzb(zzf);
        return zzf;
    }
}
