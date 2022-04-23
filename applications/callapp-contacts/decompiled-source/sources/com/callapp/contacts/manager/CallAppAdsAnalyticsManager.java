package com.callapp.contacts.manager;

import com.appsflyer.AppsFlyerLib;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.analytics.AbTestUtils;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.mopub.common.MoPub;
import com.mopub.mobileads.MoPubView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/CallAppAdsAnalyticsManager.class */
public class CallAppAdsAnalyticsManager {

    /* renamed from: a  reason: collision with root package name */
    public static final Set<String> f14798a = Collections.synchronizedSet(new HashSet());

    /* renamed from: b  reason: collision with root package name */
    private static Map<String, Object> f14799b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.manager.CallAppAdsAnalyticsManager$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/CallAppAdsAnalyticsManager$1.class */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f14800a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[MoPubView.MoPubAdSize.values().length];
            f14800a = iArr;
            try {
                iArr[MoPubView.MoPubAdSize.HEIGHT_50.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f14800a[MoPubView.MoPubAdSize.HEIGHT_250.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public static MoPub.AD_TYPE_AND_SIZE a(MoPubView.MoPubAdSize moPubAdSize) {
        int i = AnonymousClass1.f14800a[moPubAdSize.ordinal()];
        if (i == 1) {
            return MoPub.AD_TYPE_AND_SIZE.BANNER_320X50;
        }
        if (i != 2) {
            return null;
        }
        return MoPub.AD_TYPE_AND_SIZE.BANNER_300X250;
    }

    public static void a(String str, String str2, double d2, MoPub.AD_TYPE_AND_SIZE ad_type_and_size) {
        a(str, str2, d2, ad_type_and_size, null);
    }

    public static void a(String str, String str2, double d2, MoPub.AD_TYPE_AND_SIZE ad_type_and_size, String str3) {
        if (f14798a.contains(str2)) {
            CLog.a(CallAppAdsAnalyticsManager.class, "Ignoring impression on adUnitId: ".concat(String.valueOf(str2)));
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (ad_type_and_size != null) {
            arrayList.add("adType");
            arrayList.add(ad_type_and_size.getType());
            arrayList.add("adSize");
            arrayList.add(ad_type_and_size.getSize());
        }
        if (StringUtils.b((CharSequence) str3)) {
            arrayList.add("adRequestId");
            arrayList.add(str3);
        }
        if (CollectionUtils.b(arrayList)) {
            AnalyticsManager.get().a(Constants.AD, "Ad logging impression", AdUtils.a(str, str2), d2, (String[]) arrayList.toArray(new String[arrayList.size()]));
        } else {
            AnalyticsManager.get().a(Constants.AD, "Ad logging impression", AdUtils.a(str, str2), d2, new String[0]);
        }
        AnalyticsManager.get().a(str, str2, d2 / 1000.0d, ad_type_and_size);
        try {
            AppsFlyerLib instance = AppsFlyerLib.getInstance();
            CallAppApplication callAppApplication = CallAppApplication.get();
            instance.trackEvent(callAppApplication, str + "_ad_impression", getEventValues());
        } catch (Exception e) {
            CLog.a(CallAppAdsAnalyticsManager.class, e);
        }
        if (Prefs.cz.a(51).get().intValue() == 50) {
            AnalyticsManager.get().a(Constants.AD, "50impressions", (String) null, d2);
        }
    }

    public static void a(String str, String str2, MoPub.AD_TYPE_AND_SIZE ad_type_and_size) {
        a(str, str2, 0.0d, ad_type_and_size);
    }

    public static void b(String str, String str2, MoPub.AD_TYPE_AND_SIZE ad_type_and_size) {
        c(str, str2, ad_type_and_size);
    }

    public static void c(String str, String str2, MoPub.AD_TYPE_AND_SIZE ad_type_and_size) {
        if (f14798a.contains(str2)) {
            CLog.a(CallAppAdsAnalyticsManager.class, "Ignoring click on adUnitId: ".concat(String.valueOf(str2)));
            return;
        }
        if (ad_type_and_size != null) {
            AnalyticsManager.get().a(Constants.AD, "Ad clicked", AdUtils.a(str, str2), 0.0d, "adType", ad_type_and_size.getType(), "adSize", ad_type_and_size.getSize());
        } else {
            AnalyticsManager.get().a(Constants.AD, "Ad clicked", AdUtils.a(str, str2), 0.0d, new String[0]);
        }
        try {
            AppsFlyerLib instance = AppsFlyerLib.getInstance();
            CallAppApplication callAppApplication = CallAppApplication.get();
            instance.trackEvent(callAppApplication, str + "_ad_click", getEventValues());
        } catch (Exception e) {
            CLog.a(CallAppAdsAnalyticsManager.class, e);
        }
        int intValue = Prefs.fr.a(5).get().intValue();
        if (intValue == 1) {
            AnalyticsManager.get().a(Constants.AD, "1TimeClick", (String) null, 0.0d);
        }
        if (intValue == 2) {
            AnalyticsManager.get().a(Constants.AD, "2TimeClick", (String) null, 0.0d);
        }
        if (intValue == 4) {
            AnalyticsManager.get().a(Constants.AD, "4TimeClick", (String) null, 0.0d);
        }
    }

    public static MoPub.AD_TYPE_AND_SIZE getAdTypeAndSizeForBanner(int i) {
        return a(getMoPubAdSize(i));
    }

    private static Map<String, Object> getEventValues() {
        if (f14799b != null) {
            HashMap hashMap = new HashMap();
            f14799b = hashMap;
            hashMap.put("Days_Since_Install", String.valueOf(CallAppApplication.get().getDaysSinceInstall()));
            f14799b.put("AB_Group", String.valueOf(AbTestUtils.getGroupDimension()));
        }
        return f14799b;
    }

    public static MoPubView.MoPubAdSize getMoPubAdSize(int i) {
        return i != 50 ? i != 250 ? MoPubView.MoPubAdSize.MATCH_VIEW : MoPubView.MoPubAdSize.HEIGHT_250 : MoPubView.MoPubAdSize.HEIGHT_50;
    }
}
