package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzbe;
import com.google.android.gms.common.util.VisibleForTesting;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbug.class */
public final class zzbug {
    @VisibleForTesting
    public static final zzbe<zzbsn> zza = new zzbue();
    @VisibleForTesting
    public static final zzbe<zzbsn> zzb = new zzbuf();
    private final zzbts zzc;

    public zzbug(Context context, zzcgz zzcgzVar, String str) {
        this.zzc = new zzbts(context, zzcgzVar, str, zza, zzb);
    }

    public final <I, O> zzbtw<I, O> zza(String str, zzbtz<I> zzbtzVar, zzbty<O> zzbtyVar) {
        return new zzbuk(this.zzc, str, zzbtzVar, zzbtyVar);
    }

    public final zzbup zzb() {
        return new zzbup(this.zzc);
    }
}
