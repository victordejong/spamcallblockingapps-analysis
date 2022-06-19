package com.google.android.gms.internal.ads;

import android.os.Build;
import com.google.android.gms.ads.internal.util.zzck;
import java.util.HashMap;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeul.class */
public final /* synthetic */ class zzeul implements Callable {
    public static final Callable zza = new zzeul();

    private zzeul() {
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String[] split;
        HashMap hashMap = new HashMap();
        String str = (String) zzbet.zzc().zzc(zzbjl.zzF);
        if (str != null && !str.isEmpty()) {
            if (Build.VERSION.SDK_INT >= ((Integer) zzbet.zzc().zzc(zzbjl.zzG)).intValue()) {
                for (String str2 : str.split(",", -1)) {
                    hashMap.put(str2, zzck.zza(str2));
                }
            }
        }
        return new zzeun(hashMap);
    }
}
