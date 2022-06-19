package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzr.class */
public final class zzr {
    private final zzfl zza;

    public zzr(zzfl zzflVar) {
        this.zza = zzflVar;
    }

    public final void zza() {
        this.zza.zzau().zzg();
        if (!zze()) {
            return;
        }
        if (zzd()) {
            this.zza.zzd().zzu.zzb(null);
            Bundle bundle = new Bundle();
            bundle.putString("source", "(not set)");
            bundle.putString(FirebaseAnalytics.Param.MEDIUM, "(not set)");
            bundle.putString("_cis", SDKConstants.PARAM_INTENT);
            bundle.putLong("_cc", 1L);
            this.zza.zzk().zzs("auto", "_cmpx", bundle);
        } else {
            String zza = this.zza.zzd().zzu.zza();
            if (TextUtils.isEmpty(zza)) {
                this.zza.zzat().zzc().zza("Cache still valid but referrer not found");
            } else {
                long zza2 = this.zza.zzd().zzv.zza() / 3600000;
                Uri parse = Uri.parse(zza);
                Bundle bundle2 = new Bundle();
                Pair pair = new Pair(parse.getPath(), bundle2);
                for (String str : parse.getQueryParameterNames()) {
                    bundle2.putString(str, parse.getQueryParameter(str));
                }
                ((Bundle) pair.second).putLong("_cc", (zza2 - 1) * 3600000);
                this.zza.zzk().zzs((String) pair.first, "_cmp", (Bundle) pair.second);
            }
            this.zza.zzd().zzu.zzb(null);
        }
        this.zza.zzd().zzv.zzb(0L);
    }

    public final void zzb(String str, Bundle bundle) {
        String str2;
        this.zza.zzau().zzg();
        if (!this.zza.zzF()) {
            if (bundle.isEmpty()) {
                str2 = null;
            } else {
                String str3 = str;
                if (true == str.isEmpty()) {
                    str3 = "auto";
                }
                Uri.Builder builder = new Uri.Builder();
                builder.path(str3);
                for (String str4 : bundle.keySet()) {
                    builder.appendQueryParameter(str4, bundle.getString(str4));
                }
                str2 = builder.build().toString();
            }
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            this.zza.zzd().zzu.zzb(str2);
            this.zza.zzd().zzv.zzb(this.zza.zzax().currentTimeMillis());
        }
    }

    public final void zzc() {
        if (!zze() || !zzd()) {
            return;
        }
        this.zza.zzd().zzu.zzb(null);
    }

    final boolean zzd() {
        return zze() && this.zza.zzax().currentTimeMillis() - this.zza.zzd().zzv.zza() > this.zza.zzc().zzj(null, zzdw.zzQ);
    }

    final boolean zze() {
        return this.zza.zzd().zzv.zza() > 0;
    }
}
