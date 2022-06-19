package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import com.google.android.gms.ads.internal.util.C5722o1;
import com.google.android.gms.internal.ads.C6679kw;
import com.google.android.gms.internal.ads.C7192yr;
import com.google.android.gms.internal.ads.ei0;
/* renamed from: com.google.android.gms.ads.internal.overlay.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/a.class */
public final class C5639a {
    /* renamed from: a */
    public static final boolean m18206a(Context context, Intent intent, AbstractC5659u abstractC5659u, AbstractC5657s abstractC5657s, boolean z) {
        if (z) {
            return m18204c(context, intent.getData(), abstractC5659u, abstractC5657s);
        }
        try {
            String valueOf = String.valueOf(intent.toURI());
            C5722o1.m17990k(valueOf.length() != 0 ? "Launching an intent: ".concat(valueOf) : new String("Launching an intent: "));
            C5667s.m18160d();
            C5679c2.m18059p(context, intent);
            if (abstractC5659u != null) {
                abstractC5659u.zzg();
            }
            if (abstractC5657s == null) {
                return true;
            }
            abstractC5657s.mo9363b(true);
            return true;
        } catch (ActivityNotFoundException e) {
            ei0.m15464f(e.getMessage());
            if (abstractC5657s == null) {
                return false;
            }
            abstractC5657s.mo9363b(false);
            return false;
        }
    }

    /* renamed from: b */
    public static final boolean m18205b(Context context, zzc zzcVar, AbstractC5659u abstractC5659u, AbstractC5657s abstractC5657s) {
        int i;
        if (zzcVar == null) {
            ei0.m15464f("No intent data for launcher overlay.");
            return false;
        }
        C6679kw.m13770a(context);
        Intent intent = zzcVar.f18385k;
        if (intent != null) {
            return m18206a(context, intent, abstractC5659u, abstractC5657s, zzcVar.f18387m);
        }
        Intent intent2 = new Intent();
        if (TextUtils.isEmpty(zzcVar.f18379e)) {
            ei0.m15464f("Open GMSG did not contain a URL.");
            return false;
        }
        if (!TextUtils.isEmpty(zzcVar.f18380f)) {
            intent2.setDataAndType(Uri.parse(zzcVar.f18379e), zzcVar.f18380f);
        } else {
            intent2.setData(Uri.parse(zzcVar.f18379e));
        }
        intent2.setAction("android.intent.action.VIEW");
        if (!TextUtils.isEmpty(zzcVar.f18381g)) {
            intent2.setPackage(zzcVar.f18381g);
        }
        if (!TextUtils.isEmpty(zzcVar.f18382h)) {
            String[] split = zzcVar.f18382h.split("/", 2);
            if (split.length < 2) {
                String valueOf = String.valueOf(zzcVar.f18382h);
                ei0.m15464f(valueOf.length() != 0 ? "Could not parse component name from open GMSG: ".concat(valueOf) : new String("Could not parse component name from open GMSG: "));
                return false;
            }
            intent2.setClassName(split[0], split[1]);
        }
        String str = zzcVar.f18383i;
        if (!TextUtils.isEmpty(str)) {
            try {
                i = Integer.parseInt(str);
            } catch (NumberFormatException e) {
                ei0.m15464f("Could not parse intent flags.");
                i = 0;
            }
            intent2.addFlags(i);
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25598U2)).booleanValue()) {
            intent2.addFlags(268435456);
            intent2.putExtra("android.support.customtabs.extra.user_opt_out", true);
        } else {
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25590T2)).booleanValue()) {
                C5667s.m18160d();
                C5679c2.m18078b0(context, intent2);
            }
        }
        return m18206a(context, intent2, abstractC5659u, abstractC5657s, zzcVar.f18387m);
    }

    /* renamed from: c */
    private static final boolean m18204c(Context context, Uri uri, AbstractC5659u abstractC5659u, AbstractC5657s abstractC5657s) {
        int i;
        try {
            int m18082Z = C5667s.m18160d().m18082Z(context, uri);
            i = m18082Z;
            if (abstractC5659u != null) {
                abstractC5659u.zzg();
                i = m18082Z;
            }
        } catch (ActivityNotFoundException e) {
            ei0.m15464f(e.getMessage());
            i = 6;
        }
        if (abstractC5657s != null) {
            abstractC5657s.mo9364a(i);
        }
        return i == 5;
    }
}
