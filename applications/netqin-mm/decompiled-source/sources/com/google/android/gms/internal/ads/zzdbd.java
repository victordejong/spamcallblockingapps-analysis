package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzua;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdbd.class */
public class zzdbd {

    /* renamed from: a */
    public String f26861a;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdbd$zza.class */
    public static final class zza {

        /* renamed from: a */
        public String f26862a;

        /* renamed from: a */
        public final zza m13665a(String str) {
            this.f26862a = str;
            return this;
        }
    }

    public zzdbd(zza zzaVar) {
        this.f26861a = zzaVar.f26862a;
    }

    /* renamed from: a */
    public final Set<String> m13669a() {
        HashSet hashSet = new HashSet();
        hashSet.add(this.f26861a.toLowerCase(Locale.ROOT));
        return hashSet;
    }

    /* renamed from: b */
    public final String m13668b() {
        return this.f26861a.toLowerCase(Locale.ROOT);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: c */
    public final zzua.zza.EnumC10505zza m13667c() {
        char c;
        String str = this.f26861a;
        switch (str.hashCode()) {
            case -1999289321:
                if (str.equals("NATIVE")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1372958932:
                if (str.equals("INTERSTITIAL")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 543046670:
                if (str.equals("REWARDED")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1951953708:
                if (str.equals("BANNER")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        return c != 0 ? c != 1 ? c != 2 ? c != 3 ? zzua.zza.EnumC10505zza.AD_INITIATER_UNSPECIFIED : zzua.zza.EnumC10505zza.REWARD_BASED_VIDEO_AD : zzua.zza.EnumC10505zza.AD_LOADER : zzua.zza.EnumC10505zza.INTERSTITIAL : zzua.zza.EnumC10505zza.BANNER;
    }
}
