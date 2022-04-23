package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C1407r;
/* renamed from: com.google.android.gms.internal.ads.ym */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ym.class */
public final class C2054ym {
    /* renamed from: a */
    public static String m4737a(String str, Context context, boolean z) {
        if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7392d0)).booleanValue() && !z) {
            return str;
        }
        String str2 = str;
        if (C1407r.m8923a().m5032g(context)) {
            if (TextUtils.isEmpty(str)) {
                str2 = str;
            } else {
                String q = C1407r.m8923a().m5022q(context);
                if (q == null) {
                    return str;
                }
                if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7340V)).booleanValue()) {
                    String str3 = (String) C1674c.m7906c().m6878b(C1842m3.f7346W);
                    str2 = str;
                    if (str.contains(str3)) {
                        if (C1407r.m8920d().m8781Q(str)) {
                            C1407r.m8923a().m5020s(context, q);
                            return m4734d(str, context).replace(str3, q);
                        }
                        str2 = str;
                        if (C1407r.m8920d().m8780R(str)) {
                            C1407r.m8923a().m5019t(context, q);
                            return m4734d(str, context).replace(str3, q);
                        }
                    }
                } else {
                    str2 = str;
                    if (!str.contains("fbs_aeid")) {
                        if (C1407r.m8920d().m8781Q(str)) {
                            C1407r.m8923a().m5020s(context, q);
                            return m4735c(m4734d(str, context), "fbs_aeid", q).toString();
                        }
                        str2 = str;
                        if (C1407r.m8920d().m8780R(str)) {
                            C1407r.m8923a().m5019t(context, q);
                            str2 = m4735c(m4734d(str, context), "fbs_aeid", q).toString();
                        }
                    }
                }
            }
        }
        return str2;
    }

    /* renamed from: b */
    public static String m4736b(Uri uri, Context context) {
        String q;
        if (C1407r.m8923a().m5032g(context) && (q = C1407r.m8923a().m5022q(context)) != null) {
            if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7340V)).booleanValue()) {
                String str = (String) C1674c.m7906c().m6878b(C1842m3.f7346W);
                String uri2 = uri.toString();
                if (uri2.contains(str)) {
                    C1407r.m8923a().m5020s(context, q);
                    return m4734d(uri2, context).replace(str, q);
                }
            } else if (TextUtils.isEmpty(uri.getQueryParameter("fbs_aeid"))) {
                String uri3 = m4735c(m4734d(uri.toString(), context), "fbs_aeid", q).toString();
                C1407r.m8923a().m5020s(context, q);
                return uri3;
            }
            return uri.toString();
        }
        return uri.toString();
    }

    /* renamed from: c */
    static Uri m4735c(String str, String str2, String str3) {
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

    /* renamed from: d */
    private static String m4734d(String str, Context context) {
        String o = C1407r.m8923a().m5024o(context);
        String p = C1407r.m8923a().m5023p(context);
        String str2 = str;
        if (!str.contains("gmp_app_id")) {
            str2 = str;
            if (!TextUtils.isEmpty(o)) {
                str2 = m4735c(str, "gmp_app_id", o).toString();
            }
        }
        String str3 = str2;
        if (!str2.contains("fbs_aiid")) {
            str3 = str2;
            if (!TextUtils.isEmpty(p)) {
                str3 = m4735c(str2, "fbs_aiid", p).toString();
            }
        }
        return str3;
    }
}
