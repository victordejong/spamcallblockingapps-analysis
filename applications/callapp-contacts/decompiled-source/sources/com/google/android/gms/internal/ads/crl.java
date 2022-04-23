package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.mopub.mobileads.GooglePlayServicesInterstitial;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.TreeSet;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/crl.class */
public final class crl implements cri {

    /* renamed from: a  reason: collision with root package name */
    private final Object[] f26306a;

    public crl(zzvq zzvqVar, String str, int i, String str2, zzwc zzwcVar) {
        HashSet hashSet = new HashSet(Arrays.asList(str2.split(",")));
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        arrayList.add(str);
        if (hashSet.contains("networkType")) {
            arrayList.add(Integer.valueOf(i));
        }
        if (hashSet.contains("birthday")) {
            arrayList.add(Long.valueOf(zzvqVar.zzcia));
        }
        if (hashSet.contains("extras")) {
            arrayList.add(a(zzvqVar.extras));
        } else if (hashSet.contains("npa")) {
            arrayList.add(zzvqVar.extras.getString("npa"));
        }
        if (hashSet.contains(VerizonSSPWaterfallProvider.USER_DATA_GENDER_KEY)) {
            arrayList.add(Integer.valueOf(zzvqVar.zzcib));
        }
        if (hashSet.contains(VerizonSSPWaterfallProvider.USER_DATA_KEYWORDS_KEY)) {
            if (zzvqVar.zzcic != null) {
                arrayList.add(zzvqVar.zzcic.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("isTestDevice")) {
            arrayList.add(Boolean.valueOf(zzvqVar.zzcid));
        }
        if (hashSet.contains(GooglePlayServicesInterstitial.TAG_FOR_CHILD_DIRECTED_KEY)) {
            arrayList.add(Integer.valueOf(zzvqVar.zzadv));
        }
        if (hashSet.contains("manualImpressionsEnabled")) {
            arrayList.add(Boolean.valueOf(zzvqVar.zzbns));
        }
        if (hashSet.contains("publisherProvidedId")) {
            arrayList.add(zzvqVar.zzcie);
        }
        if (hashSet.contains("location")) {
            if (zzvqVar.zzng != null) {
                arrayList.add(zzvqVar.zzng.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains(GooglePlayServicesInterstitial.CONTENT_URL_KEY)) {
            arrayList.add(zzvqVar.zzcig);
        }
        if (hashSet.contains("networkExtras")) {
            arrayList.add(a(zzvqVar.zzcih));
        }
        if (hashSet.contains("customTargeting")) {
            arrayList.add(a(zzvqVar.zzcii));
        }
        if (hashSet.contains("categoryExclusions")) {
            if (zzvqVar.zzcij != null) {
                arrayList.add(zzvqVar.zzcij.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("requestAgent")) {
            arrayList.add(zzvqVar.zzcik);
        }
        if (hashSet.contains("requestPackage")) {
            arrayList.add(zzvqVar.zzcil);
        }
        if (hashSet.contains("isDesignedForFamilies")) {
            arrayList.add(Boolean.valueOf(zzvqVar.zzcim));
        }
        if (hashSet.contains(GooglePlayServicesInterstitial.TAG_FOR_UNDER_AGE_OF_CONSENT_KEY)) {
            arrayList.add(Integer.valueOf(zzvqVar.zzadw));
        }
        if (hashSet.contains("maxAdContentRating")) {
            arrayList.add(zzvqVar.zzadx);
        }
        if (hashSet.contains("orientation")) {
            if (zzwcVar != null) {
                arrayList.add(Integer.valueOf(zzwcVar.orientation));
            } else {
                arrayList.add(null);
            }
        }
        this.f26306a = arrayList.toArray();
    }

    private static String a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Iterator it2 = new TreeSet(bundle.keySet()).iterator();
        while (it2.hasNext()) {
            Object obj = bundle.get((String) it2.next());
            sb.append(obj == null ? JsonReaderKt.NULL : obj instanceof Bundle ? a((Bundle) obj) : obj.toString());
        }
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.cri
    public final boolean equals(Object obj) {
        if (!(obj instanceof crl)) {
            return false;
        }
        return Arrays.equals(this.f26306a, ((crl) obj).f26306a);
    }

    @Override // com.google.android.gms.internal.ads.cri
    public final int hashCode() {
        return Arrays.hashCode(this.f26306a);
    }

    public final String toString() {
        int hashCode = hashCode();
        String arrays = Arrays.toString(this.f26306a);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 22);
        sb.append("[PoolKey#");
        sb.append(hashCode);
        sb.append(StringUtils.SPACE);
        sb.append(arrays);
        sb.append("]");
        return sb.toString();
    }
}
