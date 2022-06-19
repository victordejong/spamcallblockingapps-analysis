package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzffy.class */
public final class zzffy implements zzffx {
    private final Object[] zza;

    public zzffy(zzbfd zzbfdVar, String str, int i, String str2, zzbfo zzbfoVar) {
        HashSet hashSet = new HashSet(Arrays.asList(str2.split(",")));
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        arrayList.add(str);
        if (hashSet.contains("networkType")) {
            arrayList.add(Integer.valueOf(i));
        }
        if (hashSet.contains("birthday")) {
            arrayList.add(Long.valueOf(zzbfdVar.zzb));
        }
        if (hashSet.contains("extras")) {
            arrayList.add(zza(zzbfdVar.zzc));
        } else if (hashSet.contains("npa")) {
            arrayList.add(zzbfdVar.zzc.getString("npa"));
        }
        if (hashSet.contains("gender")) {
            arrayList.add(Integer.valueOf(zzbfdVar.zzd));
        }
        if (hashSet.contains("keywords")) {
            List<String> list = zzbfdVar.zze;
            if (list != null) {
                arrayList.add(list.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("isTestDevice")) {
            arrayList.add(Boolean.valueOf(zzbfdVar.zzf));
        }
        if (hashSet.contains("tagForChildDirectedTreatment")) {
            arrayList.add(Integer.valueOf(zzbfdVar.zzg));
        }
        if (hashSet.contains("manualImpressionsEnabled")) {
            arrayList.add(Boolean.valueOf(zzbfdVar.zzh));
        }
        if (hashSet.contains("publisherProvidedId")) {
            arrayList.add(zzbfdVar.zzi);
        }
        if (hashSet.contains("location")) {
            Location location = zzbfdVar.zzk;
            if (location != null) {
                arrayList.add(location.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("contentUrl")) {
            arrayList.add(zzbfdVar.zzl);
        }
        if (hashSet.contains("networkExtras")) {
            arrayList.add(zza(zzbfdVar.zzm));
        }
        if (hashSet.contains("customTargeting")) {
            arrayList.add(zza(zzbfdVar.zzn));
        }
        if (hashSet.contains("categoryExclusions")) {
            List<String> list2 = zzbfdVar.zzo;
            if (list2 != null) {
                arrayList.add(list2.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("requestAgent")) {
            arrayList.add(zzbfdVar.zzp);
        }
        if (hashSet.contains("requestPackage")) {
            arrayList.add(zzbfdVar.zzq);
        }
        if (hashSet.contains("isDesignedForFamilies")) {
            arrayList.add(Boolean.valueOf(zzbfdVar.zzr));
        }
        if (hashSet.contains("tagForUnderAgeOfConsent")) {
            arrayList.add(Integer.valueOf(zzbfdVar.zzt));
        }
        if (hashSet.contains("maxAdContentRating")) {
            arrayList.add(zzbfdVar.zzu);
        }
        if (hashSet.contains("orientation")) {
            if (zzbfoVar != null) {
                arrayList.add(Integer.valueOf(zzbfoVar.zza));
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
        Iterator it2 = new TreeSet(bundle.keySet()).iterator();
        while (it2.hasNext()) {
            Object obj = bundle.get((String) it2.next());
            sb.append(obj == null ? "null" : obj instanceof Bundle ? zza((Bundle) obj) : obj.toString());
        }
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzffx
    public final boolean equals(Object obj) {
        if (!(obj instanceof zzffy)) {
            return false;
        }
        return Arrays.equals(this.zza, ((zzffy) obj).zza);
    }

    @Override // com.google.android.gms.internal.ads.zzffx
    public final int hashCode() {
        return Arrays.hashCode(this.zza);
    }

    public final String toString() {
        int hashCode = Arrays.hashCode(this.zza);
        String arrays = Arrays.toString(this.zza);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 22);
        sb.append("[PoolKey#");
        sb.append(hashCode);
        sb.append(" ");
        sb.append(arrays);
        sb.append("]");
        return sb.toString();
    }
}
