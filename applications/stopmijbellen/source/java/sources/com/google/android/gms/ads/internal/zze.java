package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzbgq;
import com.google.android.gms.internal.ads.zzblj;
import com.google.android.gms.internal.ads.zzbvx;
import com.google.android.gms.internal.ads.zzbwb;
import com.google.android.gms.internal.ads.zzbwe;
import com.google.android.gms.internal.ads.zzbwh;
import com.google.android.gms.internal.ads.zzcif;
import com.google.android.gms.internal.ads.zzciz;
import com.google.android.gms.internal.ads.zzcjf;
import com.google.android.gms.internal.ads.zzcjm;
import com.google.android.gms.internal.ads.zzcjp;
import com.google.android.gms.internal.ads.zzfwq;
import com.google.android.gms.internal.ads.zzfxa;
import com.google.android.gms.internal.ads.zzfxb;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zze.class */
public final class zze {
    private Context zza;
    private long zzb = 0;

    public final void zza(Context context, zzcjf zzcjfVar, String str, Runnable runnable) {
        zzb(context, zzcjfVar, true, null, str, null, runnable);
    }

    @VisibleForTesting
    public final void zzb(Context context, zzcjf zzcjfVar, boolean z, zzcif zzcifVar, String str, String str2, Runnable runnable) {
        PackageInfo packageInfo;
        if (zzt.zzA().elapsedRealtime() - this.zzb < 5000) {
            zzciz.zzj("Not retrying to fetch app settings");
            return;
        }
        this.zzb = zzt.zzA().elapsedRealtime();
        if (zzcifVar != null) {
            if (zzt.zzA().currentTimeMillis() - zzcifVar.zza() <= ((Long) zzbgq.zzc().zzb(zzblj.zzcE)).longValue() && zzcifVar.zzi()) {
                return;
            }
        }
        if (context == null) {
            zzciz.zzj("Context not provided to fetch application settings");
        } else if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            zzciz.zzj("App settings could not be fetched. Required parameters missing");
        } else {
            Context applicationContext = context.getApplicationContext();
            Context context2 = applicationContext;
            if (applicationContext == null) {
                context2 = context;
            }
            this.zza = context2;
            zzbwh zza = zzt.zzf().zza(this.zza, zzcjfVar);
            zzbwb<JSONObject> zzbwbVar = zzbwe.zza;
            zzbvx zza2 = zza.zza("google.afma.config.fetchAppSettings", zzbwbVar, zzbwbVar);
            try {
                JSONObject jSONObject = new JSONObject();
                if (!TextUtils.isEmpty(str)) {
                    jSONObject.put("app_id", str);
                } else if (!TextUtils.isEmpty(str2)) {
                    jSONObject.put("ad_unit_id", str2);
                }
                jSONObject.put("is_init", z);
                jSONObject.put("pn", context.getPackageName());
                jSONObject.put("experiment_ids", TextUtils.join(",", zzblj.zza()));
                try {
                    ApplicationInfo applicationInfo = this.zza.getApplicationInfo();
                    if (applicationInfo != null && (packageInfo = Wrappers.packageManager(context).getPackageInfo(applicationInfo.packageName, 0)) != null) {
                        jSONObject.put("version", packageInfo.versionCode);
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    com.google.android.gms.ads.internal.util.zze.zza("Error fetching PackageInfo.");
                }
                zzfxa zzb = zza2.zzb(jSONObject);
                zzd zzdVar = zzd.zza;
                zzfxb zzfxbVar = zzcjm.zzf;
                zzfxa zzn = zzfwq.zzn(zzb, zzdVar, zzfxbVar);
                if (runnable != null) {
                    zzb.zzc(runnable, zzfxbVar);
                }
                zzcjp.zza(zzn, "ConfigLoader.maybeFetchNewAppSettings");
            } catch (Exception e2) {
                zzciz.zzh("Error requesting application settings", e2);
            }
        }
    }

    public final void zzc(Context context, zzcjf zzcjfVar, String str, zzcif zzcifVar) {
        zzb(context, zzcjfVar, false, zzcifVar, zzcifVar != null ? zzcifVar.zzb() : null, str, null);
    }
}
