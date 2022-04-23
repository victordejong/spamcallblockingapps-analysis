package com.aotter.net.trek.common.factories;

import com.aotter.net.trek.common.util.Reflection;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/factories/MethodBuilderFactory.class */
public class MethodBuilderFactory {

    /* renamed from: a */
    public static MethodBuilderFactory f1517a = new MethodBuilderFactory();

    public static Reflection.MethodBuilder create(Object obj, String str) {
        return f1517a.m36349a(obj, str);
    }

    @Deprecated
    public static void setInstance(MethodBuilderFactory methodBuilderFactory) {
        f1517a = methodBuilderFactory;
    }

    /* renamed from: a */
    public Reflection.MethodBuilder m36349a(Object obj, String str) {
        return new Reflection.MethodBuilder(obj, str);
    }
}
