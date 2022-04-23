package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.C1433l1;
import com.google.android.gms.ads.internal.util.y0;
import com.google.android.gms.internal.ads.C1674c;
import com.google.android.gms.internal.ads.C1842m3;
import com.google.android.gms.internal.ads.C1894po;
/* renamed from: com.google.android.gms.ads.internal.overlay.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/a.class */
public final class C1389a {
    /* renamed from: a */
    public static final boolean m8943a(Context context, Intent intent, AbstractC1403w wVar, AbstractC1402u uVar, boolean z) {
        if (z) {
            return m8941c(context, intent.getData(), wVar, uVar);
        }
        try {
            String valueOf = String.valueOf(intent.toURI());
            y0.k(valueOf.length() != 0 ? "Launching an intent: ".concat(valueOf) : new String("Launching an intent: "));
            C1407r.m8920d();
            C1433l1.m8753n(context, intent);
            if (wVar != null) {
                wVar.m8931d();
            }
            if (uVar == null) {
                return true;
            }
            uVar.m8932b(true);
            return true;
        } catch (ActivityNotFoundException e) {
            C1894po.m6180f(e.getMessage());
            if (uVar == null) {
                return false;
            }
            uVar.m8932b(false);
            return false;
        }
    }

    /* renamed from: b */
    public static final boolean m8942b(Context context, zzc zzcVar, AbstractC1403w wVar, AbstractC1402u uVar) {
        String str;
        int i = 0;
        if (zzcVar == null) {
            str = "No intent data for launcher overlay.";
        } else {
            C1842m3.m6600a(context);
            Intent intent = zzcVar.i;
            if (intent == null) {
                Intent intent2 = new Intent();
                if (TextUtils.isEmpty(zzcVar.c)) {
                    str = "Open GMSG did not contain a URL.";
                } else {
                    if (!TextUtils.isEmpty(zzcVar.d)) {
                        intent2.setDataAndType(Uri.parse(zzcVar.c), zzcVar.d);
                    } else {
                        intent2.setData(Uri.parse(zzcVar.c));
                    }
                    intent2.setAction("android.intent.action.VIEW");
                    if (!TextUtils.isEmpty(zzcVar.e)) {
                        intent2.setPackage(zzcVar.e);
                    }
                    if (!TextUtils.isEmpty(zzcVar.f)) {
                        String[] split = zzcVar.f.split("/", 2);
                        if (split.length < 2) {
                            String valueOf = String.valueOf(zzcVar.f);
                            C1894po.m6180f(valueOf.length() != 0 ? "Could not parse component name from open GMSG: ".concat(valueOf) : new String("Could not parse component name from open GMSG: "));
                            return false;
                        }
                        intent2.setClassName(split[0], split[1]);
                    }
                    String str2 = zzcVar.g;
                    if (!TextUtils.isEmpty(str2)) {
                        try {
                            i = Integer.parseInt(str2);
                        } catch (NumberFormatException e) {
                            C1894po.m6180f("Could not parse intent flags.");
                        }
                        intent2.addFlags(i);
                    }
                    if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7492r2)).booleanValue()) {
                        intent2.addFlags(268435456);
                        intent2.putExtra("android.support.customtabs.extra.user_opt_out", true);
                        intent = intent2;
                    } else {
                        intent = intent2;
                        if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7485q2)).booleanValue()) {
                            C1407r.m8920d();
                            C1433l1.m8772Z(context, intent2);
                            intent = intent2;
                        }
                    }
                }
            }
            return m8943a(context, intent, wVar, uVar, zzcVar.k);
        }
        C1894po.m6180f(str);
        return false;
    }

    /* renamed from: c */
    private static final boolean m8941c(Context context, Uri uri, AbstractC1403w wVar, AbstractC1402u uVar) {
        int i;
        try {
            int X = C1407r.m8920d().m8774X(context, uri);
            i = X;
            if (wVar != null) {
                wVar.m8931d();
                i = X;
            }
        } catch (ActivityNotFoundException e) {
            C1894po.m6180f(e.getMessage());
            i = 6;
        }
        if (uVar != null) {
            uVar.m8933a(i);
        }
        return i == 5;
    }
}
