package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.internal.util.zzap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cqh.class */
public final class cqh {
    public static zzvh a(cqj cqjVar, zzvh zzvhVar) {
        if (cqjVar.equals(cqj.MEDIATION_SHOW_ERROR)) {
            if (((Integer) ekb.e().a(aq.eR)).intValue() > 0) {
                return zzvhVar;
            }
        }
        return a(cqjVar, null, zzvhVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static zzvh a(cqj cqjVar, String str, zzvh zzvhVar) {
        String str2 = str;
        if (str == null) {
            switch (cqg.f26258a[cqjVar.ordinal()]) {
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
                case 13:
                default:
                    str2 = "Internal error.";
                    break;
                case 12:
                    if (((Integer) ekb.e().a(aq.eV)).intValue() <= 0) {
                        str2 = "The mediation adapter did not return an ad.";
                        break;
                    }
                    str2 = "No fill.";
                    break;
                case 14:
                    str2 = "Mismatch request IDs.";
                    break;
            }
        }
        int i = 0;
        switch (cqg.f26258a[cqjVar.ordinal()]) {
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
                if (((Integer) ekb.e().a(aq.eV)).intValue() <= 0) {
                    i = 9;
                    break;
                }
                i = 3;
                break;
            case 14:
                i = 10;
                break;
            default:
                String valueOf = String.valueOf(cqjVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                sb.append("Unknown SdkError: ");
                sb.append(valueOf);
                throw new AssertionError(sb.toString());
        }
        return new zzvh(i, str2, MobileAds.ERROR_DOMAIN, zzvhVar, null);
    }

    public static zzvh a(Throwable th) {
        if (th instanceof zzctd) {
            zzctd zzctdVar = (zzctd) th;
            return a(zzctdVar.f28619a, zzctdVar.f28620b);
        } else if (th instanceof zzcnp) {
            return th.getMessage() == null ? a(((zzcnp) th).f28619a, null, null) : a(((zzcnp) th).f28619a, th.getMessage(), null);
        } else {
            if (!(th instanceof zzap)) {
                return a(cqj.INTERNAL_ERROR, null, null);
            }
            zzap zzapVar = (zzap) th;
            return new zzvh(zzapVar.getErrorCode(), cyc.b(zzapVar.getMessage()), MobileAds.ERROR_DOMAIN, null, null);
        }
    }

    public static zzvh a(Throwable th, bso bsoVar) {
        zzvh a2 = a(th);
        if ((a2.errorCode == 3 || a2.errorCode == 0) && a2.zzchu != null && !a2.zzchu.zzcht.equals(MobileAds.ERROR_DOMAIN)) {
            a2.zzchu = null;
        }
        if (((Boolean) ekb.e().a(aq.eU)).booleanValue() && bsoVar != null) {
            a2.zzchv = bsoVar.a();
        }
        return a2;
    }
}
