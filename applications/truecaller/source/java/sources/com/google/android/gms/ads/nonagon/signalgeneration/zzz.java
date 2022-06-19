package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.internal.ads.zzazj;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/zzz.class */
public final class zzz {
    private final String zza;

    public /* synthetic */ zzz(zzx zzxVar, zzy zzyVar) {
        String str;
        str = zzxVar.zza;
        this.zza = str;
    }

    public final Set<String> zza() {
        HashSet hashSet = new HashSet();
        hashSet.add(this.zza.toLowerCase(Locale.ROOT));
        return hashSet;
    }

    public final String zzb() {
        return this.zza.toLowerCase(Locale.ROOT);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final zzazj zzc() {
        boolean z;
        String str = this.zza;
        switch (str.hashCode()) {
            case -1999289321:
                if (str.equals("NATIVE")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1372958932:
                if (str.equals("INTERSTITIAL")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 543046670:
                if (str.equals("REWARDED")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1951953708:
                if (str.equals("BANNER")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        return z ? !z ? !z ? !z ? zzazj.AD_INITIATER_UNSPECIFIED : zzazj.REWARD_BASED_VIDEO_AD : zzazj.AD_LOADER : zzazj.INTERSTITIAL : zzazj.BANNER;
    }
}
