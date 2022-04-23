package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a.c;
import kotlin.reflect.jvm.internal.impl.descriptors.ax;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy.class */
public interface TypeAliasExpansionReportStrategy {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy$DO_NOTHING.class */
    public static final class DO_NOTHING implements TypeAliasExpansionReportStrategy {
        public static final DO_NOTHING INSTANCE = new DO_NOTHING();

        private DO_NOTHING() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeAliasExpansionReportStrategy
        public final void boundsViolationInSubstitution(KotlinType bound, KotlinType unsubstitutedArgument, KotlinType argument, TypeParameterDescriptor typeParameter) {
            p.d(bound, "bound");
            p.d(unsubstitutedArgument, "unsubstitutedArgument");
            p.d(argument, "argument");
            p.d(typeParameter, "typeParameter");
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeAliasExpansionReportStrategy
        public final void conflictingProjection(ax typeAlias, TypeParameterDescriptor typeParameterDescriptor, KotlinType substitutedArgument) {
            p.d(typeAlias, "typeAlias");
            p.d(substitutedArgument, "substitutedArgument");
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeAliasExpansionReportStrategy
        public final void recursiveTypeAlias(ax typeAlias) {
            p.d(typeAlias, "typeAlias");
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeAliasExpansionReportStrategy
        public final void repeatedAnnotation(c annotation) {
            p.d(annotation, "annotation");
        }
    }

    void boundsViolationInSubstitution(KotlinType kotlinType, KotlinType kotlinType2, KotlinType kotlinType3, TypeParameterDescriptor typeParameterDescriptor);

    void conflictingProjection(ax axVar, TypeParameterDescriptor typeParameterDescriptor, KotlinType kotlinType);

    void recursiveTypeAlias(ax axVar);

    void repeatedAnnotation(c cVar);
}
