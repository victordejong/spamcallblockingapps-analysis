package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.Collection;
import kotlin.a.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfigurationImpl.class */
public final class TypeMappingConfigurationImpl implements TypeMappingConfiguration<j> {
    public static final TypeMappingConfigurationImpl INSTANCE = new TypeMappingConfigurationImpl();

    private TypeMappingConfigurationImpl() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration
    public final KotlinType commonSupertype(Collection<? extends KotlinType> types) {
        p.d(types, "types");
        throw new AssertionError(p.a("There should be no intersection type in existing descriptors, but found: ", (Object) n.a(types, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 63)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration
    public final String getPredefinedFullInternalNameForClass(d dVar) {
        return TypeMappingConfiguration.DefaultImpls.getPredefinedFullInternalNameForClass(this, dVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration
    public final String getPredefinedInternalNameForClass(d classDescriptor) {
        p.d(classDescriptor, "classDescriptor");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration
    public final j getPredefinedTypeForClass(d classDescriptor) {
        p.d(classDescriptor, "classDescriptor");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration
    public final KotlinType preprocessType(KotlinType kotlinType) {
        return TypeMappingConfiguration.DefaultImpls.preprocessType(this, kotlinType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration
    public final void processErrorType(KotlinType kotlinType, d descriptor) {
        p.d(kotlinType, "kotlinType");
        p.d(descriptor, "descriptor");
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration
    public final boolean releaseCoroutines() {
        return TypeMappingConfiguration.DefaultImpls.releaseCoroutines(this);
    }
}
