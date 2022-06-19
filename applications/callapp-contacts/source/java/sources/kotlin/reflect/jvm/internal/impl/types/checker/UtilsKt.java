package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayDeque;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.p553e.AbstractC19230c;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.C19768a;
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
        m53842debugInfo$lambda1$unaryPlus(C18524p.m3847a("type: ", (Object) typeConstructor), sb);
        m53842debugInfo$lambda1$unaryPlus(C18524p.m3847a("hashCode: ", (Object) Integer.valueOf(typeConstructor.hashCode())), sb);
        m53842debugInfo$lambda1$unaryPlus(C18524p.m3847a("javaClass: ", (Object) typeConstructor.getClass().getCanonicalName()), sb);
        AbstractC19129g declarationDescriptor = typeConstructor.getDeclarationDescriptor();
        while (true) {
            AbstractC19193k abstractC19193k = declarationDescriptor;
            if (abstractC19193k == null) {
                String sb2 = sb.toString();
                C18524p.m3843b(sb2, "StringBuilder().apply(builderAction).toString()");
                return sb2;
            }
            m53842debugInfo$lambda1$unaryPlus(C18524p.m3847a("fqName: ", (Object) AbstractC19230c.f65030g.mo2447a(abstractC19193k)), sb);
            m53842debugInfo$lambda1$unaryPlus(C18524p.m3847a("javaClass: ", (Object) abstractC19193k.getClass().getCanonicalName()), sb);
            declarationDescriptor = abstractC19193k.getContainingDeclaration();
        }
    }

    /* renamed from: debugInfo$lambda-1$unaryPlus */
    private static final StringBuilder m53842debugInfo$lambda1$unaryPlus(String str, StringBuilder this_anonymous) {
        C18524p.m3840d(str, "<this>");
        C18524p.m3840d(this_anonymous, "$this_anonymous");
        this_anonymous.append(str);
        C18524p.m3843b(this_anonymous, "append(value)");
        this_anonymous.append('\n');
        C18524p.m3843b(this_anonymous, "append('\\n')");
        return this_anonymous;
    }

    public static final KotlinType findCorrespondingSupertype(KotlinType subtype, KotlinType supertype, TypeCheckingProcedureCallbacks typeCheckingProcedureCallbacks) {
        TypeConstructor constructor;
        boolean z;
        C18524p.m3840d(subtype, "subtype");
        C18524p.m3840d(supertype, "supertype");
        C18524p.m3840d(typeCheckingProcedureCallbacks, "typeCheckingProcedureCallbacks");
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.add(new SubtypePathNode(subtype, null));
        TypeConstructor constructor2 = supertype.getConstructor();
        while (!arrayDeque.isEmpty()) {
            SubtypePathNode subtypePathNode = (SubtypePathNode) arrayDeque.poll();
            KotlinType type = subtypePathNode.getType();
            TypeConstructor constructor3 = type.getConstructor();
            if (typeCheckingProcedureCallbacks.assertEqualTypeConstructors(constructor3, constructor2)) {
                boolean isMarkedNullable = type.isMarkedNullable();
                SubtypePathNode previous = subtypePathNode.getPrevious();
                while (true) {
                    SubtypePathNode subtypePathNode2 = previous;
                    if (subtypePathNode2 == null) {
                        break;
                    }
                    KotlinType type2 = subtypePathNode2.getType();
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
                        KotlinType safeSubstitute = C19768a.m1495a(TypeConstructorSubstitution.Companion.create(type2)).buildSubstitutor().safeSubstitute(type, Variance.INVARIANT);
                        C18524p.m3843b(safeSubstitute, "TypeConstructorSubstitution.create(currentType)\n                            .wrapWithCapturingSubstitution().buildSubstitutor()\n                            .safeSubstitute(substituted, Variance.INVARIANT)");
                        type = approximate(safeSubstitute);
                    } else {
                        type = TypeConstructorSubstitution.Companion.create(type2).buildSubstitutor().safeSubstitute(type, Variance.INVARIANT);
                        C18524p.m3843b(type, "{\n                    TypeConstructorSubstitution.create(currentType)\n                            .buildSubstitutor()\n                            .safeSubstitute(substituted, Variance.INVARIANT)\n                }");
                    }
                    isMarkedNullable = isMarkedNullable || type2.isMarkedNullable();
                    previous = subtypePathNode2.getPrevious();
                }
                if (typeCheckingProcedureCallbacks.assertEqualTypeConstructors(type.getConstructor(), constructor2)) {
                    return TypeUtils.makeNullableAsSpecified(type, isMarkedNullable);
                }
                throw new AssertionError("Type constructors should be equals!\nsubstitutedSuperType: " + debugInfo(constructor) + ", \n\nsupertype: " + debugInfo(constructor2) + " \n" + typeCheckingProcedureCallbacks.assertEqualTypeConstructors(constructor, constructor2));
            }
            for (KotlinType immediateSupertype : constructor3.mo53752getSupertypes()) {
                C18524p.m3843b(immediateSupertype, "immediateSupertype");
                arrayDeque.add(new SubtypePathNode(immediateSupertype, subtypePathNode));
            }
        }
        return null;
    }
}
