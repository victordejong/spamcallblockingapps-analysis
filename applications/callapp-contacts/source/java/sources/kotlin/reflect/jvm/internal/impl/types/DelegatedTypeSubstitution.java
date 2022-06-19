package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/DelegatedTypeSubstitution.class */
public class DelegatedTypeSubstitution extends TypeSubstitution {
    private final TypeSubstitution substitution;

    public DelegatedTypeSubstitution(TypeSubstitution substitution) {
        C18524p.m3840d(substitution, "substitution");
        this.substitution = substitution;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public boolean approximateCapturedTypes() {
        return this.substitution.approximateCapturedTypes();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public boolean approximateContravariantCapturedTypes() {
        return this.substitution.approximateContravariantCapturedTypes();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public AbstractC18983g filterAnnotations(AbstractC18983g annotations) {
        C18524p.m3840d(annotations, "annotations");
        return this.substitution.filterAnnotations(annotations);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public TypeProjection get(KotlinType key) {
        C18524p.m3840d(key, "key");
        return this.substitution.get(key);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public boolean isEmpty() {
        return this.substitution.isEmpty();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public KotlinType prepareTopLevelType(KotlinType topLevelType, Variance position) {
        C18524p.m3840d(topLevelType, "topLevelType");
        C18524p.m3840d(position, "position");
        return this.substitution.prepareTopLevelType(topLevelType, position);
    }
}
