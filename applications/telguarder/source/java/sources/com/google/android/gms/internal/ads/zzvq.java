package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.search.SearchAdRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzvq.class */
public final class zzvq {
    public static final zzvq zzcif = new zzvq();

    protected zzvq() {
    }

    public static zzava zza(Context context, zzzk zzzkVar, String str) {
        return new zzava(zza(context, zzzkVar), str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v69, types: [long] */
    /* JADX WARN: Type inference failed for: r30v0 */
    /* JADX WARN: Type inference failed for: r30v1 */
    /* JADX WARN: Type inference failed for: r30v2 */
    /* JADX WARN: Type inference failed for: r3v4 */
    public static zzvl zza(Context context, zzzk zzzkVar) {
        zzve zzveVar;
        String str;
        Date birthday = zzzkVar.getBirthday();
        ?? time = birthday != null ? birthday.getTime() : true;
        String contentUrl = zzzkVar.getContentUrl();
        int gender = zzzkVar.getGender();
        Set<String> keywords = zzzkVar.getKeywords();
        List unmodifiableList = !keywords.isEmpty() ? Collections.unmodifiableList(new ArrayList(keywords)) : null;
        boolean isTestDevice = zzzkVar.isTestDevice(context);
        Location location = zzzkVar.getLocation();
        Bundle networkExtrasBundle = zzzkVar.getNetworkExtrasBundle(AdMobAdapter.class);
        if (zzzkVar.zzro() != null) {
            zzveVar = new zzve(zzzkVar.zzro().getAdString(), zzwr.zzqv().containsKey(zzzkVar.zzro().getQueryInfo()) ? zzwr.zzqv().get(zzzkVar.zzro().getQueryInfo()) : "");
        } else {
            zzveVar = null;
        }
        boolean manualImpressionsEnabled = zzzkVar.getManualImpressionsEnabled();
        String publisherProvidedId = zzzkVar.getPublisherProvidedId();
        SearchAdRequest zzrj = zzzkVar.zzrj();
        zzaaq zzaaqVar = zzrj != null ? new zzaaq(zzrj) : null;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            String packageName = applicationContext.getPackageName();
            zzwr.zzqn();
            str = zzaza.zza(Thread.currentThread().getStackTrace(), packageName);
        } else {
            str = null;
        }
        boolean isDesignedForFamilies = zzzkVar.isDesignedForFamilies();
        RequestConfiguration requestConfiguration = zzzn.zzrs().getRequestConfiguration();
        return new zzvl(8, time == true ? 1L : 0L, networkExtrasBundle, gender, unmodifiableList, isTestDevice, Math.max(zzzkVar.zzrm(), requestConfiguration.getTagForChildDirectedTreatment()), manualImpressionsEnabled, publisherProvidedId, zzaaqVar, location, contentUrl, zzzkVar.zzrl(), zzzkVar.getCustomTargeting(), Collections.unmodifiableList(new ArrayList(zzzkVar.zzrn())), zzzkVar.zzri(), str, isDesignedForFamilies, zzveVar, Math.max(zzzkVar.zzrp(), requestConfiguration.getTagForUnderAgeOfConsent()), (String) Collections.max(Arrays.asList(zzzkVar.getMaxAdContentRating(), requestConfiguration.getMaxAdContentRating()), zzvp.zzcie), zzzkVar.zzrh(), zzzkVar.zzrq());
    }

    public static final /* synthetic */ int zzc(String str, String str2) {
        return RequestConfiguration.zzads.indexOf(str) - RequestConfiguration.zzads.indexOf(str2);
    }
}
