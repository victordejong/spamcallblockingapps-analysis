package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayDeque;
import java.util.Set;
import kotlin.C20130x;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
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
        if (abstractTypeCheckerContext.isStubTypeEqualsToAnything() && abstractTypeCheckerContext.isStubType(simpleTypeMarker)) {
            return true;
        }
        return abstractTypeCheckerContext.areEqualTypeConstructors(abstractTypeCheckerContext.typeConstructor(simpleTypeMarker), typeConstructorMarker);
    }

    private final boolean runIsPossibleSubtype(AbstractTypeCheckerContext abstractTypeCheckerContext, SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2) {
        if (AbstractTypeChecker.RUN_SLOW_ASSERTIONS) {
            boolean z = abstractTypeCheckerContext.isSingleClassifierType(simpleTypeMarker) || abstractTypeCheckerContext.isIntersection(abstractTypeCheckerContext.typeConstructor(simpleTypeMarker)) || abstractTypeCheckerContext.isAllowedTypeVariable(simpleTypeMarker);
            if (C20130x.f66532a && !z) {
                throw new AssertionError(C18524p.m3847a("Not singleClassifierType and not intersection subType: ", (Object) simpleTypeMarker));
            }
            boolean z2 = abstractTypeCheckerContext.isSingleClassifierType(simpleTypeMarker2) || abstractTypeCheckerContext.isAllowedTypeVariable(simpleTypeMarker2);
            if (C20130x.f66532a && !z2) {
                throw new AssertionError(C18524p.m3847a("Not singleClassifierType superType: ", (Object) simpleTypeMarker2));
            }
        }
        if (!abstractTypeCheckerContext.isMarkedNullable(simpleTypeMarker2) && !abstractTypeCheckerContext.isDefinitelyNotNullType(simpleTypeMarker)) {
            if (((simpleTypeMarker instanceof CapturedTypeMarker) && abstractTypeCheckerContext.isProjectionNotNull((CapturedTypeMarker) simpleTypeMarker)) || hasNotNullSupertype(abstractTypeCheckerContext, simpleTypeMarker, AbstractTypeCheckerContext.SupertypesPolicy.LowerIfFlexible.INSTANCE)) {
                return true;
            }
            if (abstractTypeCheckerContext.isDefinitelyNotNullType(simpleTypeMarker2) || hasNotNullSupertype(abstractTypeCheckerContext, simpleTypeMarker2, AbstractTypeCheckerContext.SupertypesPolicy.UpperIfFlexible.INSTANCE) || abstractTypeCheckerContext.isClassType(simpleTypeMarker)) {
                return false;
            }
            return hasPathByNotMarkedNullableNodes(abstractTypeCheckerContext, simpleTypeMarker, abstractTypeCheckerContext.typeConstructor(simpleTypeMarker2));
        }
        return true;
    }

    public final boolean hasNotNullSupertype(AbstractTypeCheckerContext abstractTypeCheckerContext, SimpleTypeMarker type, AbstractTypeCheckerContext.SupertypesPolicy supertypesPolicy) {
        C18524p.m3840d(abstractTypeCheckerContext, "<this>");
        C18524p.m3840d(type, "type");
        C18524p.m3840d(supertypesPolicy, "supertypesPolicy");
        if ((abstractTypeCheckerContext.isClassType(type) && !abstractTypeCheckerContext.isMarkedNullable(type)) || abstractTypeCheckerContext.isDefinitelyNotNullType(type)) {
            return true;
        }
        abstractTypeCheckerContext.initialize();
        ArrayDeque<SimpleTypeMarker> supertypesDeque = abstractTypeCheckerContext.getSupertypesDeque();
        C18524p.m3851a(supertypesDeque);
        Set<SimpleTypeMarker> supertypesSet = abstractTypeCheckerContext.getSupertypesSet();
        C18524p.m3851a(supertypesSet);
        supertypesDeque.push(type);
        while (!supertypesDeque.isEmpty()) {
            if (supertypesSet.size() > 1000) {
                throw new IllegalStateException(("Too many supertypes for type: " + type + ". Supertypes = " + C18282n.m4148a(supertypesSet, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 63)).toString());
            }
            SimpleTypeMarker current = supertypesDeque.pop();
            C18524p.m3843b(current, "current");
            if (supertypesSet.add(current)) {
                AbstractTypeCheckerContext.SupertypesPolicy.None none = abstractTypeCheckerContext.isMarkedNullable(current) ? AbstractTypeCheckerContext.SupertypesPolicy.None.INSTANCE : supertypesPolicy;
                if (!(!C18524p.m3850a(none, AbstractTypeCheckerContext.SupertypesPolicy.None.INSTANCE))) {
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
        }
        abstractTypeCheckerContext.clear();
        return false;
    }

    public final boolean hasPathByNotMarkedNullableNodes(AbstractTypeCheckerContext abstractTypeCheckerContext, SimpleTypeMarker start, TypeConstructorMarker end) {
        C18524p.m3840d(abstractTypeCheckerContext, "<this>");
        C18524p.m3840d(start, "start");
        C18524p.m3840d(end, "end");
        if (isApplicableAsEndNode(abstractTypeCheckerContext, start, end)) {
            return true;
        }
        abstractTypeCheckerContext.initialize();
        ArrayDeque<SimpleTypeMarker> supertypesDeque = abstractTypeCheckerContext.getSupertypesDeque();
        C18524p.m3851a(supertypesDeque);
        Set<SimpleTypeMarker> supertypesSet = abstractTypeCheckerContext.getSupertypesSet();
        C18524p.m3851a(supertypesSet);
        supertypesDeque.push(start);
        while (!supertypesDeque.isEmpty()) {
            if (supertypesSet.size() > 1000) {
                throw new IllegalStateException(("Too many supertypes for type: " + start + ". Supertypes = " + C18282n.m4148a(supertypesSet, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 63)).toString());
            }
            SimpleTypeMarker current = supertypesDeque.pop();
            C18524p.m3843b(current, "current");
            if (supertypesSet.add(current)) {
                AbstractTypeCheckerContext.SupertypesPolicy supertypesPolicy = abstractTypeCheckerContext.isMarkedNullable(current) ? AbstractTypeCheckerContext.SupertypesPolicy.None.INSTANCE : AbstractTypeCheckerContext.SupertypesPolicy.LowerIfFlexible.INSTANCE;
                if (!(!C18524p.m3850a(supertypesPolicy, AbstractTypeCheckerContext.SupertypesPolicy.None.INSTANCE))) {
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
        }
        abstractTypeCheckerContext.clear();
        return false;
    }

    public final boolean isPossibleSubtype(AbstractTypeCheckerContext context, SimpleTypeMarker subType, SimpleTypeMarker superType) {
        C18524p.m3840d(context, "context");
        C18524p.m3840d(subType, "subType");
        C18524p.m3840d(superType, "superType");
        return runIsPossibleSubtype(context, subType, superType);
    }
}
