package com.applovin.sdk;

import android.content.Context;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import com.applovin.impl.mediation.MaxMediatedNetworkInfoImpl;
import com.applovin.impl.mediation.p040c.C1107c;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.utils.C1488d;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxMediatedNetworkInfo;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/applovin/sdk/AppLovinSdk.class */
public final class AppLovinSdk {
    private static final String TAG = "AppLovinSdk";
    public static final String VERSION = getVersion();
    public static final int VERSION_CODE = getVersionCode();
    private static final Map<String, AppLovinSdk> sdkInstances = new HashMap();
    private static final Object sdkInstancesLock = new Object();
    public final C1408l coreSdk;

    /* loaded from: classes-dex2jar.jar:com/applovin/sdk/AppLovinSdk$SdkInitializationListener.class */
    public interface SdkInitializationListener {
        void onSdkInitialized(AppLovinSdkConfiguration appLovinSdkConfiguration);
    }

    /* renamed from: com.applovin.sdk.AppLovinSdk$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/sdk/AppLovinSdk$a.class */
    public static class C1581a extends AppLovinSdkSettings {
        public C1581a(Context context) {
            super(context);
        }
    }

    private AppLovinSdk(C1408l c1408l) {
        this.coreSdk = c1408l;
    }

    /* renamed from: a */
    public static AppLovinSdk m4867a(String str, AppLovinSdkSettings appLovinSdkSettings, Context context) {
        if (appLovinSdkSettings != null) {
            if (context == null) {
                throw new IllegalArgumentException("No context specified");
            }
            synchronized (sdkInstancesLock) {
                Map<String, AppLovinSdk> map = sdkInstances;
                if (map.containsKey(str)) {
                    return map.get(str);
                }
                String str2 = str;
                if (!TextUtils.isEmpty(str)) {
                    String str3 = File.separator;
                    str2 = str;
                    if (str.contains(str3)) {
                        C1479t.m5107i(TAG, "\n**************************************************\nINVALID SDK KEY: " + str + "\n**************************************************\n");
                        if (!map.isEmpty()) {
                            return map.values().iterator().next();
                        }
                        str2 = str.replace(str3, "");
                    }
                }
                if (map.isEmpty()) {
                    String arrays = Arrays.toString(Arrays.copyOf(new Throwable().getStackTrace(), 5));
                    C1479t.m5109g(TAG, "AppLovinSdk.getInstance()\n" + arrays);
                }
                C1408l c1408l = new C1408l();
                c1408l.m5499a(str2, appLovinSdkSettings, context);
                AppLovinSdk appLovinSdk = new AppLovinSdk(c1408l);
                c1408l.m5501a(appLovinSdk);
                appLovinSdkSettings.attachAppLovinSdk(c1408l);
                map.put(str2, appLovinSdk);
                return appLovinSdk;
            }
        }
        throw new IllegalArgumentException("No userSettings specified");
    }

    /* renamed from: a */
    public static List<AppLovinSdk> m4868a() {
        return new ArrayList(sdkInstances.values());
    }

    public static AppLovinSdk getInstance(Context context) {
        return getInstance(new C1581a(context), context);
    }

    public static AppLovinSdk getInstance(AppLovinSdkSettings appLovinSdkSettings, Context context) {
        if (context != null) {
            return getInstance(C1488d.m5084a(context).m5082a("applovin.sdk.key", ""), appLovinSdkSettings, context);
        }
        throw new IllegalArgumentException("No context specified");
    }

    public static AppLovinSdk getInstance(String str, AppLovinSdkSettings appLovinSdkSettings, Context context) {
        return m4867a(str, appLovinSdkSettings, context);
    }

    private static String getVersion() {
        return "11.1.3";
    }

    private static int getVersionCode() {
        return 11010399;
    }

    public static void initializeSdk(Context context) {
        initializeSdk(context, null);
    }

    public static void initializeSdk(Context context, SdkInitializationListener sdkInitializationListener) {
        if (context != null) {
            AppLovinSdk appLovinSdk = getInstance(context);
            if (appLovinSdk != null) {
                appLovinSdk.initializeSdk(sdkInitializationListener);
                return;
            } else {
                C1479t.m5107i(TAG, "Unable to initialize AppLovin SDK: SDK object not created");
                return;
            }
        }
        throw new IllegalArgumentException("No context specified");
    }

