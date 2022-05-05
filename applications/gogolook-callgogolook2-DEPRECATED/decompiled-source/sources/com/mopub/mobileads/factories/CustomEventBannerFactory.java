package com.mopub.mobileads.factories;

import com.mopub.mobileads.CustomEventBanner;
import java.lang.reflect.Constructor;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/factories/CustomEventBannerFactory.class */
public class CustomEventBannerFactory {

    /* renamed from: a */
    public static CustomEventBannerFactory f8842a = new CustomEventBannerFactory();

    public static CustomEventBanner create(String str) throws Exception {
        return f8842a.m30348a(str);
    }

    @Deprecated
    public static void setInstance(CustomEventBannerFactory customEventBannerFactory) {
        f8842a = customEventBannerFactory;
    }

    /* renamed from: a */
    public CustomEventBanner m30348a(String str) throws Exception {
        Constructor declaredConstructor = Class.forName(str).asSubclass(CustomEventBanner.class).getDeclaredConstructor(null);
        declaredConstructor.setAccessible(true);
        return (CustomEventBanner) declaredConstructor.newInstance(new Object[0]);
    }
}
