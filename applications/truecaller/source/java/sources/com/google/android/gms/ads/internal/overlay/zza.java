package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzbet;
import com.google.android.gms.internal.ads.zzbjl;
import com.google.android.gms.internal.ads.zzcgt;
import com.tenor.android.core.constant.StringConstant;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zza.class */
public final class zza {
    public static final boolean zza(Context context, Intent intent, zzv zzvVar, zzt zztVar, boolean z) {
        if (z) {
            return zzc(context, intent.getData(), zzvVar, zztVar);
        }
        try {
            String valueOf = String.valueOf(intent.toURI());
            zze.zza(valueOf.length() != 0 ? "Launching an intent: ".concat(valueOf) : new String("Launching an intent: "));
            zzt.zzc();
            zzs.zzP(context, intent);
            if (zzvVar != null) {
                zzvVar.zzg();
            }
            if (zztVar == null) {
                return true;
            }
            zztVar.zza(true);
            return true;
        } catch (ActivityNotFoundException e) {
            zzcgt.zzi(e.getMessage());
            if (zztVar == null) {
                return false;
            }
            zztVar.zza(false);
            return false;
        }
    }

    public static final boolean zzb(Context context, zzc zzcVar, zzv zzvVar, zzt zztVar) {
        int i;
        if (zzcVar == null) {
            zzcgt.zzi("No intent data for launcher overlay.");
            return false;
        }
        zzbjl.zza(context);
        Intent intent = zzcVar.zzh;
        if (intent != null) {
            return zza(context, intent, zzvVar, zztVar, zzcVar.zzj);
        }
        Intent intent2 = new Intent();
        if (TextUtils.isEmpty(zzcVar.zzb)) {
            zzcgt.zzi("Open GMSG did not contain a URL.");
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
            String[] split = zzcVar.zze.split(StringConstant.SLASH, 2);
            if (split.length < 2) {
                String valueOf = String.valueOf(zzcVar.zze);
                zzcgt.zzi(valueOf.length() != 0 ? "Could not parse component name from open GMSG: ".concat(valueOf) : new String("Could not parse component name from open GMSG: "));
                return false;
            }
            intent2.setClassName(split[0], split[1]);
        }
        String str = zzcVar.zzf;
        if (!TextUtils.isEmpty(str)) {
            try {
                i = Integer.parseInt(str);
            } catch (NumberFormatException e) {
                zzcgt.zzi("Could not parse intent flags.");
                i = 0;
            }
            intent2.addFlags(i);
        }
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzcU)).booleanValue()) {
            intent2.addFlags(268435456);
            intent2.putExtra("android.support.customtabs.extra.user_opt_out", true);
        } else {
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzcT)).booleanValue()) {
                zzt.zzc();
                zzs.zzu(context, intent2);
            }
        }
        return zza(context, intent2, zzvVar, zztVar, zzcVar.zzj);
    }

    private static final boolean zzc(Context context, Uri uri, zzv zzvVar, zzt zztVar) {
        int i;
        try {
            int zzs = zzt.zzc().zzs(context, uri);
            i = zzs;
            if (zzvVar != null) {
                zzvVar.zzg();
                i = zzs;
            }
        } catch (ActivityNotFoundException e) {
            zzcgt.zzi(e.getMessage());
            i = 6;
        }
        if (zztVar != null) {
            zztVar.zzb(i);
        }
        return i == 5;
    }
}
