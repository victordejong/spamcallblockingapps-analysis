package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzcgl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzn.class */
public final class zzn implements zzcgl {
    public final /* synthetic */ Context zza;
    public final /* synthetic */ String zzb;

    public zzn(zzs zzsVar, Context context, String str) {
        this.zza = context;
        this.zzb = str;
    }

    @Override // com.google.android.gms.internal.ads.zzcgl
    public final void zza(String str) {
        zzt.zzc();
        zzs.zzN(this.zza, this.zzb, str);
    }
}
