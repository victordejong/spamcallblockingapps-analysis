package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
/* renamed from: com.google.android.gms.internal.ads.xg */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/xg.class */
public final class C13040xg {
    /* renamed from: a */
    public static Uri m14006a(String str, String str2, String str3) {
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

    /* renamed from: a */
    public static String m14008a(String str, Context context) {
        String m14028d = zzr.zzlt().m14028d(context);
        String m14026e = zzr.zzlt().m14026e(context);
        String str2 = str;
        if (!str.contains("gmp_app_id")) {
            str2 = str;
            if (!TextUtils.isEmpty(m14028d)) {
                str2 = m14006a(str, "gmp_app_id", m14028d).toString();
            }
        }
        String str3 = str2;
        if (!str2.contains("fbs_aiid")) {
            str3 = str2;
            if (!TextUtils.isEmpty(m14026e)) {
                str3 = m14006a(str2, "fbs_aiid", m14026e).toString();
            }
        }
        return str3;
    }

    /* renamed from: a */
    public static String m14007a(String str, Context context, boolean z) {
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42668ae)).booleanValue() || z) {
            String str2 = str;
            if (zzr.zzlt().m14044a(context)) {
                if (TextUtils.isEmpty(str)) {
                    str2 = str;
                } else {
                    String m14024f = zzr.zzlt().m14024f(context);
                    if (m14024f == null) {
                        return str;
                    }
                    if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42633W)).booleanValue()) {
                        String str3 = (String) ekb.m14831e().m18571a(C12187aq.f42634X);
                        str2 = str;
                        if (str.contains(str3)) {
                            if (zzr.zzkv().zzek(str)) {
                                zzr.zzlt().m14043a(context, m14024f);
                                return m14008a(str, context).replace(str3, m14024f);
                            }
                            str2 = str;
                            if (zzr.zzkv().zzel(str)) {
                                zzr.zzlt().m14032b(context, m14024f);
                                return m14008a(str, context).replace(str3, m14024f);
                            }
                        }
                    } else {
                        str2 = str;
                        if (!str.contains("fbs_aeid")) {
                            if (zzr.zzkv().zzek(str)) {
                                zzr.zzlt().m14043a(context, m14024f);
                                return m14006a(m14008a(str, context), "fbs_aeid", m14024f).toString();
                            }
                            str2 = str;
                            if (zzr.zzkv().zzel(str)) {
                                zzr.zzlt().m14032b(context, m14024f);
                                str2 = m14006a(m14008a(str, context), "fbs_aeid", m14024f).toString();
                            }
                        }
                    }
                }
            }
            return str2;
        }
        return str;
    }
}
