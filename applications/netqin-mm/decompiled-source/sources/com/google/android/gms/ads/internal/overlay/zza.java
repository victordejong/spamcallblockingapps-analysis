package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzayp;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzwm;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zza.class */
public final class zza {
    /* renamed from: a */
    public static boolean m18020a(Context context, Intent intent, zzv zzvVar) {
        try {
            String valueOf = String.valueOf(intent.toURI());
            zzayp.m16153g(valueOf.length() != 0 ? "Launching an intent: ".concat(valueOf) : new String("Launching an intent: "));
            zzp.m17969c();
            zzayu.m16143a(context, intent);
            if (zzvVar == null) {
                return true;
            }
            zzvVar.mo17999a();
            return true;
        } catch (ActivityNotFoundException e) {
            zzbbq.m15852d(e.getMessage());
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m18019a(Context context, zzb zzbVar, zzv zzvVar) {
        int i = 0;
        if (zzbVar == null) {
            zzbbq.m15852d("No intent data for launcher overlay.");
            return false;
        }
        zzabb.m16916a(context);
        Intent intent = zzbVar.f22752h;
        if (intent != null) {
            return m18020a(context, intent, zzvVar);
        }
        Intent intent2 = new Intent();
        if (TextUtils.isEmpty(zzbVar.f22746b)) {
            zzbbq.m15852d("Open GMSG did not contain a URL.");
            return false;
        }
        if (!TextUtils.isEmpty(zzbVar.f22747c)) {
            intent2.setDataAndType(Uri.parse(zzbVar.f22746b), zzbVar.f22747c);
        } else {
            intent2.setData(Uri.parse(zzbVar.f22746b));
        }
        intent2.setAction("android.intent.action.VIEW");
        if (!TextUtils.isEmpty(zzbVar.f22748d)) {
            intent2.setPackage(zzbVar.f22748d);
        }
        if (!TextUtils.isEmpty(zzbVar.f22749e)) {
            String[] split = zzbVar.f22749e.split("/", 2);
            if (split.length < 2) {
                String valueOf = String.valueOf(zzbVar.f22749e);
                zzbbq.m15852d(valueOf.length() != 0 ? "Could not parse component name from open GMSG: ".concat(valueOf) : new String("Could not parse component name from open GMSG: "));
                return false;
            }
            intent2.setClassName(split[0], split[1]);
        }
        String str = zzbVar.f22750f;
        if (!TextUtils.isEmpty(str)) {
            try {
                i = Integer.parseInt(str);
            } catch (NumberFormatException e) {
                zzbbq.m15852d("Could not parse intent flags.");
            }
            intent2.addFlags(i);
        }
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23793c2)).booleanValue()) {
            intent2.addFlags(268435456);
            intent2.putExtra("android.support.customtabs.extra.user_opt_out", true);
        } else {
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23787b2)).booleanValue()) {
                zzp.m17969c();
                zzayu.m16112b(context, intent2);
            }
        }
        return m18020a(context, intent2, zzvVar);
    }
}
