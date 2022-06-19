package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.internal.ads.zzazj;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
/* renamed from: com.google.android.gms.ads.nonagon.signalgeneration.i0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nonagon/signalgeneration/i0.class */
public final class C5822i0 {

    /* renamed from: a */
    private final String f18754a;

    public /* synthetic */ C5822i0(C5818g0 c5818g0, C5820h0 c5820h0) {
        String str;
        str = c5818g0.f18748a;
        this.f18754a = str;
    }

    /* renamed from: a */
    public final Set<String> m17793a() {
        HashSet hashSet = new HashSet();
        hashSet.add(this.f18754a.toLowerCase(Locale.ROOT));
        return hashSet;
    }

    /* renamed from: b */
    public final String m17792b() {
        return this.f18754a.toLowerCase(Locale.ROOT);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: c */
    public final zzazj m17791c() {
        boolean z;
        String str = this.f18754a;
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
