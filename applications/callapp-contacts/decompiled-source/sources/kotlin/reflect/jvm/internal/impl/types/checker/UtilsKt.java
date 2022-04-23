package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayDeque;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.e.c;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.a;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.typesApproximation.CapturedTypeApproximationKt;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/UtilsKt.class */
public final class UtilsKt {
    private static final KotlinType approximate(KotlinType kotlinType) {
        return CapturedTypeApproximationKt.approximateCapturedTypes(kotlinType).getUpper();
    }

    private static final String debugInfo(TypeConstructor typeConstructor) {
        StringBuilder sb = new StringBuilder();
        m7461debugInfo$lambda1$unaryPlus(p.a("type: ", (Object) typeConstructor), sb);
        m7461debugInfo$lambda1$unaryPlus(p.a("hashCode: ", (Object) Integer.valueOf(typeConstructor.hashCode())), sb);
        m7461debugInfo$lambda1$unaryPlus(p.a("javaClass: ", (Object) typeConstructor.getClass().getCanonicalName()), sb);
        for (g declarationDescriptor = typeConstructor.getDeclarationDescriptor(); declarationDescriptor != null; declarationDescriptor = declarationDescriptor.getContainingDeclaration()) {
            m7461debugInfo$lambda1$unaryPlus(p.a("fqName: ", (Object) c.g.a(declarationDescriptor)), sb);
            m7461debugInfo$lambda1$unaryPlus(p.a("javaClass: ", (Object) declarationDescriptor.getClass().getCanonicalName()), sb);
        }
        String sb2 = sb.toString();
        p.b(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    /* renamed from: debugInfo$lambda-1$unaryPlus  reason: not valid java name */
    private static final StringBuilder m7461debugInfo$lambda1$unaryPlus(String str, StringBuilder this_anonymous) {
        p.d(str, "<this>");
        p.d(this_anonymous, "$this_anonymous");
        this_anonymous.append(str);
        p.b(this_anonymous, "append(value)");
        this_anonymous.append('\n');
        p.b(this_anonymous, "append('\\n')");
        return this_anonymous;
    }

    public static final KotlinType findCorrespondingSupertype(KotlinType subtype, KotlinType supertype, TypeCheckingProcedureCallbacks typeCheckingProcedureCallbacks) {
        boolean z;
        p.d(subtype, "subtype");
        p.d(supertype, "supertype");
        p.d(typeCheckingProcedureCallbacks, "typeCheckingProcedureCallbacks");
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.add(new SubtypePathNode(subtype, null));
        TypeConstructor constructor = supertype.getConstructor();
        while (!arrayDeque.isEmpty()) {
            SubtypePathNode subtypePathNode = (SubtypePathNode) arrayDeque.poll();
            KotlinType type = subtypePathNode.getType();
            TypeConstructor constructor2 = type.getConstructor();
            if (typeCheckingProcedureCallbacks.assertEqualTypeConstructors(constructor2, constructor)) {
                boolean isMarkedNullable = type.isMarkedNullable();
                for (SubtypePathNode previous = subtypePathNode.getPrevious(); previous != null; previous = previous.getPrevious()) {
                    KotlinType type2 = previous.getType();
                    List<TypeProjection> arguments = type2.getArguments();
                    if (!(arguments instanceof Collection) || !arguments.isEmpty()) {
                        for (TypeProjection typeProjection : arguments) {
                            if (typeProjection.getProjectionKind() != Variance.INVARIANT) {
                                z = true;
                                break;
                            }
                        }
                    }
                    z = false;
                    if (z) {
                        KotlinType safeSubstitute = a.a(TypeConstructorSubstitution.Companion.create(type2)).buildSubstitutor().safeSubstitute(type, Variance.INVARIANT);
                        p.b(safeSubstitute, "TypeConstructorSubstitution.create(currentType)\n                            .wrapWithCapturingSubstitution().buildSubstitutor()\n                            .safeSubstitute(substituted, Variance.INVARIANT)");
                        type = approximate(safeSubstitute);
                    } else {
                        type = TypeConstructorSubstitution.Companion.create(type2).buildSubstitutor().safeSubstitute(type, Variance.INVARIANT);
                        p.b(type, "{\n                    TypeConstructorSubstitution.create(currentType)\n                            .buildSubstitutor()\n                            .safeSubstitute(substituted, Variance.INVARIANT)\n                }");
                    }
                    isMarkedNullable = isMarkedNullable || type2.isMarkedNullable();
                }
                TypeConstructor constructor3 = type.getConstructor();
                if (typeCheckingProcedureCallbacks.assertEqualTypeConstructors(constructor3, constructor)) {
                    return TypeUtils.makeNullableAsSpecified(type, isMarkedNullable);
                }
                throw new AssertionError("Type constructors should be equals!\nsubstitutedSuperType: " + debugInfo(constructor3) + ", \n\nsupertype: " + debugInfo(constructor) + " \n" + typeCheckingProcedureCallbacks.assertEqualTypeConstructors(constructor3, constructor));
            }
            for (KotlinType immediateSupertype : constructor2.mo7371getSupertypes()) {
                p.b(immediateSupertype, "immediateSupertype");
                arrayDeque.add(new SubtypePathNode(immediateSupertype, subtypePathNode));
            }
        }
        return null;
    }
}
