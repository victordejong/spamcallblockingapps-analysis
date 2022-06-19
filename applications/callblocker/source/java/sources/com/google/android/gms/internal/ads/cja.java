package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.TreeSet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cja.class */
public final class cja implements cjb {

    /* renamed from: a */
    private final Object[] f13162a;

    public cja(dya dyaVar, String str, int i, String str2, dyk dykVar) {
        HashSet hashSet = new HashSet(Arrays.asList(str2.split(",")));
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        arrayList.add(str);
        if (hashSet.contains("networkType")) {
            arrayList.add(Integer.valueOf(i));
        }
        if (hashSet.contains("birthday")) {
            arrayList.add(Long.valueOf(dyaVar.f16068b));
        }
        if (hashSet.contains("extras")) {
            arrayList.add(m11216a(dyaVar.f16069c));
        } else if (hashSet.contains("npa")) {
            arrayList.add(dyaVar.f16069c.getString("npa"));
        }
        if (hashSet.contains("gender")) {
            arrayList.add(Integer.valueOf(dyaVar.f16070d));
        }
        if (hashSet.contains("keywords")) {
            if (dyaVar.f16071e != null) {
                arrayList.add(dyaVar.f16071e.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("isTestDevice")) {
            arrayList.add(Boolean.valueOf(dyaVar.f16072f));
        }
        if (hashSet.contains("tagForChildDirectedTreatment")) {
            arrayList.add(Integer.valueOf(dyaVar.f16073g));
        }
        if (hashSet.contains("manualImpressionsEnabled")) {
            arrayList.add(Boolean.valueOf(dyaVar.f16074h));
        }
        if (hashSet.contains("publisherProvidedId")) {
            arrayList.add(dyaVar.f16075i);
        }
        if (hashSet.contains("location")) {
            if (dyaVar.f16077k != null) {
                arrayList.add(dyaVar.f16077k.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("contentUrl")) {
            arrayList.add(dyaVar.f16078l);
        }
        if (hashSet.contains("networkExtras")) {
            arrayList.add(m11216a(dyaVar.f16079m));
        }
        if (hashSet.contains("customTargeting")) {
            arrayList.add(m11216a(dyaVar.f16080n));
        }
        if (hashSet.contains("categoryExclusions")) {
            if (dyaVar.f16081o != null) {
                arrayList.add(dyaVar.f16081o.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("requestAgent")) {
            arrayList.add(dyaVar.f16082p);
        }
        if (hashSet.contains("requestPackage")) {
            arrayList.add(dyaVar.f16083q);
        }
        if (hashSet.contains("isDesignedForFamilies")) {
            arrayList.add(Boolean.valueOf(dyaVar.f16084r));
        }
        if (hashSet.contains("tagForUnderAgeOfConsent")) {
            arrayList.add(Integer.valueOf(dyaVar.f16086t));
        }
        if (hashSet.contains("maxAdContentRating")) {
            arrayList.add(dyaVar.f16087u);
        }
        if (hashSet.contains("orientation")) {
            if (dykVar != null) {
                arrayList.add(Integer.valueOf(dykVar.f16110a));
            } else {
                arrayList.add(null);
            }
        }
        this.f13162a = arrayList.toArray();
    }

    /* renamed from: a */
    private static String m11216a(Bundle bundle) {
        String sb;
        if (bundle == null) {
            sb = null;
        } else {
            StringBuilder sb2 = new StringBuilder();
            Iterator it = new TreeSet(bundle.keySet()).iterator();
            while (it.hasNext()) {
                Object obj = bundle.get((String) it.next());
                sb2.append(obj == null ? "null" : obj instanceof Bundle ? m11216a((Bundle) obj) : obj.toString());
            }
            sb = sb2.toString();
        }
        return sb;
    }

    @Override // com.google.android.gms.internal.ads.cjb
    public final boolean equals(Object obj) {
        return !(obj instanceof cja) ? false : Arrays.equals(this.f13162a, ((cja) obj).f13162a);
    }

    @Override // com.google.android.gms.internal.ads.cjb
    public final int hashCode() {
        return Arrays.hashCode(this.f13162a);
    }

    public final String toString() {
        int hashCode = hashCode();
        String arrays = Arrays.toString(this.f13162a);
        return new StringBuilder(String.valueOf(arrays).length() + 22).append("[PoolKey#").append(hashCode).append(" ").append(arrays).append("]").toString();
    }
}
