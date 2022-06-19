package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.Collection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfigurationImpl.class */
public final class TypeMappingConfigurationImpl implements TypeMappingConfiguration<AbstractC19633j> {
    public static final TypeMappingConfigurationImpl INSTANCE = new TypeMappingConfigurationImpl();

    private TypeMappingConfigurationImpl() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration
    public final KotlinType commonSupertype(Collection<? extends KotlinType> types) {
        C18524p.m3840d(types, "types");
        throw new AssertionError(C18524p.m3847a("There should be no intersection type in existing descriptors, but found: ", (Object) C18282n.m4148a(types, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 63)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration
    public final String getPredefinedFullInternalNameForClass(AbstractC19070d abstractC19070d) {
        return TypeMappingConfiguration.DefaultImpls.getPredefinedFullInternalNameForClass(this, abstractC19070d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration
    public final String getPredefinedInternalNameForClass(AbstractC19070d classDescriptor) {
        C18524p.m3840d(classDescriptor, "classDescriptor");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration
    public final AbstractC19633j getPredefinedTypeForClass(AbstractC19070d classDescriptor) {
        C18524p.m3840d(classDescriptor, "classDescriptor");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration
    public final KotlinType preprocessType(KotlinType kotlinType) {
        return TypeMappingConfiguration.DefaultImpls.preprocessType(this, kotlinType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration
    public final void processErrorType(KotlinType kotlinType, AbstractC19070d descriptor) {
        C18524p.m3840d(kotlinType, "kotlinType");
        C18524p.m3840d(descriptor, "descriptor");
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration
    public final boolean releaseCoroutines() {
        return TypeMappingConfiguration.DefaultImpls.releaseCoroutines(this);
    }
}
