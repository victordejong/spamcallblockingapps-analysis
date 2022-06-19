package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeSubstitution.class */
public abstract class TypeSubstitution {
    public static final Companion Companion = new Companion(null);
    public static final TypeSubstitution EMPTY = new TypeSubstitution() { // from class: kotlin.reflect.jvm.internal.impl.types.TypeSubstitution$Companion$EMPTY$1
        @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
        public final Void get(KotlinType key) {
            C18524p.m3840d(key, "key");
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
        C18524p.m3843b(create, "create(this)");
        return create;
    }

    public AbstractC18983g filterAnnotations(AbstractC18983g annotations) {
        C18524p.m3840d(annotations, "annotations");
        return annotations;
    }

    public abstract TypeProjection get(KotlinType kotlinType);

    public boolean isEmpty() {
        return false;
    }

    public KotlinType prepareTopLevelType(KotlinType topLevelType, Variance position) {
        C18524p.m3840d(topLevelType, "topLevelType");
        C18524p.m3840d(position, "position");
        return topLevelType;
    }
}
