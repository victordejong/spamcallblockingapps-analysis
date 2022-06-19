package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzr.class */
public final class zzr {
    private final zzfu zza;

    public zzr(zzfu zzfuVar) {
        this.zza = zzfuVar;
    }

    public final void zza() {
        this.zza.zzav().zzg();
        if (!zze()) {
            return;
        }
        if (zzd()) {
            this.zza.zzd().zzp.zzb(null);
            Bundle bundle = new Bundle();
            bundle.putString("source", "(not set)");
            bundle.putString("medium", "(not set)");
            bundle.putString("_cis", "intent");
            bundle.putLong("_cc", 1L);
            this.zza.zzk().zzs("auto", "_cmpx", bundle);
        } else {
            String zza = this.zza.zzd().zzp.zza();
            if (TextUtils.isEmpty(zza)) {
                this.zza.zzau().zzc().zza("Cache still valid but referrer not found");
            } else {
                long zza2 = this.zza.zzd().zzq.zza() / 3600000;
                Uri parse = Uri.parse(zza);
                Bundle bundle2 = new Bundle();
                Pair pair = new Pair(parse.getPath(), bundle2);
                for (String str : parse.getQueryParameterNames()) {
                    bundle2.putString(str, parse.getQueryParameter(str));
                }
                ((Bundle) pair.second).putLong("_cc", (zza2 - 1) * 3600000);
                this.zza.zzk().zzs((String) pair.first, "_cmp", (Bundle) pair.second);
            }
            this.zza.zzd().zzp.zzb(null);
        }
        this.zza.zzd().zzq.zzb(0L);
    }

    public final void zzb(String str, Bundle bundle) {
        String str2;
        this.zza.zzav().zzg();
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
            this.zza.zzd().zzp.zzb(str2);
            this.zza.zzd().zzq.zzb(this.zza.zzay().currentTimeMillis());
        }
    }

    public final void zzc() {
        if (!zze() || !zzd()) {
            return;
        }
        this.zza.zzd().zzp.zzb(null);
    }

    public final boolean zzd() {
        return zze() && this.zza.zzay().currentTimeMillis() - this.zza.zzd().zzq.zza() > this.zza.zzc().zzj(null, zzea.zzQ);
    }

    public final boolean zze() {
        return this.zza.zzd().zzq.zza() > 0;
    }
}
