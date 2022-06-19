package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzt;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfix.class */
public final class zzfix {
    private final Context zza;
    private final String zzb;
    private final String zzc;

    public zzfix(Context context, zzcjf zzcjfVar) {
        this.zza = context;
        this.zzb = context.getPackageName();
        this.zzc = zzcjfVar.zza;
    }

    public final void zza(Map<String, String> map) {
        map.put("s", "gmob_sdk");
        map.put("v", "3");
        map.put("os", Build.VERSION.RELEASE);
        map.put("api_v", Build.VERSION.SDK);
        zzt.zzp();
        map.put("device", com.google.android.gms.ads.internal.util.zzt.zzx());
        map.put("app", this.zzb);
        zzt.zzp();
        map.put("is_lite_sdk", true != com.google.android.gms.ads.internal.util.zzt.zzI(this.zza) ? "0" : "1");
        List<String> zzb = zzblj.zzb();
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzfm)).booleanValue()) {
            zzb.addAll(zzt.zzo().zzh().zzg().zzd());
        }
        map.put("e", TextUtils.join(",", zzb));
        map.put("sdkVersion", this.zzc);
    }
}
