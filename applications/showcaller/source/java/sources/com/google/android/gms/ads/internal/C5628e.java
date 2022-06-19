package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.C5722o1;
import com.google.android.gms.common.p272k.C6198c;
import com.google.android.gms.internal.ads.C6679kw;
import com.google.android.gms.internal.ads.C7192yr;
import com.google.android.gms.internal.ads.ei0;
import com.google.android.gms.internal.ads.g60;
import com.google.android.gms.internal.ads.jh0;
import com.google.android.gms.internal.ads.k03;
import com.google.android.gms.internal.ads.l60;
import com.google.android.gms.internal.ads.o60;
import com.google.android.gms.internal.ads.qi0;
import com.google.android.gms.internal.ads.r03;
import com.google.android.gms.internal.ads.r60;
import com.google.android.gms.internal.ads.s03;
import com.google.android.gms.internal.ads.ti0;
import com.google.android.gms.internal.ads.uz2;
import com.google.android.gms.internal.ads.zzcgz;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.ads.internal.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/e.class */
public final class C5628e {

    /* renamed from: a */
    private Context f18287a;

    /* renamed from: b */
    private long f18288b = 0;

    /* renamed from: a */
    public final void m18219a(Context context, zzcgz zzcgzVar, String str, Runnable runnable) {
        m18217c(context, zzcgzVar, true, null, str, null, runnable);
    }

    /* renamed from: b */
    public final void m18218b(Context context, zzcgz zzcgzVar, String str, jh0 jh0Var) {
        m18217c(context, zzcgzVar, false, jh0Var, jh0Var != null ? jh0Var.m14122e() : null, str, null);
    }

    /* renamed from: c */
    final void m18217c(Context context, zzcgz zzcgzVar, boolean z, jh0 jh0Var, String str, String str2, Runnable runnable) {
        PackageInfo m16888f;
        if (C5667s.m18153k().mo16806b() - this.f18288b < 5000) {
            ei0.m15464f("Not retrying to fetch app settings");
            return;
        }
        this.f18288b = C5667s.m18153k().mo16806b();
        if (jh0Var != null) {
            if (C5667s.m18153k().mo16807a() - jh0Var.m14125b() <= ((Long) C7192yr.m8714c().m14263c(C6679kw.f25833x2)).longValue() && jh0Var.m14124c()) {
                return;
            }
        }
        if (context == null) {
            ei0.m15464f("Context not provided to fetch application settings");
        } else if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            ei0.m15464f("App settings could not be fetched. Required parameters missing");
        } else {
            Context applicationContext = context.getApplicationContext();
            Context context2 = applicationContext;
            if (applicationContext == null) {
                context2 = context;
            }
            this.f18287a = context2;
            r60 m14747b = C5667s.m18147q().m14747b(this.f18287a, zzcgzVar);
            l60<JSONObject> l60Var = o60.f27442b;
            g60 m11677a = m14747b.m11677a("google.afma.config.fetchAppSettings", l60Var, l60Var);
            try {
                JSONObject jSONObject = new JSONObject();
                if (!TextUtils.isEmpty(str)) {
                    jSONObject.put("app_id", str);
                } else if (!TextUtils.isEmpty(str2)) {
                    jSONObject.put("ad_unit_id", str2);
                }
                jSONObject.put("is_init", z);
                jSONObject.put("pn", context.getPackageName());
                jSONObject.put("experiment_ids", TextUtils.join(",", C6679kw.m13768c()));
                try {
                    ApplicationInfo applicationInfo = this.f18287a.getApplicationInfo();
                    if (applicationInfo != null && (m16888f = C6198c.m16885a(context).m16888f(applicationInfo.packageName, 0)) != null) {
                        jSONObject.put("version", m16888f.versionCode);
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    C5722o1.m17990k("Error fetching PackageInfo.");
                }
                r03 mo10088b = m11677a.mo10088b(jSONObject);
                uz2 uz2Var = C5627d.f18286a;
                s03 s03Var = qi0.f28500f;
                r03 m13995i = k03.m13995i(mo10088b, uz2Var, s03Var);
                if (runnable != null) {
                    mo10088b.mo10015d(runnable, s03Var);
                }
                ti0.m10655a(m13995i, "ConfigLoader.maybeFetchNewAppSettings");
            } catch (Exception e2) {
                ei0.m15466d("Error requesting application settings", e2);
            }
        }
    }
}
