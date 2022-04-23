package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.aq;
import com.google.android.gms.internal.ads.bt;
import com.google.android.gms.internal.ads.ekb;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zza.class */
public final class zza {
    private static boolean zza(Context context, Intent intent, zzx zzxVar, zzv zzvVar, boolean z) {
        if (z) {
            return zza(context, intent.getData(), zzxVar, zzvVar);
        }
        try {
            String valueOf = String.valueOf(intent.toURI());
            zzd.zzed(valueOf.length() != 0 ? "Launching an intent: ".concat(valueOf) : new String("Launching an intent: "));
            zzr.zzkv();
            zzj.zza(context, intent);
            if (zzxVar != null) {
                zzxVar.zzws();
            }
            if (zzvVar == null) {
                return true;
            }
            zzvVar.zzaf(true);
            return true;
        } catch (ActivityNotFoundException e) {
            zzd.zzez(e.getMessage());
            if (zzvVar == null) {
                return false;
            }
            zzvVar.zzaf(false);
            return false;
        }
    }

    private static boolean zza(Context context, Uri uri, zzx zzxVar, zzv zzvVar) {
        bt btVar = bt.UNKNOWN;
        bt btVar2 = btVar;
        try {
            try {
                bt zza = zzr.zzkv().zza(context, uri);
                if (zzxVar != null) {
                    btVar2 = zza;
                    btVar = zza;
                    zzxVar.zzws();
                }
                if (zzvVar != null) {
                    zzvVar.zzb(zza);
                }
                return zza.equals(bt.CCT_READY_TO_OPEN);
            } catch (ActivityNotFoundException e) {
                zzd.zzez(e.getMessage());
                bt btVar3 = bt.ACTIVITY_NOT_FOUND;
                if (zzvVar != null) {
                    zzvVar.zzb(btVar3);
                }
                return btVar3.equals(bt.CCT_READY_TO_OPEN);
            }
        } catch (Throwable th) {
            if (zzvVar != null) {
                zzvVar.zzb(btVar2);
            }
            return btVar2.equals(bt.CCT_READY_TO_OPEN);
        }
    }

    public static boolean zza(Context context, zzb zzbVar, zzx zzxVar, zzv zzvVar) {
        int i = 0;
        if (zzbVar == null) {
            zzd.zzez("No intent data for launcher overlay.");
            return false;
        }
        aq.a(context);
        if (zzbVar.intent != null) {
            return zza(context, zzbVar.intent, zzxVar, zzvVar, zzbVar.zzdsy);
        }
        Intent intent = new Intent();
        if (TextUtils.isEmpty(zzbVar.url)) {
            zzd.zzez("Open GMSG did not contain a URL.");
            return false;
        }
        if (!TextUtils.isEmpty(zzbVar.mimeType)) {
            intent.setDataAndType(Uri.parse(zzbVar.url), zzbVar.mimeType);
        } else {
            intent.setData(Uri.parse(zzbVar.url));
        }
        intent.setAction("android.intent.action.VIEW");
        if (!TextUtils.isEmpty(zzbVar.packageName)) {
            intent.setPackage(zzbVar.packageName);
        }
        if (!TextUtils.isEmpty(zzbVar.zzdsv)) {
            String[] split = zzbVar.zzdsv.split("/", 2);
            if (split.length < 2) {
                String valueOf = String.valueOf(zzbVar.zzdsv);
                zzd.zzez(valueOf.length() != 0 ? "Could not parse component name from open GMSG: ".concat(valueOf) : new String("Could not parse component name from open GMSG: "));
                return false;
            }
            intent.setClassName(split[0], split[1]);
        }
        String str = zzbVar.zzdsw;
        if (!TextUtils.isEmpty(str)) {
            try {
                i = Integer.parseInt(str);
            } catch (NumberFormatException e) {
                zzd.zzez("Could not parse intent flags.");
            }
            intent.addFlags(i);
        }
        if (((Boolean) ekb.e().a(aq.cx)).booleanValue()) {
            intent.addFlags(268435456);
            intent.putExtra("android.support.customtabs.extra.user_opt_out", true);
        } else {
            if (((Boolean) ekb.e().a(aq.cw)).booleanValue()) {
                zzr.zzkv();
                zzj.zzb(context, intent);
            }
        }
        return zza(context, intent, zzxVar, zzvVar, zzbVar.zzdsy);
    }
}
