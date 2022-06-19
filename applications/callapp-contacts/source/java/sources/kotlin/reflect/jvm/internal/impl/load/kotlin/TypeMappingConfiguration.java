package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.Collection;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfiguration.class */
public interface TypeMappingConfiguration<T> {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfiguration$DefaultImpls.class */
    public static final class DefaultImpls {
        public static <T> String getPredefinedFullInternalNameForClass(TypeMappingConfiguration<? extends T> typeMappingConfiguration, AbstractC19070d classDescriptor) {
            C18524p.m3840d(typeMappingConfiguration, "this");
            C18524p.m3840d(classDescriptor, "classDescriptor");
            return null;
        }

        public static <T> KotlinType preprocessType(TypeMappingConfiguration<? extends T> typeMappingConfiguration, KotlinType kotlinType) {
            C18524p.m3840d(typeMappingConfiguration, "this");
            C18524p.m3840d(kotlinType, "kotlinType");
            return null;
        }

        public static <T> boolean releaseCoroutines(TypeMappingConfiguration<? extends T> typeMappingConfiguration) {
            C18524p.m3840d(typeMappingConfiguration, "this");
            return true;
        }
    }

    KotlinType commonSupertype(Collection<KotlinType> collection);

    String getPredefinedFullInternalNameForClass(AbstractC19070d abstractC19070d);

    String getPredefinedInternalNameForClass(AbstractC19070d abstractC19070d);

    T getPredefinedTypeForClass(AbstractC19070d abstractC19070d);

    KotlinType preprocessType(KotlinType kotlinType);

    void processErrorType(KotlinType kotlinType, AbstractC19070d abstractC19070d);

    boolean releaseCoroutines();
}
