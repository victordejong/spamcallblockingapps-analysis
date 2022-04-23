package com.mopub.common.factories;

import com.mopub.common.util.Reflection;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/factories/MethodBuilderFactory.class */
public class MethodBuilderFactory {

    /* renamed from: a  reason: collision with root package name */
    protected static MethodBuilderFactory f33918a = new MethodBuilderFactory();

    public static Reflection.MethodBuilder create(Object obj, String str) {
        return new Reflection.MethodBuilder(obj, str);
    }

    @Deprecated
    public static void setInstance(MethodBuilderFactory methodBuilderFactory) {
        f33918a = methodBuilderFactory;
    }
}
