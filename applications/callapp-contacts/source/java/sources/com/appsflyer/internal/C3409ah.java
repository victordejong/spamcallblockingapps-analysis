package com.appsflyer.internal;

import com.appsflyer.AFLogger;
/* renamed from: com.appsflyer.internal.ah */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ah.class */
public final class C3409ah {

    /* renamed from: ǃ */
    private AbstractC3411c f12869 = new AbstractC3411c() { // from class: com.appsflyer.internal.ah.4
        @Override // com.appsflyer.internal.C3409ah.AbstractC3411c
        /* renamed from: ǃ */
        public final Class<?> mo38000(String str) throws ClassNotFoundException {
            return Class.forName(str);
        }
    };

    /* renamed from: com.appsflyer.internal.ah$c */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ah$c.class */
    public interface AbstractC3411c {
        /* renamed from: ǃ */
        Class<?> mo38000(String str) throws ClassNotFoundException;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsflyer.internal.ah$e */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ah$e.class */
    public enum EnumC3412e {
        UNITY("android_unity", "com.unity3d.player.UnityPlayer"),
        REACT_NATIVE("android_reactNative", "com.facebook.react.ReactApplication"),
        CORDOVA("android_cordova", "org.apache.cordova.CordovaActivity"),
        SEGMENT("android_segment", "com.segment.analytics.integrations.Integration"),
        COCOS2DX("android_cocos2dx", "org.cocos2dx.lib.Cocos2dxActivity"),
        DEFAULT("android_native", "android_native"),
        ADOBE_EX("android_adobe_ex", "com.appsflyer.adobeextension"),
        FLUTTER("android_flutter", "com.appsflyer.appsflyersdk.AppsflyerSdkPlugin");
        

        /* renamed from: і */
        private String f12879;

        /* renamed from: Ӏ */
        private String f12880;

        EnumC3412e(String str, String str2) {
            this.f12880 = str;
            this.f12879 = str2;
        }
    }

    /* renamed from: ι */
    private boolean m38001(String str) {
        try {
            this.f12869.mo38000(str);
            StringBuilder sb = new StringBuilder("Class: ");
            sb.append(str);
            sb.append(" is found.");
            AFLogger.afRDLog(sb.toString());
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        } catch (Throwable th) {
            AFLogger.afErrorLog(th.getMessage(), th);
            return false;
        }
    }

    /* renamed from: ɩ */
    public final String m38002() {
        EnumC3412e[] values;
        for (EnumC3412e enumC3412e : EnumC3412e.values()) {
            if (m38001(enumC3412e.f12879)) {
                return enumC3412e.f12880;
            }
        }
        return EnumC3412e.DEFAULT.f12880;
    }
}
