package com.appsflyer.internal;

import com.appsflyer.AFLogger;
/* renamed from: com.appsflyer.internal.ag */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ag.class */
public final class C1825ag {

    /* renamed from: ı */
    public AbstractC1827a f1777 = new AbstractC1827a() { // from class: com.appsflyer.internal.ag.2
        @Override // com.appsflyer.internal.C1825ag.AbstractC1827a
        /* renamed from: ǃ */
        public final Class<?> mo36178(String str) throws ClassNotFoundException {
            return Class.forName(str);
        }
    };

    /* renamed from: com.appsflyer.internal.ag$a */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ag$a.class */
    public interface AbstractC1827a {
        /* renamed from: ǃ */
        Class<?> mo36178(String str) throws ClassNotFoundException;
    }

    /* renamed from: com.appsflyer.internal.ag$c */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ag$c.class */
    public enum EnumC1828c {
        UNITY("android_unity", "com.unity3d.player.UnityPlayer"),
        REACT_NATIVE("android_reactNative", "com.facebook.react.ReactApplication"),
        CORDOVA("android_cordova", "org.apache.cordova.CordovaActivity"),
        SEGMENT("android_segment", "com.segment.analytics.integrations.Integration"),
        COCOS2DX("android_cocos2dx", "org.cocos2dx.lib.Cocos2dxActivity"),
        DEFAULT("android_native", "android_native"),
        ADOBE_EX("android_adobe_ex", "com.appsflyer.adobeextension"),
        FLUTTER("android_flutter", "com.appsflyer.appsflyersdk.AppsflyerSdkPlugin");
        

        /* renamed from: і */
        public String f1787;

        /* renamed from: Ӏ */
        public String f1788;

        EnumC1828c(String str, String str2) {
            this.f1788 = str;
            this.f1787 = str2;
        }
    }

    /* renamed from: ι */
    private boolean m36179(String str) {
        try {
            this.f1777.mo36178(str);
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

    /* renamed from: ı */
    public final String m36180() {
        EnumC1828c[] values;
        for (EnumC1828c cVar : EnumC1828c.values()) {
            if (m36179(cVar.f1787)) {
                return cVar.f1788;
            }
        }
        return EnumC1828c.DEFAULT.f1788;
    }
}
