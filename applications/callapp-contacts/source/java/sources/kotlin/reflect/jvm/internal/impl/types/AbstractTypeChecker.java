package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.C20130x;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
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
import kotlin.reflect.jvm.internal.impl.utils.C20023h;
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
        if (abstractTypeCheckerContext.isIntegerLiteralType(simpleTypeMarker) || abstractTypeCheckerContext.isIntegerLiteralType(simpleTypeMarker2)) {
            if (abstractTypeCheckerContext.isIntegerLiteralType(simpleTypeMarker) && abstractTypeCheckerContext.isIntegerLiteralType(simpleTypeMarker2)) {
                return Boolean.TRUE;
            }
            if (abstractTypeCheckerContext.isIntegerLiteralType(simpleTypeMarker)) {
                if (!checkSubtypeForIntegerLiteralType$isTypeInIntegerLiteralType(abstractTypeCheckerContext, this, simpleTypeMarker, simpleTypeMarker2, false)) {
                    return null;
                }
                return Boolean.TRUE;
            } else if (!abstractTypeCheckerContext.isIntegerLiteralType(simpleTypeMarker2)) {
                return null;
            } else {
                if (!m1219xd73902db(abstractTypeCheckerContext, simpleTypeMarker) && !checkSubtypeForIntegerLiteralType$isTypeInIntegerLiteralType(abstractTypeCheckerContext, this, simpleTypeMarker2, simpleTypeMarker, true)) {
                    return null;
                }
                return Boolean.TRUE;
            }
        }
        return null;
    }

    /* renamed from: checkSubtypeForIntegerLiteralType$isIntegerLiteralTypeInIntersectionComponents */
    private static final boolean m1219xd73902db(AbstractTypeCheckerContext abstractTypeCheckerContext, SimpleTypeMarker simpleTypeMarker) {
        boolean z;
        TypeConstructorMarker typeConstructor = abstractTypeCheckerContext.typeConstructor(simpleTypeMarker);
        if (typeConstructor instanceof IntersectionTypeConstructorMarker) {
            Collection<KotlinTypeMarker> supertypes = abstractTypeCheckerContext.supertypes(typeConstructor);
            if (!(supertypes instanceof Collection) || !supertypes.isEmpty()) {
                for (KotlinTypeMarker kotlinTypeMarker : supertypes) {
                    SimpleTypeMarker asSimpleType = abstractTypeCheckerContext.asSimpleType(kotlinTypeMarker);
                    if (C18524p.m3850a(asSimpleType == null ? null : Boolean.valueOf(abstractTypeCheckerContext.isIntegerLiteralType(asSimpleType)), Boolean.TRUE)) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            return z;
        }
        return false;
    }

    private static final boolean checkSubtypeForIntegerLiteralType$isTypeInIntegerLiteralType(AbstractTypeCheckerContext abstractTypeCheckerContext, AbstractTypeChecker abstractTypeChecker, SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2, boolean z) {
        Collection<KotlinTypeMarker> possibleIntegerTypes = abstractTypeCheckerContext.possibleIntegerTypes(simpleTypeMarker);
        if (!(possibleIntegerTypes instanceof Collection) || !possibleIntegerTypes.isEmpty()) {
            for (KotlinTypeMarker kotlinTypeMarker : possibleIntegerTypes) {
                if (C18524p.m3850a(abstractTypeCheckerContext.typeConstructor(kotlinTypeMarker), abstractTypeCheckerContext.typeConstructor(simpleTypeMarker2)) || (z && isSubtypeOf$default(abstractTypeChecker, abstractTypeCheckerContext, simpleTypeMarker2, kotlinTypeMarker, false, 8, null))) {
                    return true;
                }
            }
            return false;
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
                if (asCapturedType != null && lowerType != null) {
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
                if (C20130x.f66532a && !(!isMarkedNullable)) {
                    throw new AssertionError(C18524p.m3847a("Intersection type should not be marked nullable!: ", (Object) simpleTypeMarker2));
                }
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
        }
        return abstractTypeCheckerContext.isErrorTypeEqualsToAnything() ? Boolean.TRUE : (!abstractTypeCheckerContext.isMarkedNullable(simpleTypeMarker) || abstractTypeCheckerContext.isMarkedNullable(simpleTypeMarker2)) ? Boolean.valueOf(AbstractStrictEqualityTypeChecker.INSTANCE.strictEqualTypes(abstractTypeCheckerContext, abstractTypeCheckerContext.withNullability(simpleTypeMarker, false), abstractTypeCheckerContext.withNullability(simpleTypeMarker2, false))) : Boolean.FALSE;
    }

    private final List<SimpleTypeMarker> collectAllSupertypesWithGivenTypeConstructor(AbstractTypeCheckerContext abstractTypeCheckerContext, SimpleTypeMarker simpleTypeMarker, TypeConstructorMarker typeConstructorMarker) {
        AbstractTypeCheckerContext.SupertypesPolicy.None none;
        List<SimpleTypeMarker> fastCorrespondingSupertypes = abstractTypeCheckerContext.fastCorrespondingSupertypes(simpleTypeMarker, typeConstructorMarker);
        if (fastCorrespondingSupertypes != null) {
            return fastCorrespondingSupertypes;
        }
        if (!abstractTypeCheckerContext.isClassTypeConstructor(typeConstructorMarker) && abstractTypeCheckerContext.isClassType(simpleTypeMarker)) {
            return C18297z.f63400a;
        }
        if (abstractTypeCheckerContext.isCommonFinalClassConstructor(typeConstructorMarker)) {
            if (!abstractTypeCheckerContext.areEqualTypeConstructors(abstractTypeCheckerContext.typeConstructor(simpleTypeMarker), typeConstructorMarker)) {
                return C18297z.f63400a;
            }
            SimpleTypeMarker captureFromArguments = abstractTypeCheckerContext.captureFromArguments(simpleTypeMarker, CaptureStatus.FOR_SUBTYPING);
            if (captureFromArguments != null) {
                simpleTypeMarker = captureFromArguments;
            }
            return C18282n.m4176a(simpleTypeMarker);
        }
        C20023h c20023h = new C20023h();
        abstractTypeCheckerContext.initialize();
        ArrayDeque<SimpleTypeMarker> supertypesDeque = abstractTypeCheckerContext.getSupertypesDeque();
        C18524p.m3851a(supertypesDeque);
        Set<SimpleTypeMarker> supertypesSet = abstractTypeCheckerContext.getSupertypesSet();
        C18524p.m3851a(supertypesSet);
        supertypesDeque.push(simpleTypeMarker);
        while (!supertypesDeque.isEmpty()) {
            if (supertypesSet.size() > 1000) {
                throw new IllegalStateException(("Too many supertypes for type: " + simpleTypeMarker + ". Supertypes = " + C18282n.m4148a(supertypesSet, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 63)).toString());
            }
            SimpleTypeMarker current = supertypesDeque.pop();
            C18524p.m3843b(current, "current");
            if (supertypesSet.add(current)) {
                SimpleTypeMarker captureFromArguments2 = abstractTypeCheckerContext.captureFromArguments(current, CaptureStatus.FOR_SUBTYPING);
                SimpleTypeMarker simpleTypeMarker2 = captureFromArguments2;
                if (captureFromArguments2 == null) {
                    simpleTypeMarker2 = current;
                }
                if (abstractTypeCheckerContext.areEqualTypeConstructors(abstractTypeCheckerContext.typeConstructor(simpleTypeMarker2), typeConstructorMarker)) {
                    c20023h.add(simpleTypeMarker2);
                    none = AbstractTypeCheckerContext.SupertypesPolicy.None.INSTANCE;
                } else {
                    none = abstractTypeCheckerContext.argumentsCount(simpleTypeMarker2) == 0 ? AbstractTypeCheckerContext.SupertypesPolicy.LowerIfFlexible.INSTANCE : abstractTypeCheckerContext.substitutionSupertypePolicy(simpleTypeMarker2);
                }
                if (!(!C18524p.m3850a(none, AbstractTypeCheckerContext.SupertypesPolicy.None.INSTANCE))) {
                    none = null;
                }
                if (none != null) {
                    for (KotlinTypeMarker kotlinTypeMarker : abstractTypeCheckerContext.supertypes(abstractTypeCheckerContext.typeConstructor(current))) {
                        supertypesDeque.add(none.transformType(abstractTypeCheckerContext, kotlinTypeMarker));
                    }
                }
            }
        }
        abstractTypeCheckerContext.clear();
        return c20023h;
    }

    private final List<SimpleTypeMarker> collectAndFilter(AbstractTypeCheckerContext abstractTypeCheckerContext, SimpleTypeMarker simpleTypeMarker, TypeConstructorMarker typeConstructorMarker) {
        return selectOnlyPureKotlinSupertypes(abstractTypeCheckerContext, collectAllSupertypesWithGivenTypeConstructor(abstractTypeCheckerContext, simpleTypeMarker, typeConstructorMarker));
    }

    private final boolean completeIsSubTypeOf(AbstractTypeCheckerContext abstractTypeCheckerContext, KotlinTypeMarker kotlinTypeMarker, KotlinTypeMarker kotlinTypeMarker2, boolean z) {
        Boolean checkSubtypeForSpecialCases = checkSubtypeForSpecialCases(abstractTypeCheckerContext, abstractTypeCheckerContext.lowerBoundIfFlexible(kotlinTypeMarker), abstractTypeCheckerContext.upperBoundIfFlexible(kotlinTypeMarker2));
        if (checkSubtypeForSpecialCases == null) {
            Boolean addSubtypeConstraint = abstractTypeCheckerContext.addSubtypeConstraint(kotlinTypeMarker, kotlinTypeMarker2, z);
            return addSubtypeConstraint != null ? addSubtypeConstraint.booleanValue() : isSubtypeOfForSingleClassifierType(abstractTypeCheckerContext, abstractTypeCheckerContext.lowerBoundIfFlexible(kotlinTypeMarker), abstractTypeCheckerContext.upperBoundIfFlexible(kotlinTypeMarker2));
        }
        boolean booleanValue = checkSubtypeForSpecialCases.booleanValue();
        abstractTypeCheckerContext.addSubtypeConstraint(kotlinTypeMarker, kotlinTypeMarker2, z);
        return booleanValue;
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
        C18524p.m3851a(supertypesDeque);
        Set<SimpleTypeMarker> supertypesSet = abstractTypeCheckerContext.getSupertypesSet();
        C18524p.m3851a(supertypesSet);
        supertypesDeque.push(simpleTypeMarker);
        while (!supertypesDeque.isEmpty()) {
            if (supertypesSet.size() > 1000) {
                throw new IllegalStateException(("Too many supertypes for type: " + simpleTypeMarker + ". Supertypes = " + C18282n.m4148a(supertypesSet, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 63)).toString());
            }
            SimpleTypeMarker current = supertypesDeque.pop();
            C18524p.m3843b(current, "current");
            if (supertypesSet.add(current)) {
                AbstractTypeCheckerContext.SupertypesPolicy.None none = abstractTypeCheckerContext.isClassType(current) ? AbstractTypeCheckerContext.SupertypesPolicy.None.INSTANCE : AbstractTypeCheckerContext.SupertypesPolicy.LowerIfFlexible.INSTANCE;
                if (!(!C18524p.m3850a(none, AbstractTypeCheckerContext.SupertypesPolicy.None.INSTANCE))) {
                    none = null;
                }
                if (none != null) {
                    for (KotlinTypeMarker kotlinTypeMarker : abstractTypeCheckerContext.supertypes(abstractTypeCheckerContext.typeConstructor(current))) {
                        SimpleTypeMarker transformType = none.transformType(abstractTypeCheckerContext, kotlinTypeMarker);
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
        }
        abstractTypeCheckerContext.clear();
        return false;
    }

    private final boolean isCommonDenotableType(AbstractTypeCheckerContext abstractTypeCheckerContext, KotlinTypeMarker kotlinTypeMarker) {
        return abstractTypeCheckerContext.isDenotable(abstractTypeCheckerContext.typeConstructor(kotlinTypeMarker)) && !abstractTypeCheckerContext.isDynamic(kotlinTypeMarker) && !abstractTypeCheckerContext.isDefinitelyNotNullType(kotlinTypeMarker) && C18524p.m3850a(abstractTypeCheckerContext.typeConstructor(abstractTypeCheckerContext.lowerBoundIfFlexible(kotlinTypeMarker)), abstractTypeCheckerContext.typeConstructor(abstractTypeCheckerContext.upperBoundIfFlexible(kotlinTypeMarker)));
    }

    public static /* synthetic */ boolean isSubtypeOf$default(AbstractTypeChecker abstractTypeChecker, AbstractTypeCheckerContext abstractTypeCheckerContext, KotlinTypeMarker kotlinTypeMarker, KotlinTypeMarker kotlinTypeMarker2, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = false;
        }
        return abstractTypeChecker.isSubtypeOf(abstractTypeCheckerContext, kotlinTypeMarker, kotlinTypeMarker2, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x01d7, code lost:
        if ((r8.getVariance(r14) == kotlin.reflect.jvm.internal.impl.types.model.TypeVariance.INV) != false) goto L72;
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
        boolean z;
        if (list.size() < 2) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            TypeArgumentListMarker asArgumentList = abstractTypeCheckerContext.asArgumentList((SimpleTypeMarker) obj);
            AbstractTypeCheckerContext abstractTypeCheckerContext2 = abstractTypeCheckerContext;
            int size = abstractTypeCheckerContext2.size(asArgumentList);
            int i = 0;
            while (true) {
                z = true;
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
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = arrayList;
        return arrayList2.isEmpty() ^ true ? arrayList2 : list;
    }

    public final TypeVariance effectiveVariance(TypeVariance declared, TypeVariance useSite) {
        C18524p.m3840d(declared, "declared");
        C18524p.m3840d(useSite, "useSite");
        if (declared == TypeVariance.INV) {
            return useSite;
        }
        if (useSite != TypeVariance.INV && declared != useSite) {
            return null;
        }
        return declared;
    }

    public final boolean equalTypes(AbstractTypeCheckerContext context, KotlinTypeMarker a, KotlinTypeMarker b) {
        C18524p.m3840d(context, "context");
        C18524p.m3840d(a, "a");
        C18524p.m3840d(b, "b");
        if (a == b) {
            return true;
        }
        if (isCommonDenotableType(context, a) && isCommonDenotableType(context, b)) {
            KotlinTypeMarker refineType = context.refineType(a);
            KotlinTypeMarker refineType2 = context.refineType(b);
            SimpleTypeMarker lowerBoundIfFlexible = context.lowerBoundIfFlexible(refineType);
            if (!context.areEqualTypeConstructors(context.typeConstructor(refineType), context.typeConstructor(refineType2))) {
                return false;
            }
            if (context.argumentsCount(lowerBoundIfFlexible) == 0) {
                return context.hasFlexibleNullability(refineType) || context.hasFlexibleNullability(refineType2) || context.isMarkedNullable(lowerBoundIfFlexible) == context.isMarkedNullable(context.lowerBoundIfFlexible(refineType2));
            }
        }
        return isSubtypeOf$default(this, context, a, b, false, 8, null) && isSubtypeOf$default(this, context, b, a, false, 8, null);
    }

    public final List<SimpleTypeMarker> findCorrespondingSupertypes(AbstractTypeCheckerContext abstractTypeCheckerContext, SimpleTypeMarker subType, TypeConstructorMarker superConstructor) {
        AbstractTypeCheckerContext.SupertypesPolicy.None none;
        C18524p.m3840d(abstractTypeCheckerContext, "<this>");
        C18524p.m3840d(subType, "subType");
        C18524p.m3840d(superConstructor, "superConstructor");
        if (abstractTypeCheckerContext.isClassType(subType)) {
            return collectAndFilter(abstractTypeCheckerContext, subType, superConstructor);
        }
        if (!abstractTypeCheckerContext.isClassTypeConstructor(superConstructor) && !abstractTypeCheckerContext.isIntegerLiteralTypeConstructor(superConstructor)) {
            return collectAllSupertypesWithGivenTypeConstructor(abstractTypeCheckerContext, subType, superConstructor);
        }
        C20023h c20023h = new C20023h();
        abstractTypeCheckerContext.initialize();
        ArrayDeque<SimpleTypeMarker> supertypesDeque = abstractTypeCheckerContext.getSupertypesDeque();
        C18524p.m3851a(supertypesDeque);
        Set<SimpleTypeMarker> supertypesSet = abstractTypeCheckerContext.getSupertypesSet();
        C18524p.m3851a(supertypesSet);
        supertypesDeque.push(subType);
        while (!supertypesDeque.isEmpty()) {
            if (supertypesSet.size() > 1000) {
                throw new IllegalStateException(("Too many supertypes for type: " + subType + ". Supertypes = " + C18282n.m4148a(supertypesSet, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 63)).toString());
            }
            SimpleTypeMarker current = supertypesDeque.pop();
            C18524p.m3843b(current, "current");
            if (supertypesSet.add(current)) {
                if (abstractTypeCheckerContext.isClassType(current)) {
                    c20023h.add(current);
                    none = AbstractTypeCheckerContext.SupertypesPolicy.None.INSTANCE;
                } else {
                    none = AbstractTypeCheckerContext.SupertypesPolicy.LowerIfFlexible.INSTANCE;
                }
                if (!(!C18524p.m3850a(none, AbstractTypeCheckerContext.SupertypesPolicy.None.INSTANCE))) {
                    none = null;
                }
                if (none != null) {
                    for (KotlinTypeMarker kotlinTypeMarker : abstractTypeCheckerContext.supertypes(abstractTypeCheckerContext.typeConstructor(current))) {
                        supertypesDeque.add(none.transformType(abstractTypeCheckerContext, kotlinTypeMarker));
                    }
                }
            }
        }
        abstractTypeCheckerContext.clear();
        C20023h<SimpleTypeMarker> c20023h2 = c20023h;
        ArrayList arrayList = new ArrayList();
        for (SimpleTypeMarker it2 : c20023h2) {
            C18524p.m3843b(it2, "it");
            C18282n.m4158a((Collection) arrayList, (Iterable) collectAndFilter(abstractTypeCheckerContext, it2, superConstructor));
        }
        return arrayList;
    }

    public final boolean isSubtypeForSameConstructor(AbstractTypeCheckerContext abstractTypeCheckerContext, TypeArgumentListMarker capturedSubArguments, SimpleTypeMarker superType) {
        int i;
        int i2;
        boolean z;
        int i3;
        C18524p.m3840d(abstractTypeCheckerContext, "<this>");
        C18524p.m3840d(capturedSubArguments, "capturedSubArguments");
        C18524p.m3840d(superType, "superType");
        TypeConstructorMarker typeConstructor = abstractTypeCheckerContext.typeConstructor(superType);
        int parametersCount = abstractTypeCheckerContext.parametersCount(typeConstructor);
        if (parametersCount > 0) {
            int i4 = 0;
            while (true) {
                int i5 = i4;
                int i6 = i5 + 1;
                TypeArgumentMarker argument = abstractTypeCheckerContext.getArgument(superType, i5);
                if (!abstractTypeCheckerContext.isStarProjection(argument)) {
                    KotlinTypeMarker type = abstractTypeCheckerContext.getType(argument);
                    TypeArgumentMarker typeArgumentMarker = abstractTypeCheckerContext.get(capturedSubArguments, i5);
                    boolean z2 = abstractTypeCheckerContext.getVariance(typeArgumentMarker) == TypeVariance.INV;
                    if (C20130x.f66532a && !z2) {
                        throw new AssertionError(C18524p.m3847a("Incorrect sub argument: ", (Object) typeArgumentMarker));
                    }
                    KotlinTypeMarker type2 = abstractTypeCheckerContext.getType(typeArgumentMarker);
                    TypeVariance effectiveVariance = effectiveVariance(abstractTypeCheckerContext.getVariance(abstractTypeCheckerContext.getParameter(typeConstructor, i5)), abstractTypeCheckerContext.getVariance(argument));
                    if (effectiveVariance == null) {
                        return abstractTypeCheckerContext.isErrorTypeEqualsToAnything();
                    }
                    i = abstractTypeCheckerContext.argumentsDepth;
                    if (i > 100) {
                        throw new IllegalStateException(C18524p.m3847a("Arguments depth is too high. Some related argument: ", (Object) type2).toString());
                    }
                    i2 = abstractTypeCheckerContext.argumentsDepth;
                    abstractTypeCheckerContext.argumentsDepth = i2 + 1;
                    int i7 = WhenMappings.$EnumSwitchMapping$0[effectiveVariance.ordinal()];
                    if (i7 == 1) {
                        z = equalTypes(abstractTypeCheckerContext, type2, type);
                    } else if (i7 == 2) {
                        z = isSubtypeOf$default(this, abstractTypeCheckerContext, type2, type, false, 8, null);
                    } else if (i7 != 3) {
                        throw new NoWhenBranchMatchedException();
                    } else {
                        z = isSubtypeOf$default(this, abstractTypeCheckerContext, type, type2, false, 8, null);
                    }
                    i3 = abstractTypeCheckerContext.argumentsDepth;
                    abstractTypeCheckerContext.argumentsDepth = i3 - 1;
                    if (!z) {
                        return false;
                    }
                }
                if (i6 >= parametersCount) {
                    return true;
                }
                i4 = i6;
            }
        } else {
            return true;
        }
    }

    public final boolean isSubtypeOf(AbstractTypeCheckerContext context, KotlinTypeMarker subType, KotlinTypeMarker superType, boolean z) {
        C18524p.m3840d(context, "context");
        C18524p.m3840d(subType, "subType");
        C18524p.m3840d(superType, "superType");
        if (subType == superType) {
            return true;
        }
        if (context.customIsSubtypeOf(subType, superType)) {
            return completeIsSubTypeOf(context, context.prepareType(context.refineType(subType)), context.prepareType(context.refineType(superType)), z);
        }
        return false;
    }
}
