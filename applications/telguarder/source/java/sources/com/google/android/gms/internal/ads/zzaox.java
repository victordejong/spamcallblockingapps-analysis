package com.google.android.gms.internal.ads;

import com.google.ads.AdRequest;
import com.google.ads.mediation.MediationAdRequest;
import java.util.Date;
import java.util.HashSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaox.class */
public final class zzaox {
    public static int zza(AdRequest.ErrorCode errorCode) {
        int i = zzaow.zzdok[errorCode.ordinal()];
        if (i != 2) {
            if (i == 3) {
                return 2;
            }
            return i != 4 ? 0 : 3;
        }
        return 1;
    }

    public static MediationAdRequest zza(zzvl zzvlVar, boolean z) {
        HashSet hashSet = zzvlVar.zzchp != null ? new HashSet(zzvlVar.zzchp) : null;
        Date date = new Date(zzvlVar.zzchn);
        int i = zzvlVar.zzcho;
        return new MediationAdRequest(date, i != 1 ? i != 2 ? AdRequest.Gender.UNKNOWN : AdRequest.Gender.FEMALE : AdRequest.Gender.MALE, hashSet, z, zzvlVar.zznb);
    }
}
