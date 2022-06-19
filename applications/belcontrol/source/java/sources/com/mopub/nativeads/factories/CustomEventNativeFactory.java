package com.mopub.nativeads.factories;

import com.mopub.common.Preconditions;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.MoPubCustomEventNative;
import java.lang.reflect.Constructor;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/factories/CustomEventNativeFactory.class */
public class CustomEventNativeFactory {

    /* renamed from: a */
    public static CustomEventNativeFactory f5302a = new CustomEventNativeFactory();

    public static CustomEventNative create(String str) {
        if (str != null) {
            return f5302a.m3266a(Class.forName(str).asSubclass(CustomEventNative.class));
        }
        return new MoPubCustomEventNative();
    }

    @Deprecated
    public static void setInstance(CustomEventNativeFactory customEventNativeFactory) {
        Preconditions.checkNotNull(customEventNativeFactory);
        f5302a = customEventNativeFactory;
    }

    /* renamed from: a */
    public CustomEventNative m3266a(Class<? extends CustomEventNative> cls) {
        Preconditions.checkNotNull(cls);
        Constructor<? extends CustomEventNative> declaredConstructor = cls.getDeclaredConstructor(null);
        declaredConstructor.setAccessible(true);
        return declaredConstructor.newInstance(new Object[0]);
    }
}
