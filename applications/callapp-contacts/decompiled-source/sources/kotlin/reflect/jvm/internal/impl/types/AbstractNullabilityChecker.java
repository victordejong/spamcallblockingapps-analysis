package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayDeque;
import java.util.Set;
import kotlin.a.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractNullabilityChecker.class */
public final class AbstractNullabilityChecker {
    public static final AbstractNullabilityChecker INSTANCE = new AbstractNullabilityChecker();

    private AbstractNullabilityChecker() {
    }

    private final boolean isApplicableAsEndNode(AbstractTypeCheckerContext abstractTypeCheckerContext, SimpleTypeMarker simpleTypeMarker, TypeConstructorMarker typeConstructorMarker) {
        if (abstractTypeCheckerContext.isNothing(simpleTypeMarker)) {
            return true;
        }
        if (abstractTypeCheckerContext.isMarkedNullable(simpleTypeMarker)) {
            return false;
        }
        if (!abstractTypeCheckerContext.isStubTypeEqualsToAnything() || !abstractTypeCheckerContext.isStubType(simpleTypeMarker)) {
            return abstractTypeCheckerContext.areEqualTypeConstructors(abstractTypeCheckerContext.typeConstructor(simpleTypeMarker), typeConstructorMarker);
        }
        return true;
    }

    private final boolean runIsPossibleSubtype(AbstractTypeCheckerContext abstractTypeCheckerContext, SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2) {
        if (AbstractTypeChecker.RUN_SLOW_ASSERTIONS) {
            boolean z = abstractTypeCheckerContext.isSingleClassifierType(simpleTypeMarker) || abstractTypeCheckerContext.isIntersection(abstractTypeCheckerContext.typeConstructor(simpleTypeMarker)) || abstractTypeCheckerContext.isAllowedTypeVariable(simpleTypeMarker);
            if (!x.f38657a || z) {
                boolean z2 = abstractTypeCheckerContext.isSingleClassifierType(simpleTypeMarker2) || abstractTypeCheckerContext.isAllowedTypeVariable(simpleTypeMarker2);
                if (x.f38657a && !z2) {
                    throw new AssertionError(p.a("Not singleClassifierType superType: ", (Object) simpleTypeMarker2));
                }
            } else {
                throw new AssertionError(p.a("Not singleClassifierType and not intersection subType: ", (Object) simpleTypeMarker));
            }
        }
        if (abstractTypeCheckerContext.isMarkedNullable(simpleTypeMarker2) || abstractTypeCheckerContext.isDefinitelyNotNullType(simpleTypeMarker)) {
            return true;
        }
        if (((simpleTypeMarker instanceof CapturedTypeMarker) && abstractTypeCheckerContext.isProjectionNotNull((CapturedTypeMarker) simpleTypeMarker)) || hasNotNullSupertype(abstractTypeCheckerContext, simpleTypeMarker, AbstractTypeCheckerContext.SupertypesPolicy.LowerIfFlexible.INSTANCE)) {
            return true;
        }
        if (!abstractTypeCheckerContext.isDefinitelyNotNullType(simpleTypeMarker2) && !hasNotNullSupertype(abstractTypeCheckerContext, simpleTypeMarker2, AbstractTypeCheckerContext.SupertypesPolicy.UpperIfFlexible.INSTANCE) && !abstractTypeCheckerContext.isClassType(simpleTypeMarker)) {
            return hasPathByNotMarkedNullableNodes(abstractTypeCheckerContext, simpleTypeMarker, abstractTypeCheckerContext.typeConstructor(simpleTypeMarker2));
        }
        return false;
    }

