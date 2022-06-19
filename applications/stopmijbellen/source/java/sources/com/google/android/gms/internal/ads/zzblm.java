package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import com.google.android.gms.ads.internal.zzt;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Future;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzblm.class */
public final class zzblm {
    private final String zza = zzbms.zzb.zze();
    private final Map<String, String> zzb;
    private final Context zzc;
    private final String zzd;

    public zzblm(Context context, String str) {
        this.zzc = context;
        this.zzd = str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.zzb = linkedHashMap;
        linkedHashMap.put("s", "gmob_sdk");
        linkedHashMap.put("v", "3");
        linkedHashMap.put("os", Build.VERSION.RELEASE);
        linkedHashMap.put("api_v", Build.VERSION.SDK);
        zzt.zzp();
        linkedHashMap.put("device", com.google.android.gms.ads.internal.util.zzt.zzx());
        linkedHashMap.put("app", context.getApplicationContext() != null ? context.getApplicationContext().getPackageName() : context.getPackageName());
        zzt.zzp();
        linkedHashMap.put("is_lite_sdk", true != com.google.android.gms.ads.internal.util.zzt.zzI(context) ? "0" : "1");
        Future<zzcdv> zzb = zzt.zzm().zzb(context);
        try {
            linkedHashMap.put("network_coarse", Integer.toString(zzb.get().zzk));
            linkedHashMap.put("network_fine", Integer.toString(zzb.get().zzl));
        } catch (Exception e) {
            zzt.zzo().zzs(e, "CsiConfiguration.CsiConfiguration");
        }
    }

    public final Context zza() {
        return this.zzc;
    }

    public final String zzb() {
        return this.zzd;
    }

    public final String zzc() {
        return this.zza;
    }

    public final Map<String, String> zzd() {
        return this.zzb;
    }
}
