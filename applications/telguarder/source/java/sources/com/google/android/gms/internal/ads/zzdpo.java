package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.facebook.applinks.AppLinkData;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.pubmatic.sdk.common.POBCommonConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.TreeSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdpo.class */
public final class zzdpo implements zzdpl {
    private final Object[] zzhok;

    public zzdpo(zzvl zzvlVar, String str, int i, String str2, zzvx zzvxVar) {
        HashSet hashSet = new HashSet(Arrays.asList(str2.split(",")));
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        arrayList.add(str);
        if (hashSet.contains("networkType")) {
            arrayList.add(Integer.valueOf(i));
        }
        if (hashSet.contains("birthday")) {
            arrayList.add(Long.valueOf(zzvlVar.zzchn));
        }
        if (hashSet.contains(AppLinkData.ARGUMENTS_EXTRAS_KEY)) {
            arrayList.add(zzp(zzvlVar.extras));
        } else if (hashSet.contains("npa")) {
            arrayList.add(zzvlVar.extras.getString("npa"));
        }
        if (hashSet.contains(POBCommonConstants.GENDER_PARAM)) {
            arrayList.add(Integer.valueOf(zzvlVar.zzcho));
        }
        if (hashSet.contains(POBCommonConstants.KEYWORDS_PARAM)) {
            if (zzvlVar.zzchp != null) {
                arrayList.add(zzvlVar.zzchp.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("isTestDevice")) {
            arrayList.add(Boolean.valueOf(zzvlVar.zzchq));
        }
        if (hashSet.contains("tagForChildDirectedTreatment")) {
            arrayList.add(Integer.valueOf(zzvlVar.zzado));
        }
        if (hashSet.contains("manualImpressionsEnabled")) {
            arrayList.add(Boolean.valueOf(zzvlVar.zzbni));
        }
        if (hashSet.contains("publisherProvidedId")) {
            arrayList.add(zzvlVar.zzchr);
        }
        if (hashSet.contains(FirebaseAnalytics.Param.LOCATION)) {
            if (zzvlVar.zznb != null) {
                arrayList.add(zzvlVar.zznb.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("contentUrl")) {
            arrayList.add(zzvlVar.zzcht);
        }
        if (hashSet.contains("networkExtras")) {
            arrayList.add(zzp(zzvlVar.zzchu));
        }
        if (hashSet.contains("customTargeting")) {
            arrayList.add(zzp(zzvlVar.zzchv));
        }
        if (hashSet.contains("categoryExclusions")) {
            if (zzvlVar.zzchw != null) {
                arrayList.add(zzvlVar.zzchw.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("requestAgent")) {
            arrayList.add(zzvlVar.zzchx);
        }
        if (hashSet.contains("requestPackage")) {
            arrayList.add(zzvlVar.zzchy);
        }
        if (hashSet.contains("isDesignedForFamilies")) {
            arrayList.add(Boolean.valueOf(zzvlVar.zzchz));
        }
        if (hashSet.contains("tagForUnderAgeOfConsent")) {
            arrayList.add(Integer.valueOf(zzvlVar.zzadp));
        }
        if (hashSet.contains("maxAdContentRating")) {
            arrayList.add(zzvlVar.zzadq);
        }
        if (hashSet.contains("orientation")) {
            if (zzvxVar != null) {
                arrayList.add(Integer.valueOf(zzvxVar.orientation));
            } else {
                arrayList.add(null);
            }
        }
        this.zzhok = arrayList.toArray();
    }

    private static String zzp(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        while (it.hasNext()) {
            Object obj = bundle.get((String) it.next());
            sb.append(obj == null ? "null" : obj instanceof Bundle ? zzp((Bundle) obj) : obj.toString());
        }
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzdpl
    public final boolean equals(Object obj) {
        if (!(obj instanceof zzdpo)) {
            return false;
        }
        return Arrays.equals(this.zzhok, ((zzdpo) obj).zzhok);
    }

    @Override // com.google.android.gms.internal.ads.zzdpl
    public final int hashCode() {
        return Arrays.hashCode(this.zzhok);
    }

    public final String toString() {
        int hashCode = hashCode();
        String arrays = Arrays.toString(this.zzhok);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 22);
        sb.append("[PoolKey#");
        sb.append(hashCode);
        sb.append(" ");
        sb.append(arrays);
        sb.append("]");
        return sb.toString();
    }
}
