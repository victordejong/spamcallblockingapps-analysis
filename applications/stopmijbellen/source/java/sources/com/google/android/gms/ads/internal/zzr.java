package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzbfd;
import com.google.android.gms.internal.ads.zzbmn;
import com.google.android.gms.internal.ads.zzciz;
import com.google.android.gms.internal.ads.zzcjf;
import com.google.android.gms.internal.ads.zzevk;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzr.class */
public final class zzr {
    private final Context zza;
    private final String zzb;
    private final Map<String, String> zzc = new TreeMap();
    private String zzd;
    private String zze;
    private final String zzf;

    public zzr(Context context, String str) {
        String str2;
        this.zza = context.getApplicationContext();
        this.zzb = str;
        String packageName = context.getPackageName();
        try {
            String str3 = Wrappers.packageManager(context).getPackageInfo(context.getPackageName(), 0).versionName;
            StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 1 + String.valueOf(str3).length());
            sb.append(packageName);
            sb.append("-");
            sb.append(str3);
            str2 = sb.toString();
        } catch (PackageManager.NameNotFoundException e) {
            zzciz.zzh("Unable to get package version name for reporting", e);
            str2 = String.valueOf(packageName).concat("-missing");
        }
        this.zzf = str2;
    }

    public final String zza() {
        return this.zzf;
    }

    public final String zzb() {
        return this.zze;
    }

    public final String zzc() {
        return this.zzb;
    }

    public final String zzd() {
        return this.zzd;
    }

    public final Map<String, String> zze() {
        return this.zzc;
    }

    public final void zzf(zzbfd zzbfdVar, zzcjf zzcjfVar) {
        this.zzd = zzbfdVar.zzj.zza;
        Bundle bundle = zzbfdVar.zzm;
        Bundle bundle2 = bundle != null ? bundle.getBundle(AdMobAdapter.class.getName()) : null;
        if (bundle2 == null) {
            return;
        }
        String zze = zzbmn.zzc.zze();
        for (String str : bundle2.keySet()) {
            if (zze.equals(str)) {
                this.zze = bundle2.getString(str);
            } else if (str.startsWith("csa_")) {
                this.zzc.put(str.substring(4), bundle2.getString(str));
            }
        }
        this.zzc.put("SDKVersion", zzcjfVar.zza);
        if (!zzbmn.zza.zze().booleanValue()) {
            return;
        }
        try {
            Bundle zza = zzevk.zza(this.zza, new JSONArray(zzbmn.zzb.zze()));
            for (String str2 : zza.keySet()) {
                this.zzc.put(str2, zza.get(str2).toString());
            }
        } catch (JSONException e) {
            zzciz.zzh("Flag gads:afs:csa_tcf_data_to_collect not a valid JSON array", e);
        }
    }
}
