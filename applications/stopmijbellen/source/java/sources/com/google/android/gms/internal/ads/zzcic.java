package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcic.class */
public final class zzcic {
    public final zzfxa<AdvertisingIdClient.Info> zza(Context context, int i) {
        zzcjr zzcjrVar = new zzcjr();
        zzbgo.zzb();
        if (zzcis.zzo(context)) {
            zzcjm.zza.execute(new zzcib(this, context, zzcjrVar));
        }
        return zzcjrVar;
    }
}
