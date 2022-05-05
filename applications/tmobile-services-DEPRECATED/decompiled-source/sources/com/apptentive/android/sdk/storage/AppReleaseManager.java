package com.apptentive.android.sdk.storage;

import android.content.Context;
import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.model.AppReleasePayload;
import com.apptentive.android.sdk.model.SdkAndAppReleasePayload;
import com.apptentive.android.sdk.util.ApplicationInfo;
import com.apptentive.android.sdk.util.RuntimeUtils;
import com.apptentive.android.sdk.util.Util;
import com.google.firebase.crashlytics.internal.common.AbstractSpiCall;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/AppReleaseManager.class */
public class AppReleaseManager {
    public static AppRelease generateCurrentAppRelease(Context context, ApptentiveInternal apptentiveInternal) {
        AppRelease appRelease = new AppRelease();
        String packageName = context.getPackageName();
        int identifier = context.getResources().getIdentifier("ApptentiveThemeOverride", "style", packageName);
        ApplicationInfo applicationInfo = RuntimeUtils.getApplicationInfo(context);
        appRelease.setAppStore(Util.getInstallerPackageName(context));
        appRelease.setDebug(applicationInfo.isDebuggable());
        appRelease.setIdentifier(packageName);
        if (apptentiveInternal != null) {
            appRelease.setInheritStyle(apptentiveInternal.isAppUsingAppCompatTheme());
        }
        appRelease.setOverrideStyle(identifier != 0);
        appRelease.setTargetSdkVersion(String.valueOf(applicationInfo.getTargetSdkVersion()));
        appRelease.setType(AbstractSpiCall.ANDROID_CLIENT_TYPE);
        appRelease.setVersionCode(applicationInfo.getVersionCode());
        appRelease.setVersionName(applicationInfo.getVersionName());
        return appRelease;
    }

    public static AppReleasePayload getPayload(AppRelease appRelease) {
        AppReleasePayload appReleasePayload = new AppReleasePayload();
        if (appRelease == null) {
            return appReleasePayload;
        }
        appReleasePayload.setAppStore(appRelease.getAppStore());
        appReleasePayload.setDebug(appRelease.isDebug());
        appReleasePayload.setIdentifier(appRelease.getIdentifier());
        appReleasePayload.setInheritStyle(appRelease.isInheritStyle());
        appReleasePayload.setOverrideStyle(appRelease.isOverrideStyle());
        appReleasePayload.setTargetSdkVersion(appRelease.getTargetSdkVersion());
        appReleasePayload.setType(appRelease.getType());
        appReleasePayload.setVersionCode(appRelease.getVersionCode());
        appReleasePayload.setVersionName(appRelease.getVersionName());
        return appReleasePayload;
    }

    public static SdkAndAppReleasePayload getPayload(Sdk sdk, AppRelease appRelease) {
        SdkAndAppReleasePayload sdkAndAppReleasePayload = new SdkAndAppReleasePayload();
        if (appRelease == null) {
            return sdkAndAppReleasePayload;
        }
        sdkAndAppReleasePayload.setAuthorEmail(sdk.getAuthorEmail());
        sdkAndAppReleasePayload.setAuthorName(sdk.getAuthorName());
        sdkAndAppReleasePayload.setDistribution(sdk.getDistribution());
        sdkAndAppReleasePayload.setDistributionVersion(sdk.getDistributionVersion());
        sdkAndAppReleasePayload.setPlatform(sdk.getPlatform());
        sdkAndAppReleasePayload.setProgrammingLanguage(sdk.getProgrammingLanguage());
        sdkAndAppReleasePayload.setVersion(sdk.getVersion());
        sdkAndAppReleasePayload.setAppStore(appRelease.getAppStore());
        sdkAndAppReleasePayload.setDebug(appRelease.isDebug());
        sdkAndAppReleasePayload.setIdentifier(appRelease.getIdentifier());
        sdkAndAppReleasePayload.setInheritStyle(appRelease.isInheritStyle());
        sdkAndAppReleasePayload.setOverrideStyle(appRelease.isOverrideStyle());
        sdkAndAppReleasePayload.setTargetSdkVersion(appRelease.getTargetSdkVersion());
        sdkAndAppReleasePayload.setType(appRelease.getType());
        sdkAndAppReleasePayload.setVersionCode(appRelease.getVersionCode());
        sdkAndAppReleasePayload.setVersionName(appRelease.getVersionName());
        return sdkAndAppReleasePayload;
    }
}
