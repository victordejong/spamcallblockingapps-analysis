package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.VisibleForTesting;
import com.huawei.hms.framework.common.ContainerUtils;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcfc.class */
public final class zzcfc {
    public static String zza(String str, Context context, boolean z) {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzag)).booleanValue() || z) {
            String str2 = str;
            if (zzt.zzA().zzb(context)) {
                if (TextUtils.isEmpty(str)) {
                    str2 = str;
                } else {
                    String zzl = zzt.zzA().zzl(context);
                    if (zzl == null) {
                        return str;
                    }
                    String str3 = (String) zzbet.zzc().zzc(zzbjl.zzZ);
                    if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzY)).booleanValue() || !str.contains(str3)) {
                        str2 = str;
                        if (!str.contains("fbs_aeid")) {
                            if (zzt.zzc().zzp(str)) {
                                zzt.zzA().zzn(context, zzl);
                                return zzc(zzd(str, context), "fbs_aeid", zzl).toString();
                            }
                            str2 = str;
                            if (zzt.zzc().zzq(str)) {
                                zzt.zzA().zzo(context, zzl);
                                str2 = zzc(zzd(str, context), "fbs_aeid", zzl).toString();
                            }
                        }
                    } else if (zzt.zzc().zzp(str)) {
                        zzt.zzA().zzn(context, zzl);
                        return zzd(str, context).replace(str3, zzl);
                    } else {
                        str2 = str;
                        if (zzt.zzc().zzq(str)) {
                            zzt.zzA().zzo(context, zzl);
                            return zzd(str, context).replace(str3, zzl);
                        }
                    }
                }
            }
            return str2;
        }
        return str;
    }

    public static String zzb(Uri uri, Context context) {
        String zzl;
        String str;
        if (zzt.zzA().zzb(context) && (zzl = zzt.zzA().zzl(context)) != null) {
            String str2 = (String) zzbet.zzc().zzc(zzbjl.zzZ);
            String uri2 = uri.toString();
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzY)).booleanValue() && uri2.contains(str2)) {
                zzt.zzA().zzn(context, zzl);
                str = zzd(uri2, context).replace(str2, zzl);
            } else if (TextUtils.isEmpty(uri.getQueryParameter("fbs_aeid"))) {
                String uri3 = zzc(zzd(uri2, context), "fbs_aeid", zzl).toString();
                zzt.zzA().zzn(context, zzl);
                return uri3;
            } else {
                str = uri2;
            }
            return str;
        }
        return uri.toString();
    }

    @VisibleForTesting
    public static Uri zzc(String str, String str2, String str3) {
        int indexOf = str.indexOf("&adurl");
        int i = indexOf;
        if (indexOf == -1) {
            i = str.indexOf("?adurl");
        }
        if (i != -1) {
            int i2 = i + 1;
            StringBuilder sb = new StringBuilder(str.substring(0, i2));
            C22128a.m8666T0(sb, str2, ContainerUtils.KEY_VALUE_DELIMITER, str3, ContainerUtils.FIELD_DELIMITER);
            sb.append(str.substring(i2));
            return Uri.parse(sb.toString());
        }
        return Uri.parse(str).buildUpon().appendQueryParameter(str2, str3).build();
    }

    private static String zzd(String str, Context context) {
        String zzj = zzt.zzA().zzj(context);
        String zzk = zzt.zzA().zzk(context);
        String str2 = str;
        if (!str.contains("gmp_app_id")) {
            str2 = str;
            if (!TextUtils.isEmpty(zzj)) {
                str2 = zzc(str, "gmp_app_id", zzj).toString();
            }
        }
        String str3 = str2;
        if (!str2.contains("fbs_aiid")) {
            str3 = str2;
            if (!TextUtils.isEmpty(zzk)) {
                str3 = zzc(str2, "fbs_aiid", zzk).toString();
            }
        }
        return str3;
    }
}
