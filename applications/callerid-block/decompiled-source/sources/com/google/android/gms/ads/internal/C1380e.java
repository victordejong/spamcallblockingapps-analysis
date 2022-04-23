package com.google.android.gms.ads.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.C1674c;
import com.google.android.gms.internal.ads.C1691cp;
import com.google.android.gms.internal.ads.C1751gd;
import com.google.android.gms.internal.ads.C1801jd;
import com.google.android.gms.internal.ads.C1842m3;
import com.google.android.gms.internal.ads.C1894po;
import com.google.android.gms.internal.ads.C1999vn;
import com.google.android.gms.internal.ads.C2073zo;
import com.google.android.gms.internal.ads.cd;
import com.google.android.gms.internal.ads.kz1;
import com.google.android.gms.internal.ads.rz1;
import com.google.android.gms.internal.ads.sz1;
import com.google.android.gms.internal.ads.uy1;
import com.google.android.gms.internal.ads.yc;
import com.google.android.gms.internal.ads.zzbbq;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.ads.internal.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/e.class */
public final class C1380e {

    /* renamed from: a */
    private Context f5497a;

    /* renamed from: b */
    private long f5498b = 0;

    /* renamed from: a */
    public final void m8952a(Context context, zzbbq zzbbqVar, String str, Runnable runnable) {
        m8950c(context, zzbbqVar, true, null, str, null, runnable);
    }

    /* renamed from: b */
    public final void m8951b(Context context, zzbbq zzbbqVar, String str, C1999vn vnVar) {
        m8950c(context, zzbbqVar, false, vnVar, vnVar != null ? vnVar.m5205e() : null, str, null);
    }

    /* renamed from: c */
    final void m8950c(Context context, zzbbq zzbbqVar, boolean z, C1999vn vnVar, String str, String str2, Runnable runnable) {
        if (C1407r.m8913k().m8245c() - this.f5498b < 5000) {
            C1894po.m6180f("Not retrying to fetch app settings");
            return;
        }
        this.f5498b = C1407r.m8913k().m8245c();
        if (vnVar != null) {
            long b = vnVar.m5208b();
            if (C1407r.m8913k().m8247a() - b <= ((Long) C1674c.m7906c().m6878b(C1842m3.f7380b2)).longValue() && vnVar.m5207c()) {
                return;
            }
        }
        if (context == null) {
            C1894po.m6180f("Context not provided to fetch application settings");
        } else if (!TextUtils.isEmpty(str) || !TextUtils.isEmpty(str2)) {
            Context applicationContext = context.getApplicationContext();
            Context context2 = applicationContext;
            if (applicationContext == null) {
                context2 = context;
            }
            this.f5497a = context2;
            C1801jd b2 = C1407r.m8907q().m4652b(this.f5497a, zzbbqVar);
            cd<JSONObject> cdVar = C1751gd.f6642b;
            yc a = b2.m7044a("google.afma.config.fetchAppSettings", cdVar, cdVar);
            try {
                JSONObject jSONObject = new JSONObject();
                if (!TextUtils.isEmpty(str)) {
                    jSONObject.put("app_id", str);
                } else if (!TextUtils.isEmpty(str2)) {
                    jSONObject.put("ad_unit_id", str2);
                }
                jSONObject.put("is_init", z);
                jSONObject.put("pn", context.getPackageName());
                rz1 b3 = a.b(jSONObject);
                uy1 uy1Var = d.a;
                sz1 sz1Var = C2073zo.f9415f;
                rz1 h = kz1.h(b3, uy1Var, sz1Var);
                if (runnable != null) {
                    b3.m5851e(runnable, sz1Var);
                }
                C1691cp.m7792a(h, "ConfigLoader.maybeFetchNewAppSettings");
            } catch (Exception e) {
                C1894po.m6182d("Error requesting application settings", e);
            }
        } else {
            C1894po.m6180f("App settings could not be fetched. Required parameters missing");
        }
    }
}
