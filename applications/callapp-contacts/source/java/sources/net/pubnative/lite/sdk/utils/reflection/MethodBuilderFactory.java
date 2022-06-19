package net.pubnative.lite.sdk.utils.reflection;

import net.pubnative.lite.sdk.utils.reflection.ReflectionUtils;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/reflection/MethodBuilderFactory.class */
public class MethodBuilderFactory {
    protected static MethodBuilderFactory instance = new MethodBuilderFactory();

    public static ReflectionUtils.MethodBuilder create(Object obj, String str) {
        return instance.internalCreate(obj, str);
    }

    @Deprecated
    public static void setInstance(MethodBuilderFactory methodBuilderFactory) {
        instance = methodBuilderFactory;
    }

    protected ReflectionUtils.MethodBuilder internalCreate(Object obj, String str) {
        return new ReflectionUtils.MethodBuilder(obj, str);
    }
}
