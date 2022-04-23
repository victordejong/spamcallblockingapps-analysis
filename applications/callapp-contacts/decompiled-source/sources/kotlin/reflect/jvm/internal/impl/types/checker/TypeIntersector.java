package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.a.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.SpecialTypesKt;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector.class */
public final class TypeIntersector {
    public static final TypeIntersector INSTANCE = new TypeIntersector();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability.class */
    static final abstract class ResultNullability extends Enum<ResultNullability> {
        private static final /* synthetic */ ResultNullability[] $VALUES;
        public static final ResultNullability ACCEPT_NULL;
        public static final ResultNullability NOT_NULL;
        public static final ResultNullability START;
        public static final ResultNullability UNKNOWN;

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability$ACCEPT_NULL.class */
        static final class ACCEPT_NULL extends ResultNullability {
            ACCEPT_NULL(String str, int i) {
                super(str, i, null);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector.ResultNullability
            public final ResultNullability combine(UnwrappedType nextType) {
                p.d(nextType, "nextType");
                return getResultNullability(nextType);
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability$NOT_NULL.class */
        static final class NOT_NULL extends ResultNullability {
            NOT_NULL(String str, int i) {
                super(str, i, null);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector.ResultNullability
            public final NOT_NULL combine(UnwrappedType nextType) {
                p.d(nextType, "nextType");
                return this;
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability$START.class */
        static final class START extends ResultNullability {
            START(String str, int i) {
                super(str, i, null);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector.ResultNullability
            public final ResultNullability combine(UnwrappedType nextType) {
                p.d(nextType, "nextType");
                return getResultNullability(nextType);
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability$UNKNOWN.class */
        static final class UNKNOWN extends ResultNullability {
            UNKNOWN(String str, int i) {
                super(str, i, null);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector.ResultNullability
            public final ResultNullability combine(UnwrappedType nextType) {
                p.d(nextType, "nextType");
                ResultNullability resultNullability = getResultNullability(nextType);
                UNKNOWN unknown = resultNullability;
                if (resultNullability == ResultNullability.ACCEPT_NULL) {
                    unknown = this;
                }
                return unknown;
            }
        }

        static {
            START start = new START("START", 0);
            START = start;
            ACCEPT_NULL accept_null = new ACCEPT_NULL("ACCEPT_NULL", 1);
            ACCEPT_NULL = accept_null;
            UNKNOWN unknown = new UNKNOWN("UNKNOWN", 2);
            UNKNOWN = unknown;
            NOT_NULL not_null = new NOT_NULL("NOT_NULL", 3);
            NOT_NULL = not_null;
            $VALUES = new ResultNullability[]{start, accept_null, unknown, not_null};
        }

        private ResultNullability(String str, int i) {
        }

        public /* synthetic */ ResultNullability(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, i);
        }

        public static ResultNullability valueOf(String value) {
            p.d(value, "value");
            return (ResultNullability) Enum.valueOf(ResultNullability.class, value);
        }

        public static ResultNullability[] values() {
            ResultNullability[] resultNullabilityArr = $VALUES;
            ResultNullability[] resultNullabilityArr2 = new ResultNullability[resultNullabilityArr.length];
            System.arraycopy(resultNullabilityArr, 0, resultNullabilityArr2, 0, resultNullabilityArr.length);
            return resultNullabilityArr2;
        }

        public abstract ResultNullability combine(UnwrappedType unwrappedType);

        protected final ResultNullability getResultNullability(UnwrappedType unwrappedType) {
            p.d(unwrappedType, "<this>");
            return unwrappedType.isMarkedNullable() ? ACCEPT_NULL : NullabilityChecker.INSTANCE.isSubtypeOfAny(unwrappedType) ? NOT_NULL : UNKNOWN;
        }
    }

    private TypeIntersector() {
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0097 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.Collection<kotlin.reflect.jvm.internal.impl.types.SimpleType> filterTypes(java.util.Collection<? extends kotlin.reflect.jvm.internal.impl.types.SimpleType> r5, kotlin.jvm.functions.Function2<? super kotlin.reflect.jvm.internal.impl.types.SimpleType, ? super kotlin.reflect.jvm.internal.impl.types.SimpleType, java.lang.Boolean> r6) {
        /*
            r4 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r2 = r5
            r1.<init>(r2)
            r7 = r0
            r0 = r7
            java.util.Iterator r0 = r0.iterator()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "filteredTypes.iterator()"
            kotlin.jvm.internal.p.b(r0, r1)
        L_0x0014:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x00af
            r0 = r5
            java.lang.Object r0 = r0.next()
            kotlin.reflect.jvm.internal.impl.types.SimpleType r0 = (kotlin.reflect.jvm.internal.impl.types.SimpleType) r0
            r8 = r0
            r0 = r7
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            r9 = r0
            r0 = r9
            java.util.Collection r0 = (java.util.Collection) r0
            boolean r0 = r0.isEmpty()
            r10 = r0
            r0 = 1
            r11 = r0
            r0 = r10
            if (r0 != 0) goto L_0x009e
            r0 = r9
            java.util.Iterator r0 = r0.iterator()
            r9 = r0
        L_0x004b:
            r0 = r9
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x009e
            r0 = r9
            java.lang.Object r0 = r0.next()
            kotlin.reflect.jvm.internal.impl.types.SimpleType r0 = (kotlin.reflect.jvm.internal.impl.types.SimpleType) r0
            r12 = r0
            r0 = r12
            r1 = r8
            if (r0 == r1) goto L_0x008f
            r0 = r12
            java.lang.String r1 = "lower"
            kotlin.jvm.internal.p.b(r0, r1)
            r0 = r8
            java.lang.String r1 = "upper"
            kotlin.jvm.internal.p.b(r0, r1)
            r0 = r6
            r1 = r12
            r2 = r8
            java.lang.Object r0 = r0.invoke(r1, r2)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x008f
            r0 = 1
            r13 = r0
            goto L_0x0092
        L_0x008f:
            r0 = 0
            r13 = r0
        L_0x0092:
            r0 = r13
            if (r0 == 0) goto L_0x004b
            r0 = r11
            r13 = r0
            goto L_0x00a1
        L_0x009e:
            r0 = 0
            r13 = r0
        L_0x00a1:
            r0 = r13
            if (r0 == 0) goto L_0x0014
            r0 = r5
            r0.remove()
            goto L_0x0014
        L_0x00af:
            r0 = r7
            java.util.Collection r0 = (java.util.Collection) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector.filterTypes(java.util.Collection, kotlin.jvm.functions.Function2):java.util.Collection");
    }

    private final SimpleType intersectTypesWithoutIntersectionType(Set<? extends SimpleType> set) {
        if (set.size() == 1) {
            return (SimpleType) n.d((Iterable<? extends Object>) set);
        }
        TypeIntersector$intersectTypesWithoutIntersectionType$errorMessage$1 typeIntersector$intersectTypesWithoutIntersectionType$errorMessage$1 = new TypeIntersector$intersectTypesWithoutIntersectionType$errorMessage$1(set);
        Set<? extends SimpleType> set2 = set;
        Collection<SimpleType> filterTypes = filterTypes(set2, new TypeIntersector$intersectTypesWithoutIntersectionType$filteredEqualTypes$1(this));
        boolean isEmpty = filterTypes.isEmpty();
        if (!x.f38657a || (!isEmpty)) {
            SimpleType a2 = IntegerLiteralTypeConstructor.Companion.a(filterTypes);
            if (a2 != null) {
                return a2;
            }
            Collection<SimpleType> filterTypes2 = filterTypes(filterTypes, new TypeIntersector$intersectTypesWithoutIntersectionType$filteredSuperAndEqualTypes$1(NewKotlinTypeChecker.Companion.getDefault()));
            boolean isEmpty2 = filterTypes2.isEmpty();
            if (!x.f38657a || (true ^ isEmpty2)) {
                return filterTypes2.size() < 2 ? (SimpleType) n.d((Iterable<? extends Object>) filterTypes2) : new IntersectionTypeConstructor(set2).createType();
            }
            throw new AssertionError(typeIntersector$intersectTypesWithoutIntersectionType$errorMessage$1.invoke());
        }
        throw new AssertionError(typeIntersector$intersectTypesWithoutIntersectionType$errorMessage$1.invoke());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isStrictSupertype(KotlinType kotlinType, KotlinType kotlinType2) {
        NewKotlinTypeCheckerImpl newKotlinTypeCheckerImpl = NewKotlinTypeChecker.Companion.getDefault();
        return newKotlinTypeCheckerImpl.isSubtypeOf(kotlinType, kotlinType2) && !newKotlinTypeCheckerImpl.isSubtypeOf(kotlinType2, kotlinType);
    }

    public final SimpleType intersectTypes$descriptors(List<? extends SimpleType> types) {
        p.d(types, "types");
        boolean z = types.size() > 1;
        if (!x.f38657a || z) {
            ArrayList arrayList = new ArrayList();
            for (SimpleType simpleType : types) {
                if (simpleType.getConstructor() instanceof IntersectionTypeConstructor) {
                    Collection<KotlinType> supertypes = simpleType.getConstructor().mo7371getSupertypes();
                    p.b(supertypes, "type.constructor.supertypes");
                    Collection<KotlinType> collection = supertypes;
                    ArrayList arrayList2 = new ArrayList(n.a(collection, 10));
                    for (KotlinType it2 : collection) {
                        p.b(it2, "it");
                        SimpleType upperIfFlexible = FlexibleTypesKt.upperIfFlexible(it2);
                        SimpleType simpleType2 = upperIfFlexible;
                        if (simpleType.isMarkedNullable()) {
                            simpleType2 = upperIfFlexible.makeNullableAsSpecified(true);
                        }
                        arrayList2.add(simpleType2);
                    }
                    arrayList.addAll(arrayList2);
                } else {
                    arrayList.add(simpleType);
                }
            }
            ArrayList<UnwrappedType> arrayList3 = arrayList;
            ResultNullability resultNullability = ResultNullability.START;
            for (UnwrappedType unwrappedType : arrayList3) {
                resultNullability = resultNullability.combine(unwrappedType);
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                SimpleType simpleType3 = (SimpleType) it3.next();
                SimpleType simpleType4 = simpleType3;
                if (resultNullability == ResultNullability.NOT_NULL) {
                    NewCapturedType newCapturedType = simpleType3;
                    if (simpleType3 instanceof NewCapturedType) {
                        newCapturedType = SpecialTypesKt.withNotNullProjection((NewCapturedType) simpleType3);
                    }
                    simpleType4 = SpecialTypesKt.makeSimpleTypeDefinitelyNotNullOrNotNull$default(newCapturedType, false, 1, null);
                }
                linkedHashSet.add(simpleType4);
            }
            return intersectTypesWithoutIntersectionType(linkedHashSet);
        }
        throw new AssertionError(p.a("Size should be at least 2, but it is ", (Object) Integer.valueOf(types.size())));
    }
}
