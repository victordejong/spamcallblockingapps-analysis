package com.mopub.mobileads.factories;

import com.mopub.mobileads.BaseAd;
import java.lang.reflect.Constructor;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/factories/BaseAdFactory.class */
public class BaseAdFactory {

    /* renamed from: a */
    public static BaseAdFactory f4996a = new BaseAdFactory();

    public static BaseAd create(String str) {
        return f4996a.m3501a(str);
    }

    @Deprecated
    public static void setInstance(BaseAdFactory baseAdFactory) {
        f4996a = baseAdFactory;
    }

    /* renamed from: a */
    public BaseAd m3501a(String str) {
        Constructor declaredConstructor = Class.forName(str).asSubclass(BaseAd.class).getDeclaredConstructor(null);
        declaredConstructor.setAccessible(true);
        return (BaseAd) declaredConstructor.newInstance(new Object[0]);
    }
}
