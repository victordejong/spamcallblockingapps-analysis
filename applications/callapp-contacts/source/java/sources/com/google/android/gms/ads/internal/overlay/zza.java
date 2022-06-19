package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.C12187aq;
import com.google.android.gms.internal.ads.EnumC12252bt;
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
        EnumC12252bt enumC12252bt = EnumC12252bt.UNKNOWN;
        EnumC12252bt enumC12252bt2 = enumC12252bt;
        try {
            try {
                EnumC12252bt zza = zzr.zzkv().zza(context, uri);
                if (zzxVar != null) {
                    enumC12252bt2 = zza;
                    enumC12252bt = zza;
                    zzxVar.zzws();
                }
                if (zzvVar != null) {
                    zzvVar.zzb(zza);
                }
                return zza.equals(EnumC12252bt.CCT_READY_TO_OPEN);
            } catch (ActivityNotFoundException e) {
                zzd.zzez(e.getMessage());
                EnumC12252bt enumC12252bt3 = enumC12252bt;
                EnumC12252bt enumC12252bt4 = EnumC12252bt.ACTIVITY_NOT_FOUND;
                if (zzvVar != null) {
                    zzvVar.zzb(enumC12252bt4);
                }
                return enumC12252bt4.equals(EnumC12252bt.CCT_READY_TO_OPEN);
            }
        } catch (Throwable th) {
            if (zzvVar != null) {
                zzvVar.zzb(enumC12252bt2);
            }
            return enumC12252bt2.equals(EnumC12252bt.CCT_READY_TO_OPEN);
        }
    }

    public static boolean zza(Context context, zzb zzbVar, zzx zzxVar, zzv zzvVar) {
        int i;
        if (zzbVar == null) {
            zzd.zzez("No intent data for launcher overlay.");
            return false;
        }
        C12187aq.m18474a(context);
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
                i = 0;
            }
            intent.addFlags(i);
        }
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42793cx)).booleanValue()) {
            intent.addFlags(268435456);
            intent.putExtra("android.support.customtabs.extra.user_opt_out", true);
        } else {
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42792cw)).booleanValue()) {
                zzr.zzkv();
                zzj.zzb(context, intent);
            }
        }
        return zza(context, intent, zzxVar, zzvVar, zzbVar.zzdsy);
    }
}
