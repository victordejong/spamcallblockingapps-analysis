package com.mopub.nativeads.factories;

import com.mopub.common.Preconditions;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.MoPubCustomEventNative;
import java.lang.reflect.Constructor;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/factories/CustomEventNativeFactory.class */
public class CustomEventNativeFactory {

    /* renamed from: a  reason: collision with root package name */
    protected static CustomEventNativeFactory f34684a = new CustomEventNativeFactory();

    public static CustomEventNative create(String str) throws Exception {
        if (str == null) {
            return new MoPubCustomEventNative();
        }
        Class<? extends U> asSubclass = Class.forName(str).asSubclass(CustomEventNative.class);
        Preconditions.checkNotNull(asSubclass);
        Constructor declaredConstructor = asSubclass.getDeclaredConstructor(null);
        declaredConstructor.setAccessible(true);
        return (CustomEventNative) declaredConstructor.newInstance(new Object[0]);
    }

    @Deprecated
    public static void setInstance(CustomEventNativeFactory customEventNativeFactory) {
        Preconditions.checkNotNull(customEventNativeFactory);
        f34684a = customEventNativeFactory;
    }
}
