package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzacr;
import com.google.android.gms.internal.ads.zzwr;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzb.class */
public final class zzb {
    private static boolean zza(Context context, Intent intent, zzv zzvVar, zzt zztVar, boolean z) {
        if (z) {
            return zza(context, intent.getData(), zzvVar, zztVar);
        }
        try {
            String valueOf = String.valueOf(intent.toURI());
            zzd.zzeb(valueOf.length() != 0 ? "Launching an intent: ".concat(valueOf) : new String("Launching an intent: "));
            zzr.zzkr();
            zzj.zza(context, intent);
            if (zzvVar != null) {
                zzvVar.zzwg();
            }
            if (zztVar == null) {
                return true;
            }
            zztVar.zzab(true);
            return true;
        } catch (ActivityNotFoundException e) {
            zzd.zzex(e.getMessage());
            if (zztVar == null) {
                return false;
            }
            zztVar.zzab(false);
            return false;
        }
    }

    private static boolean zza(Context context, Uri uri, zzv zzvVar, zzt zztVar) {
        zzacr zzacrVar = zzacr.UNKNOWN;
        zzacr zzacrVar2 = zzacrVar;
        try {
            try {
                zzacr zza = zzr.zzkr().zza(context, uri);
                if (zzvVar != null) {
                    zzacrVar2 = zza;
                    zzacrVar = zza;
                    zzvVar.zzwg();
                }
                if (zztVar != null) {
                    zztVar.zza(zza);
                }
                return zza.equals(zzacr.CCT_READY_TO_OPEN);
            } catch (ActivityNotFoundException e) {
                zzd.zzex(e.getMessage());
                zzacr zzacrVar3 = zzacrVar;
                zzacr zzacrVar4 = zzacr.ACTIVITY_NOT_FOUND;
                if (zztVar != null) {
                    zztVar.zza(zzacrVar4);
                }
                return zzacrVar4.equals(zzacr.CCT_READY_TO_OPEN);
            }
        } catch (Throwable th) {
            if (zztVar != null) {
                zztVar.zza(zzacrVar2);
            }
            return zzacrVar2.equals(zzacr.CCT_READY_TO_OPEN);
        }
    }

    public static boolean zza(Context context, zzd zzdVar, zzv zzvVar, zzt zztVar) {
        int i = 0;
        if (zzdVar == null) {
            zzd.zzex("No intent data for launcher overlay.");
            return false;
        }
        zzabp.initialize(context);
        if (zzdVar.intent != null) {
            return zza(context, zzdVar.intent, zzvVar, zztVar, zzdVar.zzdsg);
        }
        Intent intent = new Intent();
        if (TextUtils.isEmpty(zzdVar.url)) {
            zzd.zzex("Open GMSG did not contain a URL.");
            return false;
        }
        if (!TextUtils.isEmpty(zzdVar.mimeType)) {
            intent.setDataAndType(Uri.parse(zzdVar.url), zzdVar.mimeType);
        } else {
            intent.setData(Uri.parse(zzdVar.url));
        }
        intent.setAction("android.intent.action.VIEW");
        if (!TextUtils.isEmpty(zzdVar.packageName)) {
            intent.setPackage(zzdVar.packageName);
        }
        if (!TextUtils.isEmpty(zzdVar.zzdsd)) {
            String[] split = zzdVar.zzdsd.split("/", 2);
            if (split.length < 2) {
                String valueOf = String.valueOf(zzdVar.zzdsd);
                zzd.zzex(valueOf.length() != 0 ? "Could not parse component name from open GMSG: ".concat(valueOf) : new String("Could not parse component name from open GMSG: "));
                return false;
            }
            intent.setClassName(split[0], split[1]);
        }
        String str = zzdVar.zzdse;
        if (!TextUtils.isEmpty(str)) {
            try {
                i = Integer.parseInt(str);
            } catch (NumberFormatException e) {
                zzd.zzex("Could not parse intent flags.");
            }
            intent.addFlags(i);
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcuq)).booleanValue()) {
            intent.addFlags(268435456);
            intent.putExtra("android.support.customtabs.extra.user_opt_out", true);
        } else {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcup)).booleanValue()) {
                zzr.zzkr();
                zzj.zzb(context, intent);
            }
        }
        return zza(context, intent, zzvVar, zztVar, zzdVar.zzdsg);
    }
}
