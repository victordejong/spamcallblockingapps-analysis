package com.mopub.common.factories;

import com.mopub.common.util.Reflection;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/factories/MethodBuilderFactory.class */
public class MethodBuilderFactory {

    /* renamed from: a */
    protected static MethodBuilderFactory f58864a = new MethodBuilderFactory();

    public static Reflection.MethodBuilder create(Object obj, String str) {
        return new Reflection.MethodBuilder(obj, str);
    }

    @Deprecated
    public static void setInstance(MethodBuilderFactory methodBuilderFactory) {
        f58864a = methodBuilderFactory;
    }
}
