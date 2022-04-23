package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/DisjointKeysUnionTypeSubstitution.class */
public final class DisjointKeysUnionTypeSubstitution extends TypeSubstitution {
    public static final Companion Companion = new Companion(null);
    private final TypeSubstitution first;
    private final TypeSubstitution second;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/DisjointKeysUnionTypeSubstitution$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final TypeSubstitution create(TypeSubstitution first, TypeSubstitution second) {
            p.d(first, "first");
            p.d(second, "second");
            return first.isEmpty() ? second : second.isEmpty() ? first : new DisjointKeysUnionTypeSubstitution(first, second, null);
        }
    }

    private DisjointKeysUnionTypeSubstitution(TypeSubstitution typeSubstitution, TypeSubstitution typeSubstitution2) {
        this.first = typeSubstitution;
        this.second = typeSubstitution2;
    }

    public /* synthetic */ DisjointKeysUnionTypeSubstitution(TypeSubstitution typeSubstitution, TypeSubstitution typeSubstitution2, DefaultConstructorMarker defaultConstructorMarker) {
        this(typeSubstitution, typeSubstitution2);
    }

    public static final TypeSubstitution create(TypeSubstitution typeSubstitution, TypeSubstitution typeSubstitution2) {
        return Companion.create(typeSubstitution, typeSubstitution2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final boolean approximateCapturedTypes() {
        return this.first.approximateCapturedTypes() || this.second.approximateCapturedTypes();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final boolean approximateContravariantCapturedTypes() {
        return this.first.approximateContravariantCapturedTypes() || this.second.approximateContravariantCapturedTypes();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final g filterAnnotations(g annotations) {
        p.d(annotations, "annotations");
        return this.second.filterAnnotations(this.first.filterAnnotations(annotations));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final TypeProjection get(KotlinType key) {
        p.d(key, "key");
        TypeProjection typeProjection = this.first.get(key);
        return typeProjection == null ? this.second.get(key) : typeProjection;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final boolean isEmpty() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public final KotlinType prepareTopLevelType(KotlinType topLevelType, Variance position) {
        p.d(topLevelType, "topLevelType");
        p.d(position, "position");
        return this.second.prepareTopLevelType(this.first.prepareTopLevelType(topLevelType, position), position);
    }
}
