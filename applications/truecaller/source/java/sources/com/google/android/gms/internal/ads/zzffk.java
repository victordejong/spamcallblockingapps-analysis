package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.amazon.device.ads.DtbConstants;
import com.freshchat.consumer.sdk.beans.User;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import com.razorpay.AnalyticsConstants;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzffk.class */
public final class zzffk {
    private final Context zza;
    private final String zzb;
    private final String zzc;

    public zzffk(Context context, zzcgz zzcgzVar) {
        this.zza = context;
        this.zzb = context.getPackageName();
        this.zzc = zzcgzVar.zza;
    }

    public final void zza(Map<String, String> map) {
        map.put("s", "gmob_sdk");
        map.put("v", "3");
        map.put(User.DEVICE_META_OS_NAME, Build.VERSION.RELEASE);
        map.put("api_v", Build.VERSION.SDK);
        zzt.zzc();
        map.put(AnalyticsConstants.DEVICE, zzs.zzx());
        map.put("app", this.zzb);
        zzt.zzc();
        map.put("is_lite_sdk", true != zzs.zzH(this.zza) ? DtbConstants.NETWORK_TYPE_UNKNOWN : "1");
        List<String> zzd = zzbjl.zzd();
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzff)).booleanValue()) {
            zzd.addAll(zzt.zzg().zzp().zzn().zzh());
        }
        map.put("e", TextUtils.join(",", zzd));
        map.put("sdkVersion", this.zzc);
    }
}
