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

    /* renamed from: a */
    public static final Set<String> f25593a = Collections.synchronizedSet(new HashSet());

    /* renamed from: b */
    private static Map<String, Object> f25594b;

    /* renamed from: com.callapp.contacts.manager.CallAppAdsAnalyticsManager$1 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/CallAppAdsAnalyticsManager$1.class */
    public static /* synthetic */ class C73821 {

        /* renamed from: a */
        static final /* synthetic */ int[] f25595a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[MoPubView.MoPubAdSize.values().length];
            f25595a = iArr;
            try {
                iArr[MoPubView.MoPubAdSize.HEIGHT_50.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f25595a[MoPubView.MoPubAdSize.HEIGHT_250.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: a */
    public static MoPub.AD_TYPE_AND_SIZE m28742a(MoPubView.MoPubAdSize moPubAdSize) {
        int i = C73821.f25595a[moPubAdSize.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return MoPub.AD_TYPE_AND_SIZE.BANNER_300X250;
            }
            return null;
        }
        return MoPub.AD_TYPE_AND_SIZE.BANNER_320X50;
    }

    /* renamed from: a */
    public static void m28741a(String str, String str2, double d, MoPub.AD_TYPE_AND_SIZE ad_type_and_size) {
        m28740a(str, str2, d, ad_type_and_size, null);
    }

    /* renamed from: a */
    public static void m28740a(String str, String str2, double d, MoPub.AD_TYPE_AND_SIZE ad_type_and_size, String str3) {
        if (f25593a.contains(str2)) {
            CLog.m27611a(CallAppAdsAnalyticsManager.class, "Ignoring impression on adUnitId: ".concat(String.valueOf(str2)));
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (ad_type_and_size != null) {
            arrayList.add("adType");
            arrayList.add(ad_type_and_size.getType());
            arrayList.add("adSize");
            arrayList.add(ad_type_and_size.getSize());
        }
        if (StringUtils.m26045b((CharSequence) str3)) {
            arrayList.add("adRequestId");
            arrayList.add(str3);
        }
        if (CollectionUtils.m26068b(arrayList)) {
            AnalyticsManager.get().mo28444a(Constants.f26733AD, "Ad logging impression", AdUtils.m27269a(str, str2), d, (String[]) arrayList.toArray(new String[arrayList.size()]));
        } else {
            AnalyticsManager.get().mo28444a(Constants.f26733AD, "Ad logging impression", AdUtils.m27269a(str, str2), d, new String[0]);
        }
        AnalyticsManager.get().mo28429a(str, str2, d / 1000.0d, ad_type_and_size);
        try {
            AppsFlyerLib appsFlyerLib = AppsFlyerLib.getInstance();
            CallAppApplication callAppApplication = CallAppApplication.get();
            appsFlyerLib.trackEvent(callAppApplication, str + "_ad_impression", getEventValues());
        } catch (Exception e) {
            CLog.m27609a(CallAppAdsAnalyticsManager.class, e);
        }
        if (Prefs.f26381cz.m28170a(51).get().intValue() != 50) {
            return;
        }
        AnalyticsManager.get().mo28446a(Constants.f26733AD, "50impressions", (String) null, d);
    }

    /* renamed from: a */
    public static void m28739a(String str, String str2, MoPub.AD_TYPE_AND_SIZE ad_type_and_size) {
        m28741a(str, str2, 0.0d, ad_type_and_size);
    }

    /* renamed from: b */
    public static void m28738b(String str, String str2, MoPub.AD_TYPE_AND_SIZE ad_type_and_size) {
        m28737c(str, str2, ad_type_and_size);
    }

    /* renamed from: c */
    public static void m28737c(String str, String str2, MoPub.AD_TYPE_AND_SIZE ad_type_and_size) {
        if (f25593a.contains(str2)) {
            CLog.m27611a(CallAppAdsAnalyticsManager.class, "Ignoring click on adUnitId: ".concat(String.valueOf(str2)));
            return;
        }
        if (ad_type_and_size != null) {
            AnalyticsManager.get().mo28444a(Constants.f26733AD, "Ad clicked", AdUtils.m27269a(str, str2), 0.0d, "adType", ad_type_and_size.getType(), "adSize", ad_type_and_size.getSize());
        } else {
            AnalyticsManager.get().mo28444a(Constants.f26733AD, "Ad clicked", AdUtils.m27269a(str, str2), 0.0d, new String[0]);
        }
        try {
            AppsFlyerLib appsFlyerLib = AppsFlyerLib.getInstance();
            CallAppApplication callAppApplication = CallAppApplication.get();
            appsFlyerLib.trackEvent(callAppApplication, str + "_ad_click", getEventValues());
        } catch (Exception e) {
            CLog.m27609a(CallAppAdsAnalyticsManager.class, e);
        }
        int intValue = Prefs.f26532fr.m28170a(5).get().intValue();
        if (intValue == 1) {
            AnalyticsManager.get().mo28446a(Constants.f26733AD, "1TimeClick", (String) null, 0.0d);
        }
        if (intValue == 2) {
            AnalyticsManager.get().mo28446a(Constants.f26733AD, "2TimeClick", (String) null, 0.0d);
        }
        if (intValue != 4) {
            return;
        }
        AnalyticsManager.get().mo28446a(Constants.f26733AD, "4TimeClick", (String) null, 0.0d);
    }

    public static MoPub.AD_TYPE_AND_SIZE getAdTypeAndSizeForBanner(int i) {
        return m28742a(getMoPubAdSize(i));
    }

    private static Map<String, Object> getEventValues() {
        if (f25594b != null) {
            HashMap hashMap = new HashMap();
            f25594b = hashMap;
            hashMap.put("Days_Since_Install", String.valueOf(CallAppApplication.get().getDaysSinceInstall()));
            f25594b.put("AB_Group", String.valueOf(AbTestUtils.getGroupDimension()));
        }
        return f25594b;
    }

    public static MoPubView.MoPubAdSize getMoPubAdSize(int i) {
        return i != 50 ? i != 250 ? MoPubView.MoPubAdSize.MATCH_VIEW : MoPubView.MoPubAdSize.HEIGHT_250 : MoPubView.MoPubAdSize.HEIGHT_50;
    }
}
