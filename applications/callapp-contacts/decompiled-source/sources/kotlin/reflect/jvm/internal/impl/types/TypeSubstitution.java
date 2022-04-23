package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeSubstitution.class */
public abstract class TypeSubstitution {
    public static final Companion Companion = new Companion(null);
    public static final TypeSubstitution EMPTY = new TypeSubstitution() { // from class: kotlin.reflect.jvm.internal.impl.types.TypeSubstitution$Companion$EMPTY$1
        @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
        public final Void get(KotlinType key) {
            p.d(key, "key");
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
        public final boolean isEmpty() {
            return true;
        }

        public final String toString() {
            return "Empty TypeSubstitution";
        }
    };

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeSubstitution$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public boolean approximateCapturedTypes() {
        return false;
    }

    public boolean approximateContravariantCapturedTypes() {
        return false;
    }

    public final TypeSubstitutor buildSubstitutor() {
        TypeSubstitutor create = TypeSubstitutor.create(this);
        p.b(create, "create(this)");
        return create;
    }

    public g filterAnnotations(g annotations) {
        p.d(annotations, "annotations");
        return annotations;
    }

    public abstract TypeProjection get(KotlinType kotlinType);

    public boolean isEmpty() {
        return false;
    }

    public KotlinType prepareTopLevelType(KotlinType topLevelType, Variance position) {
        p.d(topLevelType, "topLevelType");
        p.d(position, "position");
        return topLevelType;
    }
}
