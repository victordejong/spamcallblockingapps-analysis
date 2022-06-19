package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.internal.ads.zzbbg;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/zzz.class */
public final class zzz {
    private final String zza;

    public /* synthetic */ zzz(zzx zzxVar, zzy zzyVar) {
        String str;
        str = zzxVar.zza;
        this.zza = str;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final zzbbg zza() {
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
        return z ? !z ? !z ? !z ? zzbbg.AD_INITIATER_UNSPECIFIED : zzbbg.REWARD_BASED_VIDEO_AD : zzbbg.AD_LOADER : zzbbg.INTERSTITIAL : zzbbg.BANNER;
    }

    public final String zzb() {
        return this.zza.toLowerCase(Locale.ROOT);
    }

    public final Set<String> zzc() {
        HashSet hashSet = new HashSet();
        hashSet.add(this.zza.toLowerCase(Locale.ROOT));
        return hashSet;
    }
}
