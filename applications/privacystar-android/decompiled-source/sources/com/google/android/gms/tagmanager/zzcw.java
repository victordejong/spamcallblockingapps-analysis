package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;
import java.util.Map;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzcw.class */
public class zzcw {
    private static String zzbck;
    @VisibleForTesting
    static Map<String, String> zzbcl = new HashMap();

    public static void zzdq(String str) {
        synchronized (zzcw.class) {
            try {
                zzbck = str;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzf(Context context, String str) {
        zzft.zza(context, "gtm_install_referrer", "referrer", str);
        zzh(context, str);
    }

    public static String zzg(Context context, String str) {
        if (zzbck == null) {
            synchronized (zzcw.class) {
                try {
                    if (zzbck == null) {
                        SharedPreferences sharedPreferences = context.getSharedPreferences("gtm_install_referrer", 0);
                        if (sharedPreferences != null) {
                            zzbck = sharedPreferences.getString("referrer", "");
                        } else {
                            zzbck = "";
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zzv(zzbck, str);
    }

    public static void zzh(Context context, String str) {
        String zzv = zzv(str, "conv");
        if (zzv != null && zzv.length() > 0) {
            zzbcl.put(zzv, str);
            zzft.zza(context, "gtm_click_referrers", zzv, str);
        }
    }

    public static String zzv(String str, String str2) {
        if (str2 != null) {
            String valueOf = String.valueOf(str);
            return Uri.parse(valueOf.length() != 0 ? "http://hostname/?".concat(valueOf) : new String("http://hostname/?")).getQueryParameter(str2);
        } else if (str.length() > 0) {
            return str;
        } else {
            return null;
        }
    }
}
