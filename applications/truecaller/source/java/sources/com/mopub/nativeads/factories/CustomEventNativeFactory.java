package com.mopub.nativeads.factories;

import com.mopub.common.Preconditions;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.MoPubCustomEventNative;
import java.lang.reflect.Constructor;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/factories/CustomEventNativeFactory.class */
public class CustomEventNativeFactory {

    /* renamed from: a */
    public static CustomEventNativeFactory f9146a = new CustomEventNativeFactory();

    public static CustomEventNative create(String str) throws Exception {
        if (str != null) {
            Class<? extends U> asSubclass = Class.forName(str).asSubclass(CustomEventNative.class);
            Objects.requireNonNull(f9146a);
            Preconditions.checkNotNull(asSubclass);
            Constructor declaredConstructor = asSubclass.getDeclaredConstructor(null);
            declaredConstructor.setAccessible(true);
            return (CustomEventNative) declaredConstructor.newInstance(new Object[0]);
        }
        return new MoPubCustomEventNative();
    }

    @Deprecated
    public static void setInstance(CustomEventNativeFactory customEventNativeFactory) {
        Preconditions.checkNotNull(customEventNativeFactory);
        f9146a = customEventNativeFactory;
    }
}
