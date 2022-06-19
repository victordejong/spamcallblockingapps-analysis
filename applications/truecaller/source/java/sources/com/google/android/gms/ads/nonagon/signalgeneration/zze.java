package com.google.android.gms.ads.nonagon.signalgeneration;

import android.os.Bundle;
import android.text.TextUtils;
import com.amazon.device.ads.DtbConstants;
import com.google.android.gms.internal.ads.zzbdg;
import com.google.android.gms.internal.ads.zzfal;
import com.google.android.gms.internal.ads.zzfar;
import com.mopub.volley.BuildConfig;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/zze.class */
public final class zze {
    public static boolean zza(zzfal zzfalVar) {
        if (!zze(zzfalVar)) {
            return false;
        }
        zzbdg zzbdgVar = zzfalVar.zza.zza.zzd;
        return (zzbdgVar.zzs == null && zzbdgVar.zzx == null) ? false : true;
    }

    public static String zzb(zzfal zzfalVar) {
        return !zze(zzfalVar) ? "" : zzfalVar.zza.zza.zzd.zzp;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static String zzc(zzfal zzfalVar) {
        boolean z;
        if (!zze(zzfalVar)) {
            return BuildConfig.VERSION_NAME;
        }
        String zzd = zzd(zzfalVar.zza.zza);
        if (!TextUtils.isEmpty(zzd)) {
            switch (zzd.hashCode()) {
                case 1743582862:
                    if (zzd.equals("requester_type_0")) {
                        z = false;
                        break;
                    }
                    z = true;
                    break;
                case 1743582863:
                    if (zzd.equals("requester_type_1")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1743582864:
                    if (zzd.equals("requester_type_2")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1743582865:
                    if (zzd.equals("requester_type_3")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1743582866:
                    if (zzd.equals("requester_type_4")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1743582867:
                    if (zzd.equals("requester_type_5")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1743582868:
                    if (zzd.equals("requester_type_6")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                default:
                    z = true;
                    break;
            }
            switch (z) {
                case false:
                    return DtbConstants.NETWORK_TYPE_UNKNOWN;
                case true:
                    return "1";
                case true:
                    return "2";
                case true:
                    return "3";
                case true:
                    return "4";
                case true:
                    return "5";
                case true:
                    return "6";
            }
        }
        zzd = BuildConfig.VERSION_NAME;
        return zzd;
    }

    public static String zzd(zzfar zzfarVar) {
        Bundle bundle = zzfarVar.zzd.zzc;
        return bundle == null ? BuildConfig.VERSION_NAME : bundle.getString("query_info_type");
    }

    private static boolean zze(zzfal zzfalVar) {
        return zzfalVar != null;
    }
}
