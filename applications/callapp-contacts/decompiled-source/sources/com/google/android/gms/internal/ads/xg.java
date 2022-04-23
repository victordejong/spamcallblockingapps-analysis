package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/xg.class */
public final class xg {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static Uri a(String str, String str2, String str3) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str, Context context) {
        String d2 = zzr.zzlt().d(context);
        String e = zzr.zzlt().e(context);
        String str2 = str;
        if (!str.contains("gmp_app_id")) {
            str2 = str;
            if (!TextUtils.isEmpty(d2)) {
                str2 = a(str, "gmp_app_id", d2).toString();
            }
        }
        String str3 = str2;
        if (!str2.contains("fbs_aiid")) {
            str3 = str2;
            if (!TextUtils.isEmpty(e)) {
                str3 = a(str2, "fbs_aiid", e).toString();
            }
        }
        return str3;
    }

    public static String a(String str, Context context, boolean z) {
        if (((Boolean) ekb.e().a(aq.ae)).booleanValue() && !z) {
            return str;
        }
        String str2 = str;
        if (zzr.zzlt().a(context)) {
            if (TextUtils.isEmpty(str)) {
                str2 = str;
            } else {
                String f = zzr.zzlt().f(context);
                if (f == null) {
                    return str;
                }
                if (((Boolean) ekb.e().a(aq.W)).booleanValue()) {
                    String str3 = (String) ekb.e().a(aq.X);
                    str2 = str;
                    if (str.contains(str3)) {
                        if (zzr.zzkv().zzek(str)) {
                            zzr.zzlt().a(context, f);
                            return a(str, context).replace(str3, f);
                        }
                        str2 = str;
                        if (zzr.zzkv().zzel(str)) {
                            zzr.zzlt().b(context, f);
                            return a(str, context).replace(str3, f);
                        }
                    }
                } else {
                    str2 = str;
                    if (!str.contains("fbs_aeid")) {
                        if (zzr.zzkv().zzek(str)) {
                            zzr.zzlt().a(context, f);
                            return a(a(str, context), "fbs_aeid", f).toString();
                        }
                        str2 = str;
                        if (zzr.zzkv().zzel(str)) {
                            zzr.zzlt().b(context, f);
                            str2 = a(a(str, context), "fbs_aeid", f).toString();
                        }
                    }
                }
            }
        }
        return str2;
    }
}
