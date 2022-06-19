package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19033ax;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy.class */
public interface TypeAliasExpansionReportStrategy {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy$DO_NOTHING.class */
    public static final class DO_NOTHING implements TypeAliasExpansionReportStrategy {
        public static final DO_NOTHING INSTANCE = new DO_NOTHING();

        private DO_NOTHING() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeAliasExpansionReportStrategy
        public final void boundsViolationInSubstitution(KotlinType bound, KotlinType unsubstitutedArgument, KotlinType argument, TypeParameterDescriptor typeParameter) {
            C18524p.m3840d(bound, "bound");
            C18524p.m3840d(unsubstitutedArgument, "unsubstitutedArgument");
            C18524p.m3840d(argument, "argument");
            C18524p.m3840d(typeParameter, "typeParameter");
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeAliasExpansionReportStrategy
        public final void conflictingProjection(AbstractC19033ax typeAlias, TypeParameterDescriptor typeParameterDescriptor, KotlinType substitutedArgument) {
            C18524p.m3840d(typeAlias, "typeAlias");
            C18524p.m3840d(substitutedArgument, "substitutedArgument");
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeAliasExpansionReportStrategy
        public final void recursiveTypeAlias(AbstractC19033ax typeAlias) {
            C18524p.m3840d(typeAlias, "typeAlias");
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeAliasExpansionReportStrategy
        public final void repeatedAnnotation(AbstractC18977c annotation) {
            C18524p.m3840d(annotation, "annotation");
        }
    }

    void boundsViolationInSubstitution(KotlinType kotlinType, KotlinType kotlinType2, KotlinType kotlinType3, TypeParameterDescriptor typeParameterDescriptor);

    void conflictingProjection(AbstractC19033ax abstractC19033ax, TypeParameterDescriptor typeParameterDescriptor, KotlinType kotlinType);

    void recursiveTypeAlias(AbstractC19033ax abstractC19033ax);

    void repeatedAnnotation(AbstractC18977c abstractC18977c);
}
