package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfcn.class */
public final class zzfcn implements zzfcm {
    private final Object[] zza;

    public zzfcn(zzbdg zzbdgVar, String str, int i, String str2, zzbdr zzbdrVar) {
        HashSet hashSet = new HashSet(Arrays.asList(str2.split(",")));
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        arrayList.add(str);
        if (hashSet.contains("networkType")) {
            arrayList.add(Integer.valueOf(i));
        }
        if (hashSet.contains("birthday")) {
            arrayList.add(Long.valueOf(zzbdgVar.zzb));
        }
        if (hashSet.contains("extras")) {
            arrayList.add(zza(zzbdgVar.zzc));
        } else if (hashSet.contains("npa")) {
            arrayList.add(zzbdgVar.zzc.getString("npa"));
        }
        if (hashSet.contains("gender")) {
            arrayList.add(Integer.valueOf(zzbdgVar.zzd));
        }
        if (hashSet.contains("keywords")) {
            List<String> list = zzbdgVar.zze;
            if (list != null) {
                arrayList.add(list.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("isTestDevice")) {
            arrayList.add(Boolean.valueOf(zzbdgVar.zzf));
        }
        if (hashSet.contains("tagForChildDirectedTreatment")) {
            arrayList.add(Integer.valueOf(zzbdgVar.zzg));
        }
        if (hashSet.contains("manualImpressionsEnabled")) {
            arrayList.add(Boolean.valueOf(zzbdgVar.zzh));
        }
        if (hashSet.contains("publisherProvidedId")) {
            arrayList.add(zzbdgVar.zzi);
        }
        if (hashSet.contains("location")) {
            Location location = zzbdgVar.zzk;
            if (location != null) {
                arrayList.add(location.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("contentUrl")) {
            arrayList.add(zzbdgVar.zzl);
        }
        if (hashSet.contains("networkExtras")) {
            arrayList.add(zza(zzbdgVar.zzm));
        }
        if (hashSet.contains("customTargeting")) {
            arrayList.add(zza(zzbdgVar.zzn));
        }
        if (hashSet.contains("categoryExclusions")) {
            List<String> list2 = zzbdgVar.zzo;
            if (list2 != null) {
                arrayList.add(list2.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("requestAgent")) {
            arrayList.add(zzbdgVar.zzp);
        }
        if (hashSet.contains("requestPackage")) {
            arrayList.add(zzbdgVar.zzq);
        }
        if (hashSet.contains("isDesignedForFamilies")) {
            arrayList.add(Boolean.valueOf(zzbdgVar.zzr));
        }
        if (hashSet.contains("tagForUnderAgeOfConsent")) {
            arrayList.add(Integer.valueOf(zzbdgVar.zzt));
        }
        if (hashSet.contains("maxAdContentRating")) {
            arrayList.add(zzbdgVar.zzu);
        }
        if (hashSet.contains("orientation")) {
            if (zzbdrVar != null) {
                arrayList.add(Integer.valueOf(zzbdrVar.zza));
            } else {
                arrayList.add(null);
            }
        }
        this.zza = arrayList.toArray();
    }

    private static String zza(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        while (it.hasNext()) {
            Object obj = bundle.get((String) it.next());
            sb.append(obj == null ? AnalyticsConstants.NULL : obj instanceof Bundle ? zza((Bundle) obj) : obj.toString());
        }
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfcm
    public final boolean equals(Object obj) {
        if (!(obj instanceof zzfcn)) {
            return false;
        }
        return Arrays.equals(this.zza, ((zzfcn) obj).zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfcm
    public final int hashCode() {
        return Arrays.hashCode(this.zza);
    }

    public final String toString() {
        int hashCode = Arrays.hashCode(this.zza);
        String arrays = Arrays.toString(this.zza);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 22);
        sb.append("[PoolKey#");
        sb.append(hashCode);
        sb.append(StringConstant.SPACE);
        sb.append(arrays);
        sb.append("]");
        return sb.toString();
    }
}
