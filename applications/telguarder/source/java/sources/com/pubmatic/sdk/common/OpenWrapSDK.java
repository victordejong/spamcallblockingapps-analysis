package com.pubmatic.sdk.common;

import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.models.POBApplicationInfo;
import com.pubmatic.sdk.common.models.POBLocation;
import com.pubmatic.sdk.common.models.POBUserInfo;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/OpenWrapSDK.class */
public class OpenWrapSDK {

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/OpenWrapSDK$LogLevel.class */
    public enum LogLevel {
        All(0),
        Verbose(1),
        Debug(2),
        Info(3),
        Warn(4),
        Error(5),
        Off(6);
        

        /* renamed from: a */
        final int f341a;

        LogLevel(int i) {
            this.f341a = i;
        }

        public int getLevel() {
            return this.f341a;
        }
    }

    public static void allowAdvertisingId(boolean z) {
        POBInstanceProvider.getSdkConfig().allowAdvertisingId(z);
    }

    public static void allowLocationAccess(boolean z) {
        POBInstanceProvider.getSdkConfig().allowLocationAccess(z);
    }

    public static String getVersion() {
        return "1.8.2";
    }

    public static void setApplicationInfo(POBApplicationInfo pOBApplicationInfo) {
        POBInstanceProvider.getSdkConfig().setApplicationInfo(pOBApplicationInfo);
    }

    public static void setCCPA(String str) {
        POBInstanceProvider.getSdkConfig().setCCPA(str);
    }

    public static void setCoppa(boolean z) {
        POBInstanceProvider.getSdkConfig().setCoppa(z);
    }

    public static void setGDPRConsent(String str) {
        POBInstanceProvider.getSdkConfig().setGdprConsent(str);
    }

    public static void setGDPREnabled(boolean z) {
        POBInstanceProvider.getSdkConfig().setGdprEnabled(Boolean.valueOf(z));
    }

    public static void setLocation(POBLocation pOBLocation) {
        POBInstanceProvider.getSdkConfig().setLocation(pOBLocation);
    }

    public static void setLogLevel(LogLevel logLevel) {
        PMLog.setLogLevel(logLevel);
    }

    public static void setSSLEnabled(boolean z) {
        POBInstanceProvider.getSdkConfig().setRequestSecureCreative(z);
    }

    public static void setUseInternalBrowser(boolean z) {
        POBInstanceProvider.getSdkConfig().setUseInternalBrowser(z);
    }

    public static void setUserInfo(POBUserInfo pOBUserInfo) {
        POBInstanceProvider.getSdkConfig().setUserInfo(pOBUserInfo);
    }
}
