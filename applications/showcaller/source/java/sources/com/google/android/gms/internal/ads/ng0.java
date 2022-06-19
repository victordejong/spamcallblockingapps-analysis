package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C5667s;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ng0.class */
public final class ng0 {
    /* renamed from: a */
    public static String m12915a(String str, Context context, boolean z) {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25695g0)).booleanValue() || z) {
            String str2 = str;
            if (C5667s.m18163a().m13546g(context)) {
                if (TextUtils.isEmpty(str)) {
                    str2 = str;
                } else {
                    String m13536q = C5667s.m18163a().m13536q(context);
                    if (m13536q == null) {
                        return str;
                    }
                    String str3 = (String) C7192yr.m8714c().m14263c(C6679kw.f25635Z);
                    if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25627Y)).booleanValue() || !str.contains(str3)) {
                        str2 = str;
                        if (!str.contains("fbs_aeid")) {
                            if (C5667s.m18160d().m18085W(str)) {
                                C5667s.m18163a().m13534s(context, m13536q);
                                return m12913c(m12912d(str, context), "fbs_aeid", m13536q).toString();
                            }
                            str2 = str;
                            if (C5667s.m18160d().m18084X(str)) {
                                C5667s.m18163a().m13533t(context, m13536q);
                                str2 = m12913c(m12912d(str, context), "fbs_aeid", m13536q).toString();
                            }
                        }
                    } else if (C5667s.m18160d().m18085W(str)) {
                        C5667s.m18163a().m13534s(context, m13536q);
                        return m12912d(str, context).replace(str3, m13536q);
                    } else {
                        str2 = str;
                        if (C5667s.m18160d().m18084X(str)) {
                            C5667s.m18163a().m13533t(context, m13536q);
                            return m12912d(str, context).replace(str3, m13536q);
                        }
                    }
                }
            }
            return str2;
        }
        return str;
    }

    /* renamed from: b */
    public static String m12914b(Uri uri, Context context) {
        String m13536q;
        String str;
        if (C5667s.m18163a().m13546g(context) && (m13536q = C5667s.m18163a().m13536q(context)) != null) {
            String str2 = (String) C7192yr.m8714c().m14263c(C6679kw.f25635Z);
            String uri2 = uri.toString();
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25627Y)).booleanValue() && uri2.contains(str2)) {
                C5667s.m18163a().m13534s(context, m13536q);
                str = m12912d(uri2, context).replace(str2, m13536q);
            } else if (TextUtils.isEmpty(uri.getQueryParameter("fbs_aeid"))) {
                String uri3 = m12913c(m12912d(uri2, context), "fbs_aeid", m13536q).toString();
                C5667s.m18163a().m13534s(context, m13536q);
                return uri3;
            } else {
                str = uri2;
            }
            return str;
        }
        return uri.toString();
    }

    /* renamed from: c */
    static Uri m12913c(String str, String str2, String str3) {
        int indexOf = str.indexOf("&adurl");
        int i = indexOf;
        if (indexOf == -1) {
            i = str.indexOf("?adurl");
        }
        if (i != -1) {
            int i2 = i + 1;
            return Uri.parse(str.substring(0, i2) + str2 + "=" + str3 + "&" + str.substring(i2));
        }
        return Uri.parse(str).buildUpon().appendQueryParameter(str2, str3).build();
    }

    /* renamed from: d */
    private static String m12912d(String str, Context context) {
        String m13538o = C5667s.m18163a().m13538o(context);
        String m13537p = C5667s.m18163a().m13537p(context);
        String str2 = str;
        if (!str.contains("gmp_app_id")) {
            str2 = str;
            if (!TextUtils.isEmpty(m13538o)) {
                str2 = m12913c(str, "gmp_app_id", m13538o).toString();
            }
        }
        String str3 = str2;
        if (!str2.contains("fbs_aiid")) {
            str3 = str2;
            if (!TextUtils.isEmpty(m13537p)) {
                str3 = m12913c(str2, "fbs_aiid", m13537p).toString();
            }
        }
        return str3;
    }
}
