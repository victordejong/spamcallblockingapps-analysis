package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.VisibleForTesting;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaxu.class */
public final class zzaxu {
    @VisibleForTesting
    private static Uri zza(String str, String str2, String str3) {
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

    public static String zzb(Uri uri, Context context) {
        String zzad;
        if (zzr.zzlp().zzy(context) && (zzad = zzr.zzlp().zzad(context)) != null) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcog)).booleanValue()) {
                String str = (String) zzwr.zzqr().zzd(zzabp.zzcoh);
                String uri2 = uri.toString();
                if (uri2.contains(str)) {
                    zzr.zzlp().zzg(context, zzad);
                    return zzb(uri2, context).replace(str, zzad);
                }
            } else if (TextUtils.isEmpty(uri.getQueryParameter("fbs_aeid"))) {
                String uri3 = zza(zzb(uri.toString(), context), "fbs_aeid", zzad).toString();
                zzr.zzlp().zzg(context, zzad);
                return uri3;
            }
            return uri.toString();
        }
        return uri.toString();
    }

    private static String zzb(String str, Context context) {
        String zzab = zzr.zzlp().zzab(context);
        String zzac = zzr.zzlp().zzac(context);
        String str2 = str;
        if (!str.contains("gmp_app_id")) {
            str2 = str;
            if (!TextUtils.isEmpty(zzab)) {
                str2 = zza(str, "gmp_app_id", zzab).toString();
            }
        }
        String str3 = str2;
        if (!str2.contains("fbs_aiid")) {
            str3 = str2;
            if (!TextUtils.isEmpty(zzac)) {
                str3 = zza(str2, "fbs_aiid", zzac).toString();
            }
        }
        return str3;
    }

    public static String zzc(String str, Context context, boolean z) {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcoo)).booleanValue() || z) {
            String str2 = str;
            if (zzr.zzlp().zzy(context)) {
                if (TextUtils.isEmpty(str)) {
                    str2 = str;
                } else {
                    String zzad = zzr.zzlp().zzad(context);
                    if (zzad == null) {
                        return str;
                    }
                    if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcog)).booleanValue()) {
                        String str3 = (String) zzwr.zzqr().zzd(zzabp.zzcoh);
                        str2 = str;
                        if (str.contains(str3)) {
                            if (zzr.zzkr().zzei(str)) {
                                zzr.zzlp().zzg(context, zzad);
                                return zzb(str, context).replace(str3, zzad);
                            }
                            str2 = str;
                            if (zzr.zzkr().zzej(str)) {
                                zzr.zzlp().zzh(context, zzad);
                                return zzb(str, context).replace(str3, zzad);
                            }
                        }
                    } else {
                        str2 = str;
                        if (!str.contains("fbs_aeid")) {
                            if (zzr.zzkr().zzei(str)) {
                                zzr.zzlp().zzg(context, zzad);
                                return zza(zzb(str, context), "fbs_aeid", zzad).toString();
                            }
                            str2 = str;
                            if (zzr.zzkr().zzej(str)) {
                                zzr.zzlp().zzh(context, zzad);
                                str2 = zza(zzb(str, context), "fbs_aeid", zzad).toString();
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
