package com.mopub.mobileads.factories;

import com.mopub.mobileads.CustomEventInterstitial;
import java.lang.reflect.Constructor;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/factories/CustomEventInterstitialFactory.class */
public class CustomEventInterstitialFactory {

    /* renamed from: a */
    public static CustomEventInterstitialFactory f34503a = new CustomEventInterstitialFactory();

    public static CustomEventInterstitial create(String str) throws Exception {
        return f34503a.m4140a(str);
    }

    @Deprecated
    public static void setInstance(CustomEventInterstitialFactory customEventInterstitialFactory) {
        f34503a = customEventInterstitialFactory;
    }

    /* renamed from: a */
    public CustomEventInterstitial m4140a(String str) throws Exception {
        Constructor declaredConstructor = Class.forName(str).asSubclass(CustomEventInterstitial.class).getDeclaredConstructor(null);
        declaredConstructor.setAccessible(true);
        return (CustomEventInterstitial) declaredConstructor.newInstance(new Object[0]);
    }
}
