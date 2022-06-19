package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sl2.class */
public final class sl2 implements rl2 {

    /* renamed from: a */
    private final Object[] f29568a;

    public sl2(zzbdg zzbdgVar, String str, int i, String str2, zzbdr zzbdrVar) {
        HashSet hashSet = new HashSet(Arrays.asList(str2.split(",")));
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        arrayList.add(str);
        if (hashSet.contains("networkType")) {
            arrayList.add(Integer.valueOf(i));
        }
        if (hashSet.contains("birthday")) {
            arrayList.add(Long.valueOf(zzbdgVar.f33660e));
        }
        if (hashSet.contains("extras")) {
            arrayList.add(m10992a(zzbdgVar.f33661f));
        } else if (hashSet.contains("npa")) {
            arrayList.add(zzbdgVar.f33661f.getString("npa"));
        }
        if (hashSet.contains("gender")) {
            arrayList.add(Integer.valueOf(zzbdgVar.f33662g));
        }
        if (hashSet.contains("keywords")) {
            List<String> list = zzbdgVar.f33663h;
            if (list != null) {
                arrayList.add(list.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("isTestDevice")) {
            arrayList.add(Boolean.valueOf(zzbdgVar.f33664i));
        }
        if (hashSet.contains("tagForChildDirectedTreatment")) {
            arrayList.add(Integer.valueOf(zzbdgVar.f33665j));
        }
        if (hashSet.contains("manualImpressionsEnabled")) {
            arrayList.add(Boolean.valueOf(zzbdgVar.f33666k));
        }
        if (hashSet.contains("publisherProvidedId")) {
            arrayList.add(zzbdgVar.f33667l);
        }
        if (hashSet.contains("location")) {
            Location location = zzbdgVar.f33669n;
            if (location != null) {
                arrayList.add(location.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("contentUrl")) {
            arrayList.add(zzbdgVar.f33670o);
        }
        if (hashSet.contains("networkExtras")) {
            arrayList.add(m10992a(zzbdgVar.f33671p));
        }
        if (hashSet.contains("customTargeting")) {
            arrayList.add(m10992a(zzbdgVar.f33672q));
        }
        if (hashSet.contains("categoryExclusions")) {
            List<String> list2 = zzbdgVar.f33673r;
            if (list2 != null) {
                arrayList.add(list2.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("requestAgent")) {
            arrayList.add(zzbdgVar.f33674s);
        }
        if (hashSet.contains("requestPackage")) {
            arrayList.add(zzbdgVar.f33675t);
        }
        if (hashSet.contains("isDesignedForFamilies")) {
            arrayList.add(Boolean.valueOf(zzbdgVar.f33676u));
        }
        if (hashSet.contains("tagForUnderAgeOfConsent")) {
            arrayList.add(Integer.valueOf(zzbdgVar.f33678w));
        }
        if (hashSet.contains("maxAdContentRating")) {
            arrayList.add(zzbdgVar.f33679x);
        }
        if (hashSet.contains("orientation")) {
            if (zzbdrVar != null) {
                arrayList.add(Integer.valueOf(zzbdrVar.f33705d));
            } else {
                arrayList.add(null);
            }
        }
        this.f29568a = arrayList.toArray();
    }

    /* renamed from: a */
    private static String m10992a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        while (it.hasNext()) {
            Object obj = bundle.get((String) it.next());
            sb.append(obj == null ? "null" : obj instanceof Bundle ? m10992a((Bundle) obj) : obj.toString());
        }
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.rl2
    public final boolean equals(Object obj) {
        if (!(obj instanceof sl2)) {
            return false;
        }
        return Arrays.equals(this.f29568a, ((sl2) obj).f29568a);
    }

    @Override // com.google.android.gms.internal.ads.rl2
    public final int hashCode() {
        return Arrays.hashCode(this.f29568a);
    }

    public final String toString() {
        int hashCode = Arrays.hashCode(this.f29568a);
        String arrays = Arrays.toString(this.f29568a);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 22);
        sb.append("[PoolKey#");
        sb.append(hashCode);
        sb.append(" ");
        sb.append(arrays);
        sb.append("]");
        return sb.toString();
    }
}
