package com.facebook.ads;

import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.settings.AdInternalSettings;
import java.io.Serializable;
import java.util.Collection;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/AdSettings.class */
public class AdSettings {
    public static final boolean DEBUG = false;

    @Keep
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/AdSettings$IntegrationErrorMode.class */
    public enum IntegrationErrorMode {
        INTEGRATION_ERROR_CRASH_DEBUG_MODE,
        INTEGRATION_ERROR_CALLBACK_MODE;
        
        public static final long serialVersionUID = 1;
    }

    @Keep
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/AdSettings$MultiprocessSupportMode.class */
    public enum MultiprocessSupportMode {
        MULTIPROCESS_SUPPORT_MODE_ON,
        MULTIPROCESS_SUPPORT_MODE_AUTO,
        MULTIPROCESS_SUPPORT_MODE_OFF;
        
        public static final long serialVersionUID = 1;
    }

    @Keep
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/AdSettings$TestAdType.class */
    public enum TestAdType implements Serializable {
        DEFAULT("DEFAULT", "Default"),
        IMG_16_9_APP_INSTALL("IMG_16_9_APP_INSTALL", "Image App install"),
        IMG_16_9_LINK("IMG_16_9_LINK", "Image link"),
        VIDEO_HD_16_9_46S_APP_INSTALL("VID_HD_16_9_46S_APP_INSTALL", "Video 46 sec App install"),
        VIDEO_HD_16_9_46S_LINK("VID_HD_16_9_46S_LINK", "Video 46 sec link"),
        VIDEO_HD_16_9_15S_APP_INSTALL("VID_HD_16_9_15S_APP_INSTALL", "Video 15 sec App install"),
        VIDEO_HD_16_9_15S_LINK("VID_HD_16_9_15S_LINK", "Video 15 sec link"),
        VIDEO_HD_9_16_39S_APP_INSTALL("VID_HD_9_16_39S_APP_INSTALL", "Video 39 sec App install"),
        VIDEO_HD_9_16_39S_LINK("VID_HD_9_16_39S_LINK", "Video 39 sec link"),
        CAROUSEL_IMG_SQUARE_APP_INSTALL("CAROUSEL_IMG_SQUARE_APP_INSTALL", "Carousel App install"),
        CAROUSEL_IMG_SQUARE_LINK("CAROUSEL_IMG_SQUARE_LINK", "Carousel link"),
        PLAYABLE("PLAYABLE", "Playable ad");
        
        public static final long serialVersionUID = 1;
        public final String adTypeString;
        public final String humanReadable;

        TestAdType(String str, String str2) {
            this.adTypeString = str;
            this.humanReadable = str2;
        }

        public String getAdTypeString() {
            return this.adTypeString;
        }

        public String getHumanReadable() {
            return this.humanReadable;
        }
    }

    public static void addTestDevice(String str) {
        AdInternalSettings.addTestDevice(str);
    }

    public static void addTestDevices(Collection<String> collection) {
        AdInternalSettings.addTestDevices(collection);
    }

    public static void clearTestDevices() {
        AdInternalSettings.clearTestDevices();
    }

    @Nullable
    public static String getMediationService() {
        return AdInternalSettings.getMediationService();
    }

    public static TestAdType getTestAdType() {
        Serializable serializable = AdInternalSettings.sSettingsBundle.getSerializable(AdInternalSettings.TEST_AD_TYPE_KEY);
        if (serializable != null && (serializable instanceof TestAdType)) {
            return (TestAdType) serializable;
        }
        AdInternalSettings.sSettingsBundle.putSerializable(AdInternalSettings.TEST_AD_TYPE_KEY, TestAdType.DEFAULT);
        return TestAdType.DEFAULT;
    }

    @Nullable
    public static String getUrlPrefix() {
        return AdInternalSettings.getUrlPrefix();
    }

    @Deprecated
    public static boolean isChildDirected() {
        return AdInternalSettings.sSettingsBundle.getBoolean(AdInternalSettings.BOOL_CHILD_DIRECTED_KEY, false);
    }

    public static boolean isMixedAudience() {
        return AdInternalSettings.sSettingsBundle.getBoolean(AdInternalSettings.BOOL_MIXED_AUDIENCE_KEY, false);
    }

    public static boolean isTestMode(Context context) {
        return AdInternalSettings.isTestMode(context);
    }

    public static boolean isVideoAutoplay() {
        return AdInternalSettings.isVideoAutoplay();
    }

    public static boolean isVideoAutoplayOnMobile() {
        return AdInternalSettings.isVideoAutoplayOnMobile();
    }

    public static void setDebugBuild(boolean z) {
        AdInternalSettings.setDebugBuild(z);
    }

    public static void setIntegrationErrorMode(IntegrationErrorMode integrationErrorMode) {
        AdInternalSettings.sSettingsBundle.putSerializable(AdInternalSettings.SRL_INTEGRATION_ERROR_MODE_KEY, integrationErrorMode);
    }

    @Deprecated
    public static void setIsChildDirected(boolean z) {
        AdInternalSettings.sSettingsBundle.putBoolean(AdInternalSettings.BOOL_CHILD_DIRECTED_KEY, z);
    }

    public static void setMediationService(String str) {
        AdInternalSettings.setMediationService(str);
    }

    public static void setMixedAudience(boolean z) {
        AdInternalSettings.sSettingsBundle.putBoolean(AdInternalSettings.BOOL_MIXED_AUDIENCE_KEY, z);
    }

    public static void setMultiprocessSupportMode(MultiprocessSupportMode multiprocessSupportMode) {
        AdInternalSettings.setMultiprocessSupportMode(multiprocessSupportMode);
    }

    public static void setTestAdType(TestAdType testAdType) {
        AdInternalSettings.sSettingsBundle.putSerializable(AdInternalSettings.TEST_AD_TYPE_KEY, testAdType);
    }

    public static void setTestMode(boolean z) {
        AdInternalSettings.setTestMode(z);
    }

    public static void setUrlPrefix(@Nullable String str) {
        AdInternalSettings.setUrlPrefix(str);
    }

    public static void setVideoAutoplay(boolean z) {
        AdInternalSettings.setVideoAutoplay(z);
    }

    public static void setVideoAutoplayOnMobile(boolean z) {
        AdInternalSettings.setVideoAutoplayOnMobile(z);
    }

    public static void setVisibleAnimation(boolean z) {
        AdInternalSettings.setVisibleAnimation(z);
    }

    public static void turnOnSDKDebugger(Context context) {
        AdInternalSettings.turnOnSDKDebugger(context);
    }
}
