package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.VisibleForTesting;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxh.class */
public final class zzaxh {
    @VisibleForTesting
    /* renamed from: a */
    public static Uri m16218a(String str, String str2, String str3) {
        int indexOf = str.indexOf("&adurl");
        int i = indexOf;
        if (indexOf == -1) {
            i = str.indexOf("?adurl");
        }
        if (i == -1) {
            return Uri.parse(str).buildUpon().appendQueryParameter(str2, str3).build();
        }
        int i2 = i + 1;
        return Uri.parse(str.substring(0, i2) + str2 + "=" + str3 + "&" + str.substring(i2));
    }

    /* renamed from: a */
    public static String m16221a(Uri uri, Context context) {
        String e;
        if (zzp.m17972A().m16256a(context) && (e = zzp.m17972A().m16234e(context)) != null) {
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23748U)).booleanValue()) {
                String str = (String) zzwm.m11166e().m16921a(zzabb.f23753V);
                String uri2 = uri.toString();
                if (uri2.contains(str)) {
                    zzp.m17972A().m16235d(context, e);
                    return m16220a(uri2, context).replace(str, e);
                }
            } else if (TextUtils.isEmpty(uri.getQueryParameter("fbs_aeid"))) {
                String uri3 = m16218a(m16220a(uri.toString(), context), "fbs_aeid", e).toString();
                zzp.m17972A().m16235d(context, e);
                return uri3;
            }
            return uri.toString();
        }
        return uri.toString();
    }

    /* renamed from: a */
    public static String m16220a(String str, Context context) {
        String c = zzp.m17972A().m16238c(context);
        String d = zzp.m17972A().m16236d(context);
        String str2 = str;
        if (!str.contains("gmp_app_id")) {
            str2 = str;
            if (!TextUtils.isEmpty(c)) {
                str2 = m16218a(str, "gmp_app_id", c).toString();
            }
        }
        String str3 = str2;
        if (!str2.contains("fbs_aiid")) {
            str3 = str2;
            if (!TextUtils.isEmpty(d)) {
                str3 = m16218a(str2, "fbs_aiid", d).toString();
            }
        }
        return str3;
    }

    /* renamed from: a */
    public static String m16219a(String str, Context context, boolean z) {
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23791c0)).booleanValue() && !z) {
            return str;
        }
        String str2 = str;
        if (zzp.m17972A().m16256a(context)) {
            if (TextUtils.isEmpty(str)) {
                str2 = str;
            } else {
                String e = zzp.m17972A().m16234e(context);
                if (e == null) {
                    return str;
                }
                if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23748U)).booleanValue()) {
                    String str3 = (String) zzwm.m11166e().m16921a(zzabb.f23753V);
                    str2 = str;
                    if (str.contains(str3)) {
                        if (zzp.m17969c().m16122a(str)) {
                            zzp.m17972A().m16235d(context, e);
                            return m16220a(str, context).replace(str3, e);
                        }
                        str2 = str;
                        if (zzp.m17969c().m16106b(str)) {
                            zzp.m17972A().m16233e(context, e);
                            return m16220a(str, context).replace(str3, e);
                        }
                    }
                } else {
                    str2 = str;
                    if (!str.contains("fbs_aeid")) {
                        if (zzp.m17969c().m16122a(str)) {
                            zzp.m17972A().m16235d(context, e);
                            return m16218a(m16220a(str, context), "fbs_aeid", e).toString();
                        }
                        str2 = str;
                        if (zzp.m17969c().m16106b(str)) {
                            zzp.m17972A().m16233e(context, e);
                            str2 = m16218a(m16220a(str, context), "fbs_aeid", e).toString();
                        }
                    }
                }
            }
        }
        return str2;
    }
}