    public final boolean hasNotNullSupertype(AbstractTypeCheckerContext abstractTypeCheckerContext, SimpleTypeMarker type, AbstractTypeCheckerContext.SupertypesPolicy supertypesPolicy) {
        p.d(abstractTypeCheckerContext, "<this>");
        p.d(type, "type");
        p.d(supertypesPolicy, "supertypesPolicy");
        if ((abstractTypeCheckerContext.isClassType(type) && !abstractTypeCheckerContext.isMarkedNullable(type)) || abstractTypeCheckerContext.isDefinitelyNotNullType(type)) {
            return true;
        }
        abstractTypeCheckerContext.initialize();
        ArrayDeque<SimpleTypeMarker> supertypesDeque = abstractTypeCheckerContext.getSupertypesDeque();
        p.a(supertypesDeque);
        Set<SimpleTypeMarker> supertypesSet = abstractTypeCheckerContext.getSupertypesSet();
        p.a(supertypesSet);
        supertypesDeque.push(type);
        while (!supertypesDeque.isEmpty()) {
            if (supertypesSet.size() <= 1000) {
                SimpleTypeMarker current = supertypesDeque.pop();
                p.b(current, "current");
                if (supertypesSet.add(current)) {
                    AbstractTypeCheckerContext.SupertypesPolicy.None none = abstractTypeCheckerContext.isMarkedNullable(current) ? AbstractTypeCheckerContext.SupertypesPolicy.None.INSTANCE : supertypesPolicy;
                    if (!(!p.a(none, AbstractTypeCheckerContext.SupertypesPolicy.None.INSTANCE))) {
                        none = null;
                    }
                    if (none != null) {
                        for (KotlinTypeMarker kotlinTypeMarker : abstractTypeCheckerContext.supertypes(abstractTypeCheckerContext.typeConstructor(current))) {
                            SimpleTypeMarker transformType = none.transformType(abstractTypeCheckerContext, kotlinTypeMarker);
                            if ((abstractTypeCheckerContext.isClassType(transformType) && !abstractTypeCheckerContext.isMarkedNullable(transformType)) || abstractTypeCheckerContext.isDefinitelyNotNullType(transformType)) {
                                abstractTypeCheckerContext.clear();
                                return true;
                            }
                            supertypesDeque.add(transformType);
                        }
                        continue;
                    } else {
                        continue;
                    }
                }
            } else {
                throw new IllegalStateException(("Too many supertypes for type: " + type + ". Supertypes = " + n.a(supertypesSet, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 63)).toString());
            }
        }
        abstractTypeCheckerContext.clear();
        return false;
    }

    public final boolean hasPathByNotMarkedNullableNodes(AbstractTypeCheckerContext abstractTypeCheckerContext, SimpleTypeMarker start, TypeConstructorMarker end) {
        p.d(abstractTypeCheckerContext, "<this>");
        p.d(start, "start");
        p.d(end, "end");
        if (isApplicableAsEndNode(abstractTypeCheckerContext, start, end)) {
            return true;
        }
        abstractTypeCheckerContext.initialize();
        ArrayDeque<SimpleTypeMarker> supertypesDeque = abstractTypeCheckerContext.getSupertypesDeque();
        p.a(supertypesDeque);
        Set<SimpleTypeMarker> supertypesSet = abstractTypeCheckerContext.getSupertypesSet();
        p.a(supertypesSet);
        supertypesDeque.push(start);
        while (!supertypesDeque.isEmpty()) {
            if (supertypesSet.size() <= 1000) {
                SimpleTypeMarker current = supertypesDeque.pop();
                p.b(current, "current");
                if (supertypesSet.add(current)) {
                    AbstractTypeCheckerContext.SupertypesPolicy supertypesPolicy = abstractTypeCheckerContext.isMarkedNullable(current) ? AbstractTypeCheckerContext.SupertypesPolicy.None.INSTANCE : AbstractTypeCheckerContext.SupertypesPolicy.LowerIfFlexible.INSTANCE;
                    if (!(!p.a(supertypesPolicy, AbstractTypeCheckerContext.SupertypesPolicy.None.INSTANCE))) {
                        supertypesPolicy = null;
                    }
                    if (supertypesPolicy != null) {
                        for (KotlinTypeMarker kotlinTypeMarker : abstractTypeCheckerContext.supertypes(abstractTypeCheckerContext.typeConstructor(current))) {
                            SimpleTypeMarker transformType = supertypesPolicy.transformType(abstractTypeCheckerContext, kotlinTypeMarker);
                            if (isApplicableAsEndNode(abstractTypeCheckerContext, transformType, end)) {
                                abstractTypeCheckerContext.clear();
                                return true;
                            }
                            supertypesDeque.add(transformType);
                        }
                        continue;
                    } else {
                        continue;
                    }
                }
            } else {
                throw new IllegalStateException(("Too many supertypes for type: " + start + ". Supertypes = " + n.a(supertypesSet, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 63)).toString());
            }
        }
        abstractTypeCheckerContext.clear();
        return false;
    }

    public final boolean isPossibleSubtype(AbstractTypeCheckerContext context, SimpleTypeMarker subType, SimpleTypeMarker superType) {
        p.d(context, "context");
        p.d(subType, "subType");
        p.d(superType, "superType");
        return runIsPossibleSubtype(context, subType, superType);
    }
}
