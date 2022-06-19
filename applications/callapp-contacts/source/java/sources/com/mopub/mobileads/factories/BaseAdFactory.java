package com.mopub.mobileads.factories;

import com.mopub.mobileads.BaseAd;
import java.lang.reflect.Constructor;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/factories/BaseAdFactory.class */
public class BaseAdFactory {

    /* renamed from: a */
    protected static BaseAdFactory f59694a = new BaseAdFactory();

    public static BaseAd create(String str) throws Exception {
        Constructor declaredConstructor = Class.forName(str).asSubclass(BaseAd.class).getDeclaredConstructor(null);
        declaredConstructor.setAccessible(true);
        return (BaseAd) declaredConstructor.newInstance(new Object[0]);
    }

    @Deprecated
    public static void setInstance(BaseAdFactory baseAdFactory) {
        f59694a = baseAdFactory;
    }
}
