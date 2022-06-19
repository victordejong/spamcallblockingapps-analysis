package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import com.amazon.device.ads.DtbConstants;
import com.freshchat.consumer.sdk.beans.User;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import com.razorpay.AnalyticsConstants;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Future;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbjo.class */
public final class zzbjo {
    private final String zza = zzbkt.zzb.zze();
    private final Map<String, String> zzb;
    private final Context zzc;
    private final String zzd;

    public zzbjo(Context context, String str) {
        this.zzc = context;
        this.zzd = str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.zzb = linkedHashMap;
        linkedHashMap.put("s", "gmob_sdk");
        linkedHashMap.put("v", "3");
        linkedHashMap.put(User.DEVICE_META_OS_NAME, Build.VERSION.RELEASE);
        linkedHashMap.put("api_v", Build.VERSION.SDK);
        zzt.zzc();
        linkedHashMap.put(AnalyticsConstants.DEVICE, zzs.zzx());
        linkedHashMap.put("app", context.getApplicationContext() != null ? context.getApplicationContext().getPackageName() : context.getPackageName());
        zzt.zzc();
        linkedHashMap.put("is_lite_sdk", true != zzs.zzH(context) ? DtbConstants.NETWORK_TYPE_UNKNOWN : "1");
        Future<zzcbo> zzb = zzt.zzn().zzb(context);
        try {
            linkedHashMap.put("network_coarse", Integer.toString(zzb.get().zzk));
            linkedHashMap.put("network_fine", Integer.toString(zzb.get().zzl));
        } catch (Exception e) {
            zzt.zzg().zzk(e, "CsiConfiguration.CsiConfiguration");
        }
    }

    public final String zza() {
        return this.zza;
    }

    public final Context zzb() {
        return this.zzc;
    }

    public final String zzc() {
        return this.zzd;
    }

    public final Map<String, String> zzd() {
        return this.zzb;
    }
}
