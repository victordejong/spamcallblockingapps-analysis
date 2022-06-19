package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzcje;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzcc.class */
public final class zzcc extends zzb {
    private final zzcje zza;
    private final String zzb;

    public zzcc(Context context, String str, String str2) {
        this.zza = new zzcje(zzt.zzp().zzd(context, str));
        this.zzb = str2;
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void zza() {
        this.zza.zza(this.zzb);
    }
}
