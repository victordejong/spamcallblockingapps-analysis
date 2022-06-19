package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.VisibleForTesting;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzchj.class */
public final class zzchj {
    @VisibleForTesting
    public static Uri zza(String str, String str2, String str3) {
        int indexOf = str.indexOf("&adurl");
        int i = indexOf;
        if (indexOf == -1) {
            i = str.indexOf("?adurl");
        }
        if (i != -1) {
            int i2 = i + 1;
            StringBuilder sb = new StringBuilder(str.substring(0, i2));
            C0082b.m8749m(sb, str2, "=", str3, "&");
            sb.append(str.substring(i2));
            return Uri.parse(sb.toString());
        }
        return Uri.parse(str).buildUpon().appendQueryParameter(str2, str3).build();
    }

    public static String zzb(Uri uri, Context context) {
        String zza;
        String str;
        if (zzt.zzn().zzu(context) && (zza = zzt.zzn().zza(context)) != null) {
            String str2 = (String) zzbgq.zzc().zzb(zzblj.zzZ);
            String uri2 = uri.toString();
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzY)).booleanValue() && uri2.contains(str2)) {
                zzt.zzn().zzm(context, zza);
                str = zzd(uri2, context).replace(str2, zza);
            } else if (TextUtils.isEmpty(uri.getQueryParameter("fbs_aeid"))) {
                String uri3 = zza(zzd(uri2, context), "fbs_aeid", zza).toString();
                zzt.zzn().zzm(context, zza);
                return uri3;
            } else {
                str = uri2;
            }
            return str;
        }
        return uri.toString();
    }

    public static String zzc(String str, Context context, boolean z) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzag)).booleanValue() || z) {
            String str2 = str;
            if (zzt.zzn().zzu(context)) {
                if (TextUtils.isEmpty(str)) {
                    str2 = str;
                } else {
                    String zza = zzt.zzn().zza(context);
                    if (zza == null) {
                        return str;
                    }
                    String str3 = (String) zzbgq.zzc().zzb(zzblj.zzZ);
                    if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzY)).booleanValue() || !str.contains(str3)) {
                        str2 = str;
                        if (!str.contains("fbs_aeid")) {
                            if (zzt.zzp().zzo(str)) {
                                zzt.zzn().zzm(context, zza);
                                return zza(zzd(str, context), "fbs_aeid", zza).toString();
                            }
                            str2 = str;
                            if (zzt.zzp().zzp(str)) {
                                zzt.zzn().zzn(context, zza);
                                str2 = zza(zzd(str, context), "fbs_aeid", zza).toString();
                            }
                        }
                    } else if (zzt.zzp().zzo(str)) {
                        zzt.zzn().zzm(context, zza);
                        return zzd(str, context).replace(str3, zza);
                    } else {
                        str2 = str;
                        if (zzt.zzp().zzp(str)) {
                            zzt.zzn().zzn(context, zza);
                            return zzd(str, context).replace(str3, zza);
                        }
                    }
                }
            }
            return str2;
        }
        return str;
    }

    private static String zzd(String str, Context context) {
        String zze = zzt.zzn().zze(context);
        String zzc = zzt.zzn().zzc(context);
        String str2 = str;
        if (!str.contains("gmp_app_id")) {
            str2 = str;
            if (!TextUtils.isEmpty(zze)) {
                str2 = zza(str, "gmp_app_id", zze).toString();
            }
        }
        String str3 = str2;
        if (!str2.contains("fbs_aiid")) {
            str3 = str2;
            if (!TextUtils.isEmpty(zzc)) {
                str3 = zza(str2, "fbs_aiid", zzc).toString();
            }
        }
        return str3;
    }
}
