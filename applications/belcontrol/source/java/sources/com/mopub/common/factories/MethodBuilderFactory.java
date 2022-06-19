package com.mopub.common.factories;

import com.mopub.common.util.Reflection;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/factories/MethodBuilderFactory.class */
public class MethodBuilderFactory {

    /* renamed from: a */
    public static MethodBuilderFactory f4372a = new MethodBuilderFactory();

    public static Reflection.MethodBuilder create(Object obj, String str) {
        return f4372a.m3872a(obj, str);
    }

    @Deprecated
    public static void setInstance(MethodBuilderFactory methodBuilderFactory) {
        f4372a = methodBuilderFactory;
    }

    /* renamed from: a */
    public Reflection.MethodBuilder m3872a(Object obj, String str) {
        return new Reflection.MethodBuilder(obj, str);
    }
}
