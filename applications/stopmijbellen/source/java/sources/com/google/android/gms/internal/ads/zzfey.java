package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.internal.util.zzbc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfey.class */
public final class zzfey {
    public static zzbew zza(Throwable th) {
        if (th instanceof zzehx) {
            zzehx zzehxVar = (zzehx) th;
            return zzc(zzehxVar.zza(), zzehxVar.zzb());
        } else if (th instanceof zzecd) {
            return th.getMessage() == null ? zzd(((zzecd) th).zza(), null, null) : zzd(((zzecd) th).zza(), th.getMessage(), null);
        } else if (!(th instanceof zzbc)) {
            return zzd(1, null, null);
        } else {
            zzbc zzbcVar = (zzbc) th;
            return new zzbew(zzbcVar.zza(), zzfqr.zzc(zzbcVar.getMessage()), MobileAds.ERROR_DOMAIN, null, null);
        }
    }

    public static zzbew zzb(Throwable th, zzehy zzehyVar) {
        zzbew zzbewVar;
        zzbew zza = zza(th);
        int i = zza.zza;
        if ((i == 3 || i == 0) && (zzbewVar = zza.zzd) != null && !zzbewVar.zzc.equals(MobileAds.ERROR_DOMAIN)) {
            zza.zzd = null;
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzge)).booleanValue() && zzehyVar != null) {
            zza.zze = zzehyVar.zza();
        }
        return zza;
    }

    public static zzbew zzc(int i, zzbew zzbewVar) {
        if (i != 0) {
            int i2 = i;
            if (i == 8) {
                if (((Integer) zzbgq.zzc().zzb(zzblj.zzgb)).intValue() > 0) {
                    return zzbewVar;
                }
                i2 = 8;
            }
            return zzd(i2, null, zzbewVar);
        }
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0275  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzbew zzd(int r8, java.lang.String r9, com.google.android.gms.internal.ads.zzbew r10) {
        /*
            Method dump skipped, instructions count: 631
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfey.zzd(int, java.lang.String, com.google.android.gms.internal.ads.zzbew):com.google.android.gms.internal.ads.zzbew");
    }
}
