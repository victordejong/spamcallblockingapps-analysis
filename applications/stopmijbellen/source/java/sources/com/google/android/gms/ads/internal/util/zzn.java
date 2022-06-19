package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzcir;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzn.class */
public final class zzn implements zzcir {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ String zzb;

    public zzn(zzt zztVar, Context context, String str) {
        this.zza = context;
        this.zzb = str;
    }

    @Override // com.google.android.gms.internal.ads.zzcir
    public final void zza(String str) {
        zzt.zzp();
        zzt.zzO(this.zza, this.zzb, str);
    }
}
