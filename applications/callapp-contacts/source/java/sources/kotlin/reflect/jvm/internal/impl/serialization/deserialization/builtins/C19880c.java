package kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins;

import java.io.InputStream;
import kotlin.jvm.internal.C18524p;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.c */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/c.class */
public final class C19880c {
    /* renamed from: a */
    public final InputStream m1365a(String path) {
        C18524p.m3840d(path, "path");
        ClassLoader classLoader = getClass().getClassLoader();
        InputStream resourceAsStream = classLoader == null ? null : classLoader.getResourceAsStream(path);
        return resourceAsStream == null ? ClassLoader.getSystemResourceAsStream(path) : resourceAsStream;
    }
}
