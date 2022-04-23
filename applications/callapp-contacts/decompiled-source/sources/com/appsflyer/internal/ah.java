package com.appsflyer.internal;

import com.appsflyer.AFLogger;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ah.class */
public final class ah {

    /* renamed from: ǃ  reason: contains not printable characters */
    private c f193 = new c() { // from class: com.appsflyer.internal.ah.4
        @Override // com.appsflyer.internal.ah.c
        /* renamed from: ǃ  reason: contains not printable characters */
        public final Class<?> mo959(String str) throws ClassNotFoundException {
            return Class.forName(str);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ah$c.class */
    public interface c {
        /* renamed from: ǃ */
        Class<?> mo959(String str) throws ClassNotFoundException;
    }

    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ah$e.class */
    enum e {
        UNITY("android_unity", "com.unity3d.player.UnityPlayer"),
        REACT_NATIVE("android_reactNative", "com.facebook.react.ReactApplication"),
        CORDOVA("android_cordova", "org.apache.cordova.CordovaActivity"),
        SEGMENT("android_segment", "com.segment.analytics.integrations.Integration"),
        COCOS2DX("android_cocos2dx", "org.cocos2dx.lib.Cocos2dxActivity"),
        DEFAULT("android_native", "android_native"),
        ADOBE_EX("android_adobe_ex", "com.appsflyer.adobeextension"),
        FLUTTER("android_flutter", "com.appsflyer.appsflyersdk.AppsflyerSdkPlugin");
        

        /* renamed from: і  reason: contains not printable characters */
        private String f203;

        /* renamed from: Ӏ  reason: contains not printable characters */
        private String f204;

        e(String str, String str2) {
            this.f204 = str;
            this.f203 = str2;
        }
    }

    /* renamed from: ι  reason: contains not printable characters */
    private boolean m957(String str) {
        try {
            this.f193.mo959(str);
            StringBuilder sb = new StringBuilder("Class: ");
            sb.append(str);
            sb.append(" is found.");
            AFLogger.afRDLog(sb.toString());
            return true;
        } catch (ClassNotFoundException e2) {
            return false;
        } catch (Throwable th) {
            AFLogger.afErrorLog(th.getMessage(), th);
            return false;
        }
    }

    /* renamed from: ɩ  reason: contains not printable characters */
    public final String m958() {
        e[] values;
        for (e eVar : e.values()) {
            if (m957(eVar.f203)) {
                return eVar.f204;
            }
        }
        return e.DEFAULT.f204;
    }
}
