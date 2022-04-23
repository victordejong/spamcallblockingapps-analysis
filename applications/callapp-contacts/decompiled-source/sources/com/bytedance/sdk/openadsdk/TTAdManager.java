package com.bytedance.sdk.openadsdk;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTAdManager.class */
public interface TTAdManager {
    TTAdNative createAdNative(Context context);

    String getBiddingToken();

    @Deprecated
    int getCoppa();

    @Deprecated
    int getGdpr();

    String getSDKVersion();

    boolean isExpressAd(String str, String str2);

    boolean isFullScreenVideoAd(String str, String str2);

    @Deprecated
    TTAdManager isUseTextureView(boolean z);

    boolean onlyVerityPlayable(String str, int i, String str2, String str3, String str4);

    @Deprecated
    TTAdManager openDebugMode();

    @Deprecated
    void requestPermissionIfNecessary(Context context);

    @Deprecated
    TTAdManager setAllowShowNotifiFromSDK(boolean z);

    @Deprecated
    TTAdManager setAppId(String str);

    @Deprecated
    TTAdManager setCoppa(int i);

    @Deprecated
    TTAdManager setData(String str);

    @Deprecated
    TTAdManager setGdpr(int i);

    @Deprecated
    TTAdManager setKeywords(String str);

    @Deprecated
    TTAdManager setName(String str);

    @Deprecated
    TTAdManager setNeedClearTaskReset(String[] strArr);

    @Deprecated
    TTAdManager setPaid(boolean z);

    @Deprecated
    TTAdManager setTTSecAbs(TTSecAbs tTSecAbs);

    @Deprecated
    TTAdManager setTitleBarTheme(int i);

    void showPrivacyProtection();
}
