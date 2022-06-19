package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzbf;
import com.google.android.gms.common.util.VisibleForTesting;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwh.class */
public final class zzbwh {
    @VisibleForTesting
    public static final zzbf<zzbuo> zza = new zzbwf();
    @VisibleForTesting
    public static final zzbf<zzbuo> zzb = new zzbwg();
    private final zzbvt zzc;

    public zzbwh(Context context, zzcjf zzcjfVar, String str) {
        this.zzc = new zzbvt(context, zzcjfVar, str, zza, zzb);
    }

    public final <I, O> zzbvx<I, O> zza(String str, zzbwa<I> zzbwaVar, zzbvz<O> zzbvzVar) {
        return new zzbwl(this.zzc, str, zzbwaVar, zzbvzVar);
    }

    public final zzbwq zzb() {
        return new zzbwq(this.zzc);
    }
}
