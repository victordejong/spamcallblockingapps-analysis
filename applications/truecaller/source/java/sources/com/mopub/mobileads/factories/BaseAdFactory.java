package com.mopub.mobileads.factories;

import com.mopub.mobileads.BaseAd;
import java.lang.reflect.Constructor;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/factories/BaseAdFactory.class */
public class BaseAdFactory {

    /* renamed from: a */
    public static BaseAdFactory f8998a = new BaseAdFactory();

    public static BaseAd create(String str) throws Exception {
        Objects.requireNonNull(f8998a);
        Constructor declaredConstructor = Class.forName(str).asSubclass(BaseAd.class).getDeclaredConstructor(null);
        declaredConstructor.setAccessible(true);
        return (BaseAd) declaredConstructor.newInstance(new Object[0]);
    }

    @Deprecated
    public static void setInstance(BaseAdFactory baseAdFactory) {
        f8998a = baseAdFactory;
    }
}
