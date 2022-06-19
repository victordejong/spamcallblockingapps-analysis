package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzar;
import com.google.android.gms.common.util.VisibleForTesting;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzamj.class */
public final class zzamj {
    @VisibleForTesting
    private static final zzar<zzakm> zzdkv = new zzami();
    @VisibleForTesting
    private static final zzar<zzakm> zzdkw = new zzaml();
    private final zzakz zzdkx;

    public zzamj(Context context, zzazn zzaznVar, String str) {
        this.zzdkx = new zzakz(context, zzaznVar, str, zzdkv, zzdkw);
    }

    public final <I, O> zzamb<I, O> zza(String str, zzamc<I> zzamcVar, zzamd<O> zzamdVar) {
        return new zzamk(this.zzdkx, str, zzamcVar, zzamdVar);
    }

    public final zzamo zzur() {
        return new zzamo(this.zzdkx);
    }
}
