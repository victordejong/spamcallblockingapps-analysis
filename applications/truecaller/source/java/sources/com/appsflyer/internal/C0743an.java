package com.appsflyer.internal;

import com.appsflyer.AFLogger;
/* renamed from: com.appsflyer.internal.an */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/an.class */
public final class C0743an {
    private AbstractC0745a AFInAppEventType = new AbstractC0745a() { // from class: com.appsflyer.internal.an.3
        @Override // com.appsflyer.internal.C0743an.AbstractC0745a
        public final Class<?> values(String str) throws ClassNotFoundException {
            return Class.forName(str);
        }
    };

    /* renamed from: com.appsflyer.internal.an$a */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/an$a.class */
    public interface AbstractC0745a {
        Class<?> values(String str) throws ClassNotFoundException;
    }

    /* renamed from: com.appsflyer.internal.an$d */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/an$d.class */
    public enum EnumC0746d {
        ADOBE_AIR("android_adobe_air", "com.appsflyer.adobeair.AppsFlyerExtension"),
        ADOBE_MOBILE_SDK("android_adobe_mobile", "com.appsflyer.adobeextension.AppsFlyerAdobeExtension"),
        COCOS2DX("android_cocos2dx", "org.cocos2dx.lib.Cocos2dxActivity"),
        CORDOVA("android_cordova", "com.appsflyer.cordova.plugin.AppsFlyerPlugin"),
        DEFAULT("android_native", "android_native"),
        FLUTTER("android_flutter", "com.appsflyer.appsflyersdk.AppsflyerSdkPlugin"),
        M_PARTICLE("android_mparticle", "com.mparticle.kits.AppsFlyerKit"),
        NATIVE_SCRIPT("android_native_script", "com.tns.NativeScriptActivity"),
        REACT_NATIVE("android_reactNative", "com.appsflyer.reactnative.RNAppsFlyerModule"),
        SEGMENT("android_segment", "com.segment.analytics.android.integrations.appsflyer.AppsflyerIntegration"),
        UNITY("android_unity", "com.appsflyer.unity.AppsFlyerAndroidWrapper"),
        UNREAL_ENGINE("android_unreal", "com.epicgames.ue4.GameActivity"),
        XAMARIN("android_xamarin", "mono.android.Runtime");
        
        private String onAttributionFailureNative;
        private String onInstallConversionFailureNative;

        EnumC0746d(String str, String str2) {
            this.onAttributionFailureNative = str;
            this.onInstallConversionFailureNative = str2;
        }
    }

    private boolean AFInAppEventParameterName(String str) {
        try {
            this.AFInAppEventType.values(str);
            StringBuilder sb = new StringBuilder("Class: ");
            sb.append(str);
            sb.append(" is found.");
            AFLogger.AFInAppEventParameterName(sb.toString());
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        } catch (Throwable th) {
            AFLogger.valueOf(th.getMessage(), th);
            return false;
        }
    }

    public final String AFKeystoreWrapper() {
        EnumC0746d[] values = EnumC0746d.values();
        for (int i = 0; i < 13; i++) {
            EnumC0746d enumC0746d = values[i];
            if (AFInAppEventParameterName(enumC0746d.onInstallConversionFailureNative)) {
                return enumC0746d.onAttributionFailureNative;
            }
        }
        return EnumC0746d.DEFAULT.onAttributionFailureNative;
    }
}
