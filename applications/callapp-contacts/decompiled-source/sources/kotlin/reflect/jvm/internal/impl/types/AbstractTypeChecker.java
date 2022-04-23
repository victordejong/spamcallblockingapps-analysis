package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.DefinitelyNotNullTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.IntersectionTypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentListMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariance;
import kotlin.reflect.jvm.internal.impl.utils.h;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker.class */
public final class AbstractTypeChecker {
    public static final AbstractTypeChecker INSTANCE = new AbstractTypeChecker();
    public static boolean RUN_SLOW_ASSERTIONS;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[TypeVariance.values().length];
            iArr[TypeVariance.INV.ordinal()] = 1;
            iArr[TypeVariance.OUT.ordinal()] = 2;
            iArr[TypeVariance.IN.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[AbstractTypeCheckerContext.LowerCapturedTypePolicy.values().length];
            iArr2[AbstractTypeCheckerContext.LowerCapturedTypePolicy.CHECK_ONLY_LOWER.ordinal()] = 1;
            iArr2[AbstractTypeCheckerContext.LowerCapturedTypePolicy.CHECK_SUBTYPE_AND_LOWER.ordinal()] = 2;
            iArr2[AbstractTypeCheckerContext.LowerCapturedTypePolicy.SKIP_LOWER.ordinal()] = 3;
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    private AbstractTypeChecker() {
    }

    private final Boolean checkSubtypeForIntegerLiteralType(AbstractTypeCheckerContext abstractTypeCheckerContext, SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2) {
        if (!abstractTypeCheckerContext.isIntegerLiteralType(simpleTypeMarker) && !abstractTypeCheckerContext.isIntegerLiteralType(simpleTypeMarker2)) {
            return null;
        }
        if (abstractTypeCheckerContext.isIntegerLiteralType(simpleTypeMarker) && abstractTypeCheckerContext.isIntegerLiteralType(simpleTypeMarker2)) {
            return Boolean.TRUE;
        }
        if (abstractTypeCheckerContext.isIntegerLiteralType(simpleTypeMarker)) {
            if (checkSubtypeForIntegerLiteralType$isTypeInIntegerLiteralType(abstractTypeCheckerContext, this, simpleTypeMarker, simpleTypeMarker2, false)) {
                return Boolean.TRUE;
            }
            return null;
        } else if (!abstractTypeCheckerContext.isIntegerLiteralType(simpleTypeMarker2)) {
            return null;
        } else {
            if (checkSubtypeForIntegerLiteralType$isIntegerLiteralTypeInIntersectionComponents(abstractTypeCheckerContext, simpleTypeMarker) || checkSubtypeForIntegerLiteralType$isTypeInIntegerLiteralType(abstractTypeCheckerContext, this, simpleTypeMarker2, simpleTypeMarker, true)) {
                return Boolean.TRUE;
            }
            return null;
        }
    }

    private static final boolean checkSubtypeForIntegerLiteralType$isIntegerLiteralTypeInIntersectionComponents(AbstractTypeCheckerContext abstractTypeCheckerContext, SimpleTypeMarker simpleTypeMarker) {
        boolean z;
        TypeConstructorMarker typeConstructor = abstractTypeCheckerContext.typeConstructor(simpleTypeMarker);
        if (!(typeConstructor instanceof IntersectionTypeConstructorMarker)) {
            return false;
        }
        Collection<KotlinTypeMarker> supertypes = abstractTypeCheckerContext.supertypes(typeConstructor);
        if (!(supertypes instanceof Collection) || !supertypes.isEmpty()) {
            for (KotlinTypeMarker kotlinTypeMarker : supertypes) {
                SimpleTypeMarker asSimpleType = abstractTypeCheckerContext.asSimpleType(kotlinTypeMarker);
                if (p.a(asSimpleType == null ? null : Boolean.valueOf(abstractTypeCheckerContext.isIntegerLiteralType(asSimpleType)), Boolean.TRUE)) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        return z;
    }

    private static final boolean checkSubtypeForIntegerLiteralType$isTypeInIntegerLiteralType(AbstractTypeCheckerContext abstractTypeCheckerContext, AbstractTypeChecker abstractTypeChecker, SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2, boolean z) {
        Collection<KotlinTypeMarker> possibleIntegerTypes = abstractTypeCheckerContext.possibleIntegerTypes(simpleTypeMarker);
        if ((possibleIntegerTypes instanceof Collection) && possibleIntegerTypes.isEmpty()) {
            return false;
        }
        for (KotlinTypeMarker kotlinTypeMarker : possibleIntegerTypes) {
            if (p.a(abstractTypeCheckerContext.typeConstructor(kotlinTypeMarker), abstractTypeCheckerContext.typeConstructor(simpleTypeMarker2)) || (z && isSubtypeOf$default(abstractTypeChecker, abstractTypeCheckerContext, simpleTypeMarker2, kotlinTypeMarker, false, 8, null))) {
                return true;
            }
        }
        return false;
    }

    private final Boolean checkSubtypeForSpecialCases(AbstractTypeCheckerContext abstractTypeCheckerContext, SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2) {
        SimpleTypeMarker simpleTypeMarker3 = simpleTypeMarker;
        boolean z = false;
        if (!abstractTypeCheckerContext.isError(simpleTypeMarker3)) {
            SimpleTypeMarker simpleTypeMarker4 = simpleTypeMarker2;
            if (!abstractTypeCheckerContext.isError(simpleTypeMarker4)) {
                if (abstractTypeCheckerContext.isStubType(simpleTypeMarker) || abstractTypeCheckerContext.isStubType(simpleTypeMarker2)) {
                    return Boolean.valueOf(abstractTypeCheckerContext.isStubTypeEqualsToAnything());
                }
                DefinitelyNotNullTypeMarker asDefinitelyNotNullType = abstractTypeCheckerContext.asDefinitelyNotNullType(simpleTypeMarker2);
                CapturedTypeMarker asCapturedType = abstractTypeCheckerContext.asCapturedType(asDefinitelyNotNullType == null ? simpleTypeMarker2 : abstractTypeCheckerContext.original(asDefinitelyNotNullType));
                KotlinTypeMarker lowerType = asCapturedType == null ? null : abstractTypeCheckerContext.lowerType(asCapturedType);
                if (!(asCapturedType == null || lowerType == null)) {
                    if (abstractTypeCheckerContext.isMarkedNullable(simpleTypeMarker2)) {
                        lowerType = abstractTypeCheckerContext.withNullability(lowerType, true);
                    } else if (abstractTypeCheckerContext.isDefinitelyNotNullType(simpleTypeMarker4)) {
                        lowerType = abstractTypeCheckerContext.makeDefinitelyNotNullOrNotNull(lowerType);
                    }
                    int i = WhenMappings.$EnumSwitchMapping$1[abstractTypeCheckerContext.getLowerCapturedTypePolicy(simpleTypeMarker, asCapturedType).ordinal()];
                    if (i == 1) {
                        return Boolean.valueOf(isSubtypeOf$default(this, abstractTypeCheckerContext, simpleTypeMarker3, lowerType, false, 8, null));
                    }
                    if (i == 2 && isSubtypeOf$default(this, abstractTypeCheckerContext, simpleTypeMarker3, lowerType, false, 8, null)) {
                        return Boolean.TRUE;
                    }
                }
                TypeConstructorMarker typeConstructor = abstractTypeCheckerContext.typeConstructor(simpleTypeMarker2);
                if (!abstractTypeCheckerContext.isIntersection(typeConstructor)) {
                    return null;
                }
                boolean isMarkedNullable = abstractTypeCheckerContext.isMarkedNullable(simpleTypeMarker2);
                if (!x.f38657a || (!isMarkedNullable)) {
                    Collection<KotlinTypeMarker> supertypes = abstractTypeCheckerContext.supertypes(typeConstructor);
                    if (!(supertypes instanceof Collection) || !supertypes.isEmpty()) {
                        for (KotlinTypeMarker kotlinTypeMarker : supertypes) {
                            if (!isSubtypeOf$default(this, abstractTypeCheckerContext, simpleTypeMarker3, kotlinTypeMarker, false, 8, null)) {
                                break;
                            }
                        }
                    }
                    z = true;
                    return Boolean.valueOf(z);
                }
                throw new AssertionError(p.a("Intersection type should not be marked nullable!: ", (Object) simpleTypeMarker2));
            }
        }
        return abstractTypeCheckerContext.isErrorTypeEqualsToAnything() ? Boolean.TRUE : (!abstractTypeCheckerContext.isMarkedNullable(simpleTypeMarker) || abstractTypeCheckerContext.isMarkedNullable(simpleTypeMarker2)) ? Boolean.valueOf(AbstractStrictEqualityTypeChecker.INSTANCE.strictEqualTypes(abstractTypeCheckerContext, abstractTypeCheckerContext.withNullability(simpleTypeMarker, false), abstractTypeCheckerContext.withNullability(simpleTypeMarker2, false))) : Boolean.FALSE;
    }

    private final List<SimpleTypeMarker> collectAllSupertypesWithGivenTypeConstructor(AbstractTypeCheckerContext abstractTypeCheckerContext, SimpleTypeMarker simpleTypeMarker, TypeConstructorMarker typeConstructorMarker) {
        AbstractTypeCheckerContext.SupertypesPolicy.LowerIfFlexible lowerIfFlexible;
        List<SimpleTypeMarker> fastCorrespondingSupertypes = abstractTypeCheckerContext.fastCorrespondingSupertypes(simpleTypeMarker, typeConstructorMarker);
        if (fastCorrespondingSupertypes != null) {
            return fastCorrespondingSupertypes;
        }
        if (!abstractTypeCheckerContext.isClassTypeConstructor(typeConstructorMarker) && abstractTypeCheckerContext.isClassType(simpleTypeMarker)) {
            return z.f36608a;
        }
        if (!abstractTypeCheckerContext.isCommonFinalClassConstructor(typeConstructorMarker)) {
            h hVar = new h();
            abstractTypeCheckerContext.initialize();
            ArrayDeque<SimpleTypeMarker> supertypesDeque = abstractTypeCheckerContext.getSupertypesDeque();
            p.a(supertypesDeque);
            Set<SimpleTypeMarker> supertypesSet = abstractTypeCheckerContext.getSupertypesSet();
            p.a(supertypesSet);
            supertypesDeque.push(simpleTypeMarker);
            while (!supertypesDeque.isEmpty()) {
                if (supertypesSet.size() <= 1000) {
                    SimpleTypeMarker current = supertypesDeque.pop();
                    p.b(current, "current");
                    if (supertypesSet.add(current)) {
                        SimpleTypeMarker captureFromArguments = abstractTypeCheckerContext.captureFromArguments(current, CaptureStatus.FOR_SUBTYPING);
                        SimpleTypeMarker simpleTypeMarker2 = captureFromArguments;
                        if (captureFromArguments == null) {
                            simpleTypeMarker2 = current;
                        }
                        if (abstractTypeCheckerContext.areEqualTypeConstructors(abstractTypeCheckerContext.typeConstructor(simpleTypeMarker2), typeConstructorMarker)) {
                            hVar.add(simpleTypeMarker2);
                            lowerIfFlexible = AbstractTypeCheckerContext.SupertypesPolicy.None.INSTANCE;
                        } else {
                            lowerIfFlexible = abstractTypeCheckerContext.argumentsCount(simpleTypeMarker2) == 0 ? AbstractTypeCheckerContext.SupertypesPolicy.LowerIfFlexible.INSTANCE : abstractTypeCheckerContext.substitutionSupertypePolicy(simpleTypeMarker2);
                        }
                        if (!(!p.a(lowerIfFlexible, AbstractTypeCheckerContext.SupertypesPolicy.None.INSTANCE))) {
                            lowerIfFlexible = null;
                        }
                        if (lowerIfFlexible != null) {
                            for (KotlinTypeMarker kotlinTypeMarker : abstractTypeCheckerContext.supertypes(abstractTypeCheckerContext.typeConstructor(current))) {
                                supertypesDeque.add(lowerIfFlexible.transformType(abstractTypeCheckerContext, kotlinTypeMarker));
                            }
                        }
                    }
                } else {
                    throw new IllegalStateException(("Too many supertypes for type: " + simpleTypeMarker + ". Supertypes = " + n.a(supertypesSet, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 63)).toString());
                }
            }
            abstractTypeCheckerContext.clear();
            return hVar;
        } else if (!abstractTypeCheckerContext.areEqualTypeConstructors(abstractTypeCheckerContext.typeConstructor(simpleTypeMarker), typeConstructorMarker)) {
            return z.f36608a;
        } else {
            SimpleTypeMarker captureFromArguments2 = abstractTypeCheckerContext.captureFromArguments(simpleTypeMarker, CaptureStatus.FOR_SUBTYPING);
            if (captureFromArguments2 != null) {
                simpleTypeMarker = captureFromArguments2;
            }
            return n.a(simpleTypeMarker);
        }
    }

    private final List<SimpleTypeMarker> collectAndFilter(AbstractTypeCheckerContext abstractTypeCheckerContext, SimpleTypeMarker simpleTypeMarker, TypeConstructorMarker typeConstructorMarker) {
        return selectOnlyPureKotlinSupertypes(abstractTypeCheckerContext, collectAllSupertypesWithGivenTypeConstructor(abstractTypeCheckerContext, simpleTypeMarker, typeConstructorMarker));
    }

    private final boolean completeIsSubTypeOf(AbstractTypeCheckerContext abstractTypeCheckerContext, KotlinTypeMarker kotlinTypeMarker, KotlinTypeMarker kotlinTypeMarker2, boolean z) {
        Boolean checkSubtypeForSpecialCases = checkSubtypeForSpecialCases(abstractTypeCheckerContext, abstractTypeCheckerContext.lowerBoundIfFlexible(kotlinTypeMarker), abstractTypeCheckerContext.upperBoundIfFlexible(kotlinTypeMarker2));
        if (checkSubtypeForSpecialCases != null) {
            boolean booleanValue = checkSubtypeForSpecialCases.booleanValue();
            abstractTypeCheckerContext.addSubtypeConstraint(kotlinTypeMarker, kotlinTypeMarker2, z);
            return booleanValue;
        }
        Boolean addSubtypeConstraint = abstractTypeCheckerContext.addSubtypeConstraint(kotlinTypeMarker, kotlinTypeMarker2, z);
        return addSubtypeConstraint != null ? addSubtypeConstraint.booleanValue() : isSubtypeOfForSingleClassifierType(abstractTypeCheckerContext, abstractTypeCheckerContext.lowerBoundIfFlexible(kotlinTypeMarker), abstractTypeCheckerContext.upperBoundIfFlexible(kotlinTypeMarker2));
    }

    private final boolean hasNothingSupertype(AbstractTypeCheckerContext abstractTypeCheckerContext, SimpleTypeMarker simpleTypeMarker) {
        TypeConstructorMarker typeConstructor = abstractTypeCheckerContext.typeConstructor(simpleTypeMarker);
        if (abstractTypeCheckerContext.isClassTypeConstructor(typeConstructor)) {
            return abstractTypeCheckerContext.isNothingConstructor(typeConstructor);
        }
        if (abstractTypeCheckerContext.isNothingConstructor(abstractTypeCheckerContext.typeConstructor(simpleTypeMarker))) {
            return true;
        }
        abstractTypeCheckerContext.initialize();
        ArrayDeque<SimpleTypeMarker> supertypesDeque = abstractTypeCheckerContext.getSupertypesDeque();
        p.a(supertypesDeque);
        Set<SimpleTypeMarker> supertypesSet = abstractTypeCheckerContext.getSupertypesSet();
        p.a(supertypesSet);
        supertypesDeque.push(simpleTypeMarker);
        while (!supertypesDeque.isEmpty()) {
            if (supertypesSet.size() <= 1000) {
                SimpleTypeMarker current = supertypesDeque.pop();
                p.b(current, "current");
                if (supertypesSet.add(current)) {
                    AbstractTypeCheckerContext.SupertypesPolicy.LowerIfFlexible lowerIfFlexible = abstractTypeCheckerContext.isClassType(current) ? AbstractTypeCheckerContext.SupertypesPolicy.None.INSTANCE : AbstractTypeCheckerContext.SupertypesPolicy.LowerIfFlexible.INSTANCE;
                    if (!(!p.a(lowerIfFlexible, AbstractTypeCheckerContext.SupertypesPolicy.None.INSTANCE))) {
                        lowerIfFlexible = null;
                    }
                    if (lowerIfFlexible != null) {
                        for (KotlinTypeMarker kotlinTypeMarker : abstractTypeCheckerContext.supertypes(abstractTypeCheckerContext.typeConstructor(current))) {
                            SimpleTypeMarker transformType = lowerIfFlexible.transformType(abstractTypeCheckerContext, kotlinTypeMarker);
                            if (abstractTypeCheckerContext.isNothingConstructor(abstractTypeCheckerContext.typeConstructor(transformType))) {
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
                throw new IllegalStateException(("Too many supertypes for type: " + simpleTypeMarker + ". Supertypes = " + n.a(supertypesSet, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 63)).toString());
            }
        }
        abstractTypeCheckerContext.clear();
        return false;
    }

    private final boolean isCommonDenotableType(AbstractTypeCheckerContext abstractTypeCheckerContext, KotlinTypeMarker kotlinTypeMarker) {
        return abstractTypeCheckerContext.isDenotable(abstractTypeCheckerContext.typeConstructor(kotlinTypeMarker)) && !abstractTypeCheckerContext.isDynamic(kotlinTypeMarker) && !abstractTypeCheckerContext.isDefinitelyNotNullType(kotlinTypeMarker) && p.a(abstractTypeCheckerContext.typeConstructor(abstractTypeCheckerContext.lowerBoundIfFlexible(kotlinTypeMarker)), abstractTypeCheckerContext.typeConstructor(abstractTypeCheckerContext.upperBoundIfFlexible(kotlinTypeMarker)));
    }

    public static /* synthetic */ boolean isSubtypeOf$default(AbstractTypeChecker abstractTypeChecker, AbstractTypeCheckerContext abstractTypeCheckerContext, KotlinTypeMarker kotlinTypeMarker, KotlinTypeMarker kotlinTypeMarker2, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = false;
        }
        return abstractTypeChecker.isSubtypeOf(abstractTypeCheckerContext, kotlinTypeMarker, kotlinTypeMarker2, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x01d7, code lost:
        if ((r8.getVariance(r14) == kotlin.reflect.jvm.internal.impl.types.model.TypeVariance.INV) != false) goto L_0x01e0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean isSubtypeOfForSingleClassifierType(kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext r8, kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker r9, kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker r10) {
        /*
            Method dump skipped, instructions count: 728
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.AbstractTypeChecker.isSubtypeOfForSingleClassifierType(kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker, kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final List<SimpleTypeMarker> selectOnlyPureKotlinSupertypes(AbstractTypeCheckerContext abstractTypeCheckerContext, List<? extends SimpleTypeMarker> list) {
        if (list.size() < 2) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (true) {
            boolean z = true;
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            TypeArgumentListMarker asArgumentList = abstractTypeCheckerContext.asArgumentList((SimpleTypeMarker) next);
            AbstractTypeCheckerContext abstractTypeCheckerContext2 = abstractTypeCheckerContext;
            int size = abstractTypeCheckerContext2.size(asArgumentList);
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                }
                if (!(abstractTypeCheckerContext.asFlexibleType(abstractTypeCheckerContext.getType(abstractTypeCheckerContext2.get(asArgumentList, i))) == null)) {
                    z = false;
                    break;
                }
                i++;
            }
            if (z) {
                arrayList.add(next);
            }
        }
        ArrayList arrayList2 = arrayList;
        return arrayList2.isEmpty() ^ true ? arrayList2 : list;
    }

    public final TypeVariance effectiveVariance(TypeVariance declared, TypeVariance useSite) {
        p.d(declared, "declared");
        p.d(useSite, "useSite");
        if (declared == TypeVariance.INV) {
            return useSite;
        }
        if (useSite == TypeVariance.INV || declared == useSite) {
            return declared;
        }
        return null;
    }

    public final boolean equalTypes(AbstractTypeCheckerContext context, KotlinTypeMarker a2, KotlinTypeMarker b2) {
        p.d(context, "context");
        p.d(a2, "a");
        p.d(b2, "b");
        if (a2 == b2) {
            return true;
        }
        if (isCommonDenotableType(context, a2) && isCommonDenotableType(context, b2)) {
            KotlinTypeMarker refineType = context.refineType(a2);
            KotlinTypeMarker refineType2 = context.refineType(b2);
            SimpleTypeMarker lowerBoundIfFlexible = context.lowerBoundIfFlexible(refineType);
            if (!context.areEqualTypeConstructors(context.typeConstructor(refineType), context.typeConstructor(refineType2))) {
                return false;
            }
            if (context.argumentsCount(lowerBoundIfFlexible) == 0) {
                return context.hasFlexibleNullability(refineType) || context.hasFlexibleNullability(refineType2) || context.isMarkedNullable(lowerBoundIfFlexible) == context.isMarkedNullable(context.lowerBoundIfFlexible(refineType2));
            }
        }
        return isSubtypeOf$default(this, context, a2, b2, false, 8, null) && isSubtypeOf$default(this, context, b2, a2, false, 8, null);
    }

    public final List<SimpleTypeMarker> findCorrespondingSupertypes(AbstractTypeCheckerContext abstractTypeCheckerContext, SimpleTypeMarker subType, TypeConstructorMarker superConstructor) {
        AbstractTypeCheckerContext.SupertypesPolicy.LowerIfFlexible lowerIfFlexible;
        p.d(abstractTypeCheckerContext, "<this>");
        p.d(subType, "subType");
        p.d(superConstructor, "superConstructor");
        if (abstractTypeCheckerContext.isClassType(subType)) {
            return collectAndFilter(abstractTypeCheckerContext, subType, superConstructor);
        }
        if (!(abstractTypeCheckerContext.isClassTypeConstructor(superConstructor) || abstractTypeCheckerContext.isIntegerLiteralTypeConstructor(superConstructor))) {
            return collectAllSupertypesWithGivenTypeConstructor(abstractTypeCheckerContext, subType, superConstructor);
        }
        h hVar = new h();
        abstractTypeCheckerContext.initialize();
        ArrayDeque<SimpleTypeMarker> supertypesDeque = abstractTypeCheckerContext.getSupertypesDeque();
        p.a(supertypesDeque);
        Set<SimpleTypeMarker> supertypesSet = abstractTypeCheckerContext.getSupertypesSet();
        p.a(supertypesSet);
        supertypesDeque.push(subType);
        while (!supertypesDeque.isEmpty()) {
            if (supertypesSet.size() <= 1000) {
                SimpleTypeMarker current = supertypesDeque.pop();
                p.b(current, "current");
                if (supertypesSet.add(current)) {
                    if (abstractTypeCheckerContext.isClassType(current)) {
                        hVar.add(current);
                        lowerIfFlexible = AbstractTypeCheckerContext.SupertypesPolicy.None.INSTANCE;
                    } else {
                        lowerIfFlexible = AbstractTypeCheckerContext.SupertypesPolicy.LowerIfFlexible.INSTANCE;
                    }
                    if (!(!p.a(lowerIfFlexible, AbstractTypeCheckerContext.SupertypesPolicy.None.INSTANCE))) {
                        lowerIfFlexible = null;
                    }
                    if (lowerIfFlexible != null) {
                        for (KotlinTypeMarker kotlinTypeMarker : abstractTypeCheckerContext.supertypes(abstractTypeCheckerContext.typeConstructor(current))) {
                            supertypesDeque.add(lowerIfFlexible.transformType(abstractTypeCheckerContext, kotlinTypeMarker));
                        }
                    }
                }
            } else {
                throw new IllegalStateException(("Too many supertypes for type: " + subType + ". Supertypes = " + n.a(supertypesSet, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 63)).toString());
            }
        }
        abstractTypeCheckerContext.clear();
        h<SimpleTypeMarker> hVar2 = hVar;
        ArrayList arrayList = new ArrayList();
        for (SimpleTypeMarker it2 : hVar2) {
            p.b(it2, "it");
            n.a((Collection) arrayList, (Iterable) collectAndFilter(abstractTypeCheckerContext, it2, superConstructor));
        }
        return arrayList;
    }

    public final boolean isSubtypeForSameConstructor(AbstractTypeCheckerContext abstractTypeCheckerContext, TypeArgumentListMarker capturedSubArguments, SimpleTypeMarker superType) {
        int i;
        int i2;
        boolean z;
        int i3;
        p.d(abstractTypeCheckerContext, "<this>");
        p.d(capturedSubArguments, "capturedSubArguments");
        p.d(superType, "superType");
        TypeConstructorMarker typeConstructor = abstractTypeCheckerContext.typeConstructor(superType);
        int parametersCount = abstractTypeCheckerContext.parametersCount(typeConstructor);
        if (parametersCount <= 0) {
            return true;
        }
        int i4 = 0;
        while (true) {
            int i5 = i4 + 1;
            TypeArgumentMarker argument = abstractTypeCheckerContext.getArgument(superType, i4);
            if (!abstractTypeCheckerContext.isStarProjection(argument)) {
                KotlinTypeMarker type = abstractTypeCheckerContext.getType(argument);
                TypeArgumentMarker typeArgumentMarker = abstractTypeCheckerContext.get(capturedSubArguments, i4);
                boolean z2 = abstractTypeCheckerContext.getVariance(typeArgumentMarker) == TypeVariance.INV;
                if (!x.f38657a || z2) {
                    KotlinTypeMarker type2 = abstractTypeCheckerContext.getType(typeArgumentMarker);
                    TypeVariance effectiveVariance = effectiveVariance(abstractTypeCheckerContext.getVariance(abstractTypeCheckerContext.getParameter(typeConstructor, i4)), abstractTypeCheckerContext.getVariance(argument));
                    if (effectiveVariance == null) {
                        return abstractTypeCheckerContext.isErrorTypeEqualsToAnything();
                    }
                    i = abstractTypeCheckerContext.argumentsDepth;
                    if (i <= 100) {
                        i2 = abstractTypeCheckerContext.argumentsDepth;
                        abstractTypeCheckerContext.argumentsDepth = i2 + 1;
                        int i6 = WhenMappings.$EnumSwitchMapping$0[effectiveVariance.ordinal()];
                        if (i6 == 1) {
                            z = equalTypes(abstractTypeCheckerContext, type2, type);
                        } else if (i6 == 2) {
                            z = isSubtypeOf$default(this, abstractTypeCheckerContext, type2, type, false, 8, null);
                        } else if (i6 == 3) {
                            z = isSubtypeOf$default(this, abstractTypeCheckerContext, type, type2, false, 8, null);
                        } else {
                            throw new NoWhenBranchMatchedException();
                        }
                        i3 = abstractTypeCheckerContext.argumentsDepth;
                        abstractTypeCheckerContext.argumentsDepth = i3 - 1;
                        if (!z) {
                            return false;
                        }
                    } else {
                        throw new IllegalStateException(p.a("Arguments depth is too high. Some related argument: ", (Object) type2).toString());
                    }
                } else {
                    throw new AssertionError(p.a("Incorrect sub argument: ", (Object) typeArgumentMarker));
                }
            }
            if (i5 >= parametersCount) {
                return true;
            }
            i4 = i5;
        }
    }

    public final boolean isSubtypeOf(AbstractTypeCheckerContext context, KotlinTypeMarker subType, KotlinTypeMarker superType, boolean z) {
        p.d(context, "context");
        p.d(subType, "subType");
        p.d(superType, "superType");
        if (subType == superType) {
            return true;
        }
        if (!context.customIsSubtypeOf(subType, superType)) {
            return false;
        }
        return completeIsSubTypeOf(context, context.prepareType(context.refineType(subType)), context.prepareType(context.refineType(superType)), z);
    }
}
