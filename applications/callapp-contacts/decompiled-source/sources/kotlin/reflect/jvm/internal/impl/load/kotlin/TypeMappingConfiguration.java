package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.Collection;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfiguration.class */
public interface TypeMappingConfiguration<T> {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfiguration$DefaultImpls.class */
    public static final class DefaultImpls {
        public static <T> String getPredefinedFullInternalNameForClass(TypeMappingConfiguration<? extends T> typeMappingConfiguration, d classDescriptor) {
            p.d(typeMappingConfiguration, "this");
            p.d(classDescriptor, "classDescriptor");
            return null;
        }

        public static <T> KotlinType preprocessType(TypeMappingConfiguration<? extends T> typeMappingConfiguration, KotlinType kotlinType) {
            p.d(typeMappingConfiguration, "this");
            p.d(kotlinType, "kotlinType");
            return null;
        }

        public static <T> boolean releaseCoroutines(TypeMappingConfiguration<? extends T> typeMappingConfiguration) {
            p.d(typeMappingConfiguration, "this");
            return true;
        }
    }

    KotlinType commonSupertype(Collection<KotlinType> collection);

    String getPredefinedFullInternalNameForClass(d dVar);

    String getPredefinedInternalNameForClass(d dVar);

    T getPredefinedTypeForClass(d dVar);

    KotlinType preprocessType(KotlinType kotlinType);

    void processErrorType(KotlinType kotlinType, d dVar);

    boolean releaseCoroutines();
}
