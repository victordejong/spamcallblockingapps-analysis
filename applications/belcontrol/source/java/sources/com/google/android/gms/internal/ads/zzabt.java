package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Future;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzabt.class */
public final class zzabt {
    private Context context;
    private String zzbrp;
    private String zzdat = zzadf.zzddh.get();
    private Map<String, String> zzdaw;

    public zzabt(Context context, String str) {
        this.context = null;
        this.zzbrp = null;
        this.context = context;
        this.zzbrp = str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.zzdaw = linkedHashMap;
        linkedHashMap.put("s", "gmob_sdk");
        this.zzdaw.put("v", "3");
        this.zzdaw.put("os", Build.VERSION.RELEASE);
        this.zzdaw.put("api_v", Build.VERSION.SDK);
        Map<String, String> map = this.zzdaw;
        zzr.zzkr();
        map.put("device", zzj.zzyz());
        this.zzdaw.put("app", context.getApplicationContext() != null ? context.getApplicationContext().getPackageName() : context.getPackageName());
        Map<String, String> map2 = this.zzdaw;
        zzr.zzkr();
        map2.put("is_lite_sdk", zzj.zzau(context) ? "1" : "0");
        Future<zzatz> zzv = zzr.zzlc().zzv(this.context);
        try {
            this.zzdaw.put("network_coarse", Integer.toString(zzv.get().zzdyc));
            this.zzdaw.put("network_fine", Integer.toString(zzv.get().zzdyd));
        } catch (Exception e) {
            zzr.zzkv().zza(e, "CsiConfiguration.CsiConfiguration");
        }
    }

    public final Context getContext() {
        return this.context;
    }

    public final String zzlw() {
        return this.zzbrp;
    }

    public final String zzsj() {
        return this.zzdat;
    }

    public final Map<String, String> zzsk() {
        return this.zzdaw;
    }
}
