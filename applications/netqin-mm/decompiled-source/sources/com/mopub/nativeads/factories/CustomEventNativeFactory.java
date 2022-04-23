package com.mopub.nativeads.factories;

import com.mopub.common.Preconditions;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.MoPubCustomEventNative;
import java.lang.reflect.Constructor;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/factories/CustomEventNativeFactory.class */
public class CustomEventNativeFactory {

    /* renamed from: a */
    public static CustomEventNativeFactory f34970a = new CustomEventNativeFactory();

    public static CustomEventNative create(String str) throws Exception {
        if (str == null) {
            return new MoPubCustomEventNative();
        }
        return f34970a.m3848a(Class.forName(str).asSubclass(CustomEventNative.class));
    }

    @Deprecated
    public static void setInstance(CustomEventNativeFactory customEventNativeFactory) {
        Preconditions.checkNotNull(customEventNativeFactory);
        f34970a = customEventNativeFactory;
    }

    /* renamed from: a */
    public CustomEventNative m3848a(Class<? extends CustomEventNative> cls) throws Exception {
        Preconditions.checkNotNull(cls);
        Constructor<? extends CustomEventNative> declaredConstructor = cls.getDeclaredConstructor(null);
        declaredConstructor.setAccessible(true);
        return (CustomEventNative) declaredConstructor.newInstance(new Object[0]);
    }
}
