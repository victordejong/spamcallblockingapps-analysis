package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzug;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdab.class */
public class zzdab {
    private String zzgzy;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdab$zza.class */
    public static final class zza {
        private String zzgzy;

        public final zza zzgr(String str) {
            this.zzgzy = str;
            return this;
        }
    }

    private zzdab(zza zzaVar) {
        this.zzgzy = zzaVar.zzgzy;
    }

    public final Set<String> zzasv() {
        HashSet hashSet = new HashSet();
        hashSet.add(this.zzgzy.toLowerCase(Locale.ROOT));
        return hashSet;
    }

    public final String zzasw() {
        return this.zzgzy.toLowerCase(Locale.ROOT);
    }

    public final zzug.zza.zza zzasx() {
        String str = this.zzgzy;
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -1999289321:
                if (str.equals("NATIVE")) {
                    z = false;
                    break;
                }
                break;
            case -1372958932:
                if (str.equals("INTERSTITIAL")) {
                    z = true;
                    break;
                }
                break;
            case 543046670:
                if (str.equals("REWARDED")) {
                    z = true;
                    break;
                }
                break;
            case 1951953708:
                if (str.equals("BANNER")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return zzug.zza.zza.zzbyt;
            case true:
                return zzug.zza.zza.zzbyq;
            case true:
                return zzug.zza.zza.zzbyu;
            case true:
                return zzug.zza.zza.zzbyo;
            default:
                return zzug.zza.zza.zzbyn;
        }
    }
}
