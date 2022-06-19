package com.google.android.gms.ads.nonagon.signalgeneration;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzbfd;
import com.google.android.gms.internal.ads.zzfdz;
import com.google.android.gms.internal.ads.zzfef;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/zze.class */
public final class zze {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static String zza(zzfdz zzfdzVar) {
        boolean z;
        if (!zze(zzfdzVar)) {
            return "unspecified";
        }
        String zzc = zzc(zzfdzVar.zza.zza);
        if (!TextUtils.isEmpty(zzc)) {
            switch (zzc.hashCode()) {
                case 1743582862:
                    if (zzc.equals("requester_type_0")) {
                        z = false;
                        break;
                    }
                    z = true;
                    break;
                case 1743582863:
                    if (zzc.equals("requester_type_1")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1743582864:
                    if (zzc.equals("requester_type_2")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1743582865:
                    if (zzc.equals("requester_type_3")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1743582866:
                    if (zzc.equals("requester_type_4")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1743582867:
                    if (zzc.equals("requester_type_5")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case 1743582868:
                    if (zzc.equals("requester_type_6")) {
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
                    return "0";
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
        zzc = "unspecified";
        return zzc;
    }

    public static String zzb(zzfdz zzfdzVar) {
        return !zze(zzfdzVar) ? "" : zzfdzVar.zza.zza.zzd.zzp;
    }

    public static String zzc(zzfef zzfefVar) {
        Bundle bundle = zzfefVar.zzd.zzc;
        return bundle == null ? "unspecified" : bundle.getString("query_info_type");
    }

    public static boolean zzd(zzfdz zzfdzVar) {
        if (!zze(zzfdzVar)) {
            return false;
        }
        zzbfd zzbfdVar = zzfdzVar.zza.zza.zzd;
        return (zzbfdVar.zzs == null && zzbfdVar.zzx == null) ? false : true;
    }

    private static boolean zze(zzfdz zzfdzVar) {
        return zzfdzVar != null;
    }
}
