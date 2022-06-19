package com.google.android.gms.ads.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.AbstractC3244jf;
import com.google.android.gms.internal.ads.C3247ji;
import com.google.android.gms.internal.ads.C3543uh;
import com.google.android.gms.internal.ads.C3556uu;
import com.google.android.gms.internal.ads.C3647yd;
import com.google.android.gms.internal.ads.C3650yg;
import com.google.android.gms.internal.ads.C3654yk;
import com.google.android.gms.internal.ads.crg;
import com.google.android.gms.internal.ads.crt;
import com.google.android.gms.internal.ads.dyx;
import com.google.android.gms.internal.ads.edi;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.ads.internal.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/d.class */
public final class C2302d {

    /* renamed from: a */
    private Context f6637a;

    /* renamed from: b */
    private long f6638b = 0;

    /* renamed from: a */
    private final void m14796a(Context context, C3647yd c3647yd, boolean z, C3543uh c3543uh, String str, String str2, Runnable runnable) {
        boolean z2;
        if (C2341q.m14737j().mo13861b() - this.f6638b < 5000) {
            C3556uu.m6745e("Not retrying to fetch app settings");
            return;
        }
        this.f6638b = C2341q.m14737j().mo13861b();
        if (c3543uh == null) {
            z2 = true;
        } else {
            z2 = (((C2341q.m14737j().mo13862a() - c3543uh.m7079a()) > ((Long) dyx.m8158e().m7876a(edi.f16402bH)).longValue() ? 1 : ((C2341q.m14737j().mo13862a() - c3543uh.m7079a()) == ((Long) dyx.m8158e().m7876a(edi.f16402bH)).longValue() ? 0 : -1)) > 0) || !c3543uh.m7078b();
        }
        if (!z2) {
            return;
        }
        if (context == null) {
            C3556uu.m6745e("Context not provided to fetch application settings");
        } else if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            C3556uu.m6745e("App settings could not be fetched. Required parameters missing");
        } else {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext == null) {
                applicationContext = context;
            }
            this.f6637a = applicationContext;
            AbstractC3244jf m7725a = C2341q.m14731p().m7730b(this.f6637a, c3647yd).m7725a("google.afma.config.fetchAppSettings", C3247ji.f16804a, C3247ji.f16804a);
            try {
                JSONObject jSONObject = new JSONObject();
                if (!TextUtils.isEmpty(str)) {
                    jSONObject.put("app_id", str);
                } else if (!TextUtils.isEmpty(str2)) {
                    jSONObject.put("ad_unit_id", str2);
                }
                jSONObject.put("is_init", z);
                jSONObject.put("pn", context.getPackageName());
                crt mo7721b = m7725a.mo7721b(jSONObject);
                crt m10782a = crg.m10782a(mo7721b, C2304f.f6639a, C3650yg.f17647f);
                if (runnable != null) {
                    mo7721b.mo6734a(runnable, C3650yg.f17647f);
                }
                C3654yk.m6736a(m10782a, "ConfigLoader.maybeFetchNewAppSettings");
            } catch (Exception e) {
                C3556uu.m6748c("Error requesting application settings", e);
            }
        }
    }

    /* renamed from: a */
    public final void m14798a(Context context, C3647yd c3647yd, String str, C3543uh c3543uh) {
        m14796a(context, c3647yd, false, c3543uh, c3543uh != null ? c3543uh.m7076d() : null, str, null);
    }

    /* renamed from: a */
    public final void m14797a(Context context, C3647yd c3647yd, String str, Runnable runnable) {
        m14796a(context, c3647yd, true, null, str, null, runnable);
    }
}