    public static void reinitializeAll(Boolean bool, Boolean bool2, Boolean bool3) {
        synchronized (sdkInstancesLock) {
            for (AppLovinSdk appLovinSdk : sdkInstances.values()) {
                appLovinSdk.coreSdk.m5481b();
                appLovinSdk.coreSdk.m5461i();
                if (bool != null) {
                    C1479t m5542A = appLovinSdk.coreSdk.m5542A();
                    m5542A.m5114c(TAG, "Toggled 'huc' to " + bool);
                    appLovinSdk.getEventService().trackEvent("huc", CollectionUtils.map(AppMeasurementSdk.ConditionalUserProperty.VALUE, bool.toString()));
                }
                if (bool2 != null) {
                    C1479t m5542A2 = appLovinSdk.coreSdk.m5542A();
                    m5542A2.m5114c(TAG, "Toggled 'aru' to " + bool2);
                    appLovinSdk.getEventService().trackEvent("aru", CollectionUtils.map(AppMeasurementSdk.ConditionalUserProperty.VALUE, bool2.toString()));
                }
                if (bool3 != null) {
                    C1479t m5542A3 = appLovinSdk.coreSdk.m5542A();
                    m5542A3.m5114c(TAG, "Toggled 'dns' to " + bool3);
                    appLovinSdk.getEventService().trackEvent("dns", CollectionUtils.map(AppMeasurementSdk.ConditionalUserProperty.VALUE, bool3.toString()));
                }
            }
        }
    }

    public AppLovinAdService getAdService() {
        return this.coreSdk.m5449u();
    }

    public List<MaxMediatedNetworkInfo> getAvailableMediatedNetworks() {
        JSONArray m6457a = C1107c.m6457a(this.coreSdk);
        ArrayList arrayList = new ArrayList(m6457a.length());
        for (int i = 0; i < m6457a.length(); i++) {
            arrayList.add(new MaxMediatedNetworkInfoImpl(JsonUtils.getJSONObject(m6457a, i, (JSONObject) null)));
        }
        return arrayList;
    }

    public AppLovinSdkConfiguration getConfiguration() {
        return this.coreSdk.m5451s();
    }

    public AppLovinEventService getEventService() {
        return this.coreSdk.m5447w();
    }

    public String getMediationProvider() {
        return this.coreSdk.m5450t();
    }

    public AppLovinPostbackService getPostbackService() {
        return this.coreSdk.m5520W();
    }

    public String getSdkKey() {
        return this.coreSdk.m5444z();
    }

    public AppLovinSdkSettings getSettings() {
        return this.coreSdk.m5454p();
    }

    public AppLovinTargetingData getTargetingData() {
        return this.coreSdk.m5452r();
    }

    public String getUserIdentifier() {
        return this.coreSdk.m5457m();
    }

    public AppLovinUserSegment getUserSegment() {
        return this.coreSdk.m5453q();
    }

    public AppLovinUserService getUserService() {
        return this.coreSdk.m5446x();
    }

    public AppLovinVariableService getVariableService() {
        return this.coreSdk.m5445y();
    }

    public void initializeSdk() {
    }

    public void initializeSdk(SdkInitializationListener sdkInitializationListener) {
        this.coreSdk.m5502a(sdkInitializationListener);
    }

    public boolean isEnabled() {
        return this.coreSdk.m5469d();
    }

    public boolean isInitialized() {
        return this.coreSdk.m5469d();
    }

    public void setMediationProvider(String str) {
        this.coreSdk.m5470c(str);
    }

    public void setPluginVersion(String str) {
        this.coreSdk.m5500a(str);
    }

    public void setUserIdentifier(String str) {
        this.coreSdk.m5475b(str);
    }

    public void showMediationDebugger() {
        this.coreSdk.m5458l();
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("AppLovinSdk{sdkKey='");
        m8752j.append(getSdkKey());
        m8752j.append("', isEnabled=");
        m8752j.append(isEnabled());
        m8752j.append(", isFirstSession=");
        m8752j.append(this.coreSdk.m5528O());
        m8752j.append('}');
        return m8752j.toString();
    }
}
