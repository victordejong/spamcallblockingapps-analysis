package kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins;

import java.io.InputStream;
import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/c.class */
public final class c {
    public final InputStream a(String path) {
        p.d(path, "path");
        ClassLoader classLoader = getClass().getClassLoader();
        InputStream resourceAsStream = classLoader == null ? null : classLoader.getResourceAsStream(path);
        return resourceAsStream == null ? ClassLoader.getSystemResourceAsStream(path) : resourceAsStream;
    }
}
