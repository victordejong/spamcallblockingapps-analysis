package com.google.android.gms.internal.ads;

import android.os.IBinder;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.internal.util.zzap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdok.class */
public final class zzdok {
    public static zzvg zza(zzdom zzdomVar, zzvg zzvgVar) {
        if (zzdomVar.equals(zzdom.MEDIATION_SHOW_ERROR)) {
            if (((Integer) zzwr.zzqr().zzd(zzabp.zzczy)).intValue() > 0) {
                return zzvgVar;
            }
        }
        return zza(zzdomVar, null, zzvgVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static zzvg zza(zzdom zzdomVar, String str, zzvg zzvgVar) {
        String str2 = str;
        if (str == null) {
            switch (zzdoj.zzhlt[zzdomVar.ordinal()]) {
                case 1:
                    str2 = "Invalid request.";
                    break;
                case 2:
                    str2 = "Invalid request: Invalid ad unit ID.";
                    break;
                case 3:
                    str2 = "Invalid request: Invalid ad size.";
                    break;
                case 4:
                    str2 = "Network error.";
                    break;
                case 5:
                    str2 = "No fill.";
                    break;
                case 6:
                    str2 = "App ID missing.";
                    break;
                case 7:
                    str2 = "A mediation adapter failed to show the ad.";
                    break;
                case 8:
                    str2 = "The ad is not ready.";
                    break;
                case 9:
                    str2 = "The ad has already been shown.";
                    break;
                case 10:
                    str2 = "The ad can not be shown when app is not in foreground.";
                    break;
                case 11:
                default:
                    str2 = "Internal error.";
                    break;
                case 12:
                    if (((Integer) zzwr.zzqr().zzd(zzabp.zzdac)).intValue() <= 0) {
                        str2 = "The mediation adapter did not return an ad.";
                        break;
                    }
                    str2 = "No fill.";
                    break;
            }
        }
        int i = 0;
        switch (zzdoj.zzhlt[zzdomVar.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 9:
                i = 1;
                break;
            case 4:
            case 8:
                i = 2;
                break;
            case 5:
            case 10:
                i = 3;
                break;
            case 6:
                i = 8;
                break;
            case 7:
                i = 4;
                break;
            case 11:
            case 13:
                break;
            case 12:
                if (((Integer) zzwr.zzqr().zzd(zzabp.zzdac)).intValue() <= 0) {
                    i = 9;
                    break;
                }
                i = 3;
                break;
            default:
                String valueOf = String.valueOf(zzdomVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                sb.append("Unknown SdkError: ");
                sb.append(valueOf);
                throw new AssertionError(sb.toString());
        }
        return new zzvg(i, str2, MobileAds.ERROR_DOMAIN, zzvgVar, (IBinder) null);
    }

    public static zzvg zza(Throwable th, zzcrq zzcrqVar) {
        zzvg zzvgVar;
        zzvg zzh = zzh(th);
        int i = zzh.errorCode;
        if ((i == 3 || i == 0) && (zzvgVar = zzh.zzchi) != null && !zzvgVar.zzchh.equals(MobileAds.ERROR_DOMAIN)) {
            zzh.zzchi = null;
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzdab)).booleanValue() && zzcrqVar != null) {
            zzh.zzchj = zzcrqVar.zzasa();
        }
        return zzh;
    }

    public static zzvg zzh(Throwable th) {
        if (th instanceof zzcrn) {
            zzcrn zzcrnVar = (zzcrn) th;
            return zza(zzcrnVar.zzarh(), zzcrnVar.zzary());
        } else if (th instanceof zzcmb) {
            return th.getMessage() == null ? zza(((zzcmb) th).zzarh(), null, null) : zza(((zzcmb) th).zzarh(), th.getMessage(), null);
        } else if (!(th instanceof zzap)) {
            return zza(zzdom.INTERNAL_ERROR, null, null);
        } else {
            zzap zzapVar = (zzap) th;
            return new zzvg(zzapVar.getErrorCode(), zzdwt.zzhm(zzapVar.getMessage()), MobileAds.ERROR_DOMAIN, (zzvg) null, (IBinder) null);
        }
    }
}
