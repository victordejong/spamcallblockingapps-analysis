package com.mopub.common.factories;

import com.mopub.common.util.Reflection;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/factories/MethodBuilderFactory.class */
public class MethodBuilderFactory {

    /* renamed from: a */
    public static MethodBuilderFactory f8618a = new MethodBuilderFactory();

    public static Reflection.MethodBuilder create(Object obj, String str) {
        Objects.requireNonNull(f8618a);
        return new Reflection.MethodBuilder(obj, str);
    }

    @Deprecated
    public static void setInstance(MethodBuilderFactory methodBuilderFactory) {
        f8618a = methodBuilderFactory;
    }
}
