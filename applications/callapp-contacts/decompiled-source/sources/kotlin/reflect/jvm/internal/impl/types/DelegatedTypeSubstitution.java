package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/DelegatedTypeSubstitution.class */
public class DelegatedTypeSubstitution extends TypeSubstitution {
    private final TypeSubstitution substitution;

    public DelegatedTypeSubstitution(TypeSubstitution substitution) {
        p.d(substitution, "substitution");
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
    public g filterAnnotations(g annotations) {
        p.d(annotations, "annotations");
        return this.substitution.filterAnnotations(annotations);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public TypeProjection get(KotlinType key) {
        p.d(key, "key");
        return this.substitution.get(key);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public boolean isEmpty() {
        return this.substitution.isEmpty();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public KotlinType prepareTopLevelType(KotlinType topLevelType, Variance position) {
        p.d(topLevelType, "topLevelType");
        p.d(position, "position");
        return this.substitution.prepareTopLevelType(topLevelType, position);
    }
}
