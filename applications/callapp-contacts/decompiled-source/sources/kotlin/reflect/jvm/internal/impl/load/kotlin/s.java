package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/s.class */
public final class s {
    public static final String a(v vVar, d classDescriptor, String jvmDescriptor) {
        p.d(vVar, "<this>");
        p.d(classDescriptor, "classDescriptor");
        p.d(jvmDescriptor, "jvmDescriptor");
        return v.a(t.a(classDescriptor), jvmDescriptor);
    }
}
