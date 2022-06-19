package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzbgq;
import com.google.android.gms.internal.ads.zzblj;
import com.google.android.gms.internal.ads.zzciz;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zza.class */
public final class zza {
    public static final boolean zza(Context context, Intent intent, zzw zzwVar, zzu zzuVar, boolean z) {
        if (z) {
            return zzc(context, intent.getData(), zzwVar, zzuVar);
        }
        try {
            String valueOf = String.valueOf(intent.toURI());
            zze.zza(valueOf.length() != 0 ? "Launching an intent: ".concat(valueOf) : new String("Launching an intent: "));
            zzt.zzp();
            com.google.android.gms.ads.internal.util.zzt.zzQ(context, intent);
            if (zzwVar != null) {
                zzwVar.zzg();
            }
            if (zzuVar == null) {
                return true;
            }
            zzuVar.zza(true);
            return true;
        } catch (ActivityNotFoundException e) {
            zzciz.zzj(e.getMessage());
            if (zzuVar == null) {
                return false;
            }
            zzuVar.zza(false);
            return false;
        }
    }

    public static final boolean zzb(Context context, zzc zzcVar, zzw zzwVar, zzu zzuVar) {
        int i = 0;
        if (zzcVar == null) {
            zzciz.zzj("No intent data for launcher overlay.");
            return false;
        }
        zzblj.zzc(context);
        Intent intent = zzcVar.zzh;
        if (intent != null) {
            return zza(context, intent, zzwVar, zzuVar, zzcVar.zzj);
        }
        Intent intent2 = new Intent();
        if (TextUtils.isEmpty(zzcVar.zzb)) {
            zzciz.zzj("Open GMSG did not contain a URL.");
            return false;
        }
        if (!TextUtils.isEmpty(zzcVar.zzc)) {
            intent2.setDataAndType(Uri.parse(zzcVar.zzb), zzcVar.zzc);
        } else {
            intent2.setData(Uri.parse(zzcVar.zzb));
        }
        intent2.setAction("android.intent.action.VIEW");
        if (!TextUtils.isEmpty(zzcVar.zzd)) {
            intent2.setPackage(zzcVar.zzd);
        }
        if (!TextUtils.isEmpty(zzcVar.zze)) {
            String[] split = zzcVar.zze.split("/", 2);
            if (split.length < 2) {
                String valueOf = String.valueOf(zzcVar.zze);
                zzciz.zzj(valueOf.length() != 0 ? "Could not parse component name from open GMSG: ".concat(valueOf) : new String("Could not parse component name from open GMSG: "));
                return false;
            }
            intent2.setClassName(split[0], split[1]);
        }
        String str = zzcVar.zzf;
        if (!TextUtils.isEmpty(str)) {
            try {
                i = Integer.parseInt(str);
            } catch (NumberFormatException e) {
                zzciz.zzj("Could not parse intent flags.");
            }
            intent2.addFlags(i);
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzdb)).booleanValue()) {
            intent2.addFlags(268435456);
            intent2.putExtra("android.support.customtabs.extra.user_opt_out", true);
        } else {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzda)).booleanValue()) {
                zzt.zzp();
                com.google.android.gms.ads.internal.util.zzt.zzu(context, intent2);
            }
        }
        return zza(context, intent2, zzwVar, zzuVar, zzcVar.zzj);
    }

    private static final boolean zzc(Context context, Uri uri, zzw zzwVar, zzu zzuVar) {
        int i;
        try {
            int zzs = zzt.zzp().zzs(context, uri);
            i = zzs;
            if (zzwVar != null) {
                zzwVar.zzg();
                i = zzs;
            }
        } catch (ActivityNotFoundException e) {
            zzciz.zzj(e.getMessage());
            i = 6;
        }
        if (zzuVar != null) {
            zzuVar.zzb(i);
        }
        return i == 5;
    }
}
