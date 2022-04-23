package com.applovin.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.applovin.nativeAds.AppLovinNativeAdService;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p153y.C2383c;
import p131c.p135b.p136a.p148e.p153y.C2386e;
/* loaded from: classes-dex2jar.jar:com/applovin/sdk/AppLovinSdk.class */
public final class AppLovinSdk {
    public static final String TAG = "AppLovinSdk";
    public static final String VERSION = getVersion();
    public static final int VERSION_CODE = getVersionCode();
    public static final Map<String, AppLovinSdk> sdkInstances = new HashMap();
    public static final Object sdkInstancesLock = new Object();
    public final C2341l mSdkImpl;

    /* loaded from: classes-dex2jar.jar:com/applovin/sdk/AppLovinSdk$SdkInitializationListener.class */
    public interface SdkInitializationListener {
        void onSdkInitialized(AppLovinSdkConfiguration appLovinSdkConfiguration);
    }

    /* renamed from: com.applovin.sdk.AppLovinSdk$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/sdk/AppLovinSdk$a.class */
    public static class C7077a extends AppLovinSdkSettings {
        public C7077a(Context context) {
            super(context);
        }
    }

    public AppLovinSdk(C2341l lVar) {
        this.mSdkImpl = lVar;
    }

    /* renamed from: a */
    public static List<AppLovinSdk> m18784a() {
        return new ArrayList(sdkInstances.values());
    }

    public static AppLovinSdk getInstance(Context context) {
        return getInstance(new C7077a(context), context);
    }

    public static AppLovinSdk getInstance(AppLovinSdkSettings appLovinSdkSettings, Context context) {
        if (context != null) {
            return getInstance(C2383c.m29991a(context).m29989a("applovin.sdk.key", ""), appLovinSdkSettings, context);
        }
        throw new IllegalArgumentException("No context specified");
    }

    public static AppLovinSdk getInstance(String str, AppLovinSdkSettings appLovinSdkSettings, Context context) {
        if (appLovinSdkSettings == null) {
            throw new IllegalArgumentException("No userSettings specified");
        } else if (context != null) {
            synchronized (sdkInstancesLock) {
                if (sdkInstances.containsKey(str)) {
                    return sdkInstances.get(str);
                }
                String str2 = str;
                if (!TextUtils.isEmpty(str)) {
                    str2 = str;
                    if (str.contains(File.separator)) {
                        C2374t.m30034j(TAG, "\n**************************************************\nINVALID SDK KEY: " + str + "\n**************************************************\n");
                        if (!sdkInstances.isEmpty()) {
                            return sdkInstances.values().iterator().next();
                        }
                        str2 = str.replace(File.separator, "");
                    }
                }
                C2341l lVar = new C2341l();
                lVar.m30282a(str2, appLovinSdkSettings, context);
                AppLovinSdk appLovinSdk = new AppLovinSdk(lVar);
                lVar.m30285a(appLovinSdk);
                sdkInstances.put(str2, appLovinSdk);
                return appLovinSdk;
            }
        } else {
            throw new IllegalArgumentException("No context specified");
        }
    }

    public static String getVersion() {
        return "9.12.2";
    }

    public static int getVersionCode() {
        return 91202;
    }

    public static void initializeSdk(Context context) {
        initializeSdk(context, null);
    }

    public static void initializeSdk(Context context, SdkInitializationListener sdkInitializationListener) {
        if (context != null) {
            AppLovinSdk instance = getInstance(context);
            if (instance != null) {
                instance.initializeSdk(sdkInitializationListener);
            } else {
                C2374t.m30034j(TAG, "Unable to initialize AppLovin SDK: SDK object not created");
            }
        } else {
            throw new IllegalArgumentException("No context specified");
        }
    }

    public static void reinitializeAll(Boolean bool, Boolean bool2, Boolean bool3) {
        synchronized (sdkInstancesLock) {
            try {
                for (AppLovinSdk appLovinSdk : sdkInstances.values()) {
                    appLovinSdk.mSdkImpl.m30312J();
                    if (bool != null) {
                        C2374t d0 = appLovinSdk.mSdkImpl.m30262d0();
                        d0.m30042c(TAG, "Toggled 'huc' to " + bool);
                        appLovinSdk.getEventService().trackEvent("huc", C2386e.m29983a("value", bool.toString()));
                    }
                    if (bool2 != null) {
                        C2374t d02 = appLovinSdk.mSdkImpl.m30262d0();
                        d02.m30042c(TAG, "Toggled 'aru' to " + bool2);
                        appLovinSdk.getEventService().trackEvent("aru", C2386e.m29983a("value", bool2.toString()));
                    }
                    if (bool3 != null) {
                        C2374t d03 = appLovinSdk.mSdkImpl.m30262d0();
                        d03.m30042c(TAG, "Toggled 'dns' to " + bool3);
                        appLovinSdk.getEventService().trackEvent("dns", C2386e.m29983a("value", bool3.toString()));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public AppLovinAdService getAdService() {
        return this.mSdkImpl.m30299W();
    }

    @Deprecated
    public Context getApplicationContext() {
        return this.mSdkImpl.m30264d();
    }

    public AppLovinSdkConfiguration getConfiguration() {
        return this.mSdkImpl.m30301U();
    }

    public AppLovinEventService getEventService() {
        return this.mSdkImpl.m30297Y();
    }

    @Deprecated
    public C2374t getLogger() {
        return this.mSdkImpl.m30262d0();
    }

    public String getMediationProvider() {
        return this.mSdkImpl.m30300V();
    }

    public AppLovinNativeAdService getNativeAdService() {
        return this.mSdkImpl.m30298X();
    }

    public AppLovinPostbackService getPostbackService() {
        return this.mSdkImpl.m30243p();
    }

    public String getSdkKey() {
        return this.mSdkImpl.m30269b0();
    }

    public AppLovinSdkSettings getSettings() {
        return this.mSdkImpl.m30302T();
    }

    public String getUserIdentifier() {
        return this.mSdkImpl.m30305Q();
    }

    public AppLovinUserService getUserService() {
        return this.mSdkImpl.m30296Z();
    }

    public AppLovinVariableService getVariableService() {
        return this.mSdkImpl.m30277a0();
    }

    public boolean hasCriticalErrors() {
        return this.mSdkImpl.m30265c0();
    }

    public void initializeSdk() {
    }

    public void initializeSdk(SdkInitializationListener sdkInitializationListener) {
        this.mSdkImpl.m30286a(sdkInitializationListener);
    }

    public boolean isEnabled() {
        return this.mSdkImpl.m30310L();
    }

    public void setMediationProvider(String str) {
        this.mSdkImpl.m30266c(str);
    }

    public void setPluginVersion(String str) {
        this.mSdkImpl.m30284a(str);
    }

    public void setUserIdentifier(String str) {
        this.mSdkImpl.m30270b(str);
    }

    public void showMediationDebugger() {
        this.mSdkImpl.m30306P();
    }

    public String toString() {
        return "AppLovinSdk{sdkKey='" + getSdkKey() + "', isEnabled=" + isEnabled() + ", isFirstSession=" + this.mSdkImpl.m30255g() + '}';
    }
}
