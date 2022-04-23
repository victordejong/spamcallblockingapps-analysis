package com.callapp.contacts.manager.analytics;

import com.appsflyer.AFInAppEventParameterName;
import com.appsflyer.AFInAppEventType;
import com.appsflyer.AppsFlyerLib;
import com.callapp.contacts.CallAppApplication;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/analytics/AppsFlyerAnalyticsManager.class */
public class AppsFlyerAnalyticsManager extends AbstractAnalyticsManager {
    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    protected final void a() {
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    protected final void b(String str, String str2, String str3, double d2) {
        HashMap hashMap = new HashMap();
        hashMap.put(AFInAppEventParameterName.PARAM_1, str3);
        hashMap.put(AFInAppEventParameterName.PARAM_2, Double.valueOf(d2));
        AppsFlyerLib instance = AppsFlyerLib.getInstance();
        CallAppApplication callAppApplication = CallAppApplication.get();
        instance.trackEvent(callAppApplication, str + VerificationLanguage.REGION_PREFIX + str2, hashMap);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    protected final void b(String str, String str2, String str3, double d2, String str4) {
        HashMap hashMap = new HashMap();
        hashMap.put(AFInAppEventParameterName.CONTENT_ID, str2);
        hashMap.put(AFInAppEventParameterName.CONTENT_TYPE, str3);
        hashMap.put(AFInAppEventParameterName.CURRENCY, str4);
        hashMap.put(AFInAppEventParameterName.REVENUE, Double.valueOf(d2));
        AppsFlyerLib.getInstance().trackEvent(CallAppApplication.get(), AFInAppEventType.PURCHASE, hashMap);
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    protected final void b(String str, String str2, String str3, double d2, String... strArr) {
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    protected final void c(String str) {
    }

    @Override // com.callapp.contacts.manager.analytics.AbstractAnalyticsManager
    protected final void i() {
    }
}
