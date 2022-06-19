package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzcgy;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzcb.class */
public final class zzcb extends zzb {
    private final zzcgy zza;
    private final String zzb;

    public zzcb(Context context, String str, String str2) {
        this.zza = new zzcgy(zzt.zzc().zzi(context, str));
        this.zzb = str2;
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void zza() {
        this.zza.zza(this.zzb);
    }
}
