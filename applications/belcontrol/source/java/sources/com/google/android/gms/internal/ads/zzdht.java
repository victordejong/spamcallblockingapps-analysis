package com.google.android.gms.internal.ads;

import android.os.Build;
import com.google.android.gms.ads.internal.util.zzbx;
import java.util.HashMap;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdht.class */
public final /* synthetic */ class zzdht implements Callable {
    public static final Callable zzhca = new zzdht();

    private zzdht() {
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String[] split;
        HashMap hashMap = new HashMap();
        String str = (String) zzwr.zzqr().zzd(zzabp.zzcnm);
        if (str != null && !str.isEmpty()) {
            if (Build.VERSION.SDK_INT >= ((Integer) zzwr.zzqr().zzd(zzabp.zzcnn)).intValue()) {
                for (String str2 : str.split(",", -1)) {
                    hashMap.put(str2, zzbx.zzep(str2));
                }
            }
        }
        return new zzdhr(hashMap);
    }
}
