package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.NoWhenBranchMatchedException;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.h;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.ah;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor.class */
public final class IntegerLiteralTypeConstructor implements TypeConstructor {
    public static final a Companion = new a(null);
    private final ab module;
    private final Set<KotlinType> possibleTypes;
    private final Lazy supertypes$delegate;
    private final SimpleType type;
    private final long value;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor$a.class */
    public static final class a {

        /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor$a$a.class */
        enum EnumC0708a {
            COMMON_SUPER_TYPE,
            INTERSECTION_TYPE
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor$a$b.class */
        public final /* synthetic */ class b {

            /* renamed from: a  reason: collision with root package name */
            public static final /* synthetic */ int[] f38246a;

            static {
                int[] iArr = new int[EnumC0708a.values().length];
                iArr[EnumC0708a.COMMON_SUPER_TYPE.ordinal()] = 1;
                iArr[EnumC0708a.INTERSECTION_TYPE.ordinal()] = 2;
                f38246a = iArr;
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private static SimpleType a(IntegerLiteralTypeConstructor integerLiteralTypeConstructor, SimpleType simpleType) {
            if (integerLiteralTypeConstructor.getPossibleTypes().contains(simpleType)) {
                return simpleType;
            }
            return null;
        }

        public final SimpleType a(Collection<? extends SimpleType> types) {
            Set set;
            p.d(types, "types");
            EnumC0708a aVar = EnumC0708a.INTERSECTION_TYPE;
            if (types.isEmpty()) {
                return null;
            }
            Iterator<T> it2 = types.iterator();
            if (it2.hasNext()) {
                Object next = it2.next();
                while (it2.hasNext()) {
                    SimpleType simpleType = (SimpleType) it2.next();
                    SimpleType simpleType2 = (SimpleType) next;
                    if (!(simpleType2 == null || simpleType == null)) {
                        TypeConstructor constructor = simpleType2.getConstructor();
                        TypeConstructor constructor2 = simpleType.getConstructor();
                        boolean z = constructor instanceof IntegerLiteralTypeConstructor;
                        if (z && (constructor2 instanceof IntegerLiteralTypeConstructor)) {
                            IntegerLiteralTypeConstructor integerLiteralTypeConstructor = (IntegerLiteralTypeConstructor) constructor;
                            IntegerLiteralTypeConstructor integerLiteralTypeConstructor2 = (IntegerLiteralTypeConstructor) constructor2;
                            int i = b.f38246a[aVar.ordinal()];
                            if (i == 1) {
                                Set<KotlinType> intersect = integerLiteralTypeConstructor.getPossibleTypes();
                                Set<KotlinType> elements = integerLiteralTypeConstructor2.getPossibleTypes();
                                p.d(intersect, "$this$intersect");
                                p.d(elements, "other");
                                set = n.m(intersect);
                                Set retainAll = set;
                                p.d(retainAll, "$this$retainAll");
                                p.d(elements, "elements");
                                ah.b(retainAll).retainAll(n.a((Iterable) elements, (Iterable) retainAll));
                            } else if (i == 2) {
                                set = n.b((Iterable) integerLiteralTypeConstructor.getPossibleTypes(), (Iterable) integerLiteralTypeConstructor2.getPossibleTypes());
                            } else {
                                throw new NoWhenBranchMatchedException();
                            }
                            IntegerLiteralTypeConstructor integerLiteralTypeConstructor3 = new IntegerLiteralTypeConstructor(integerLiteralTypeConstructor.value, integerLiteralTypeConstructor.module, set, null);
                            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
                            g.a aVar2 = g.f37361a;
                            next = KotlinTypeFactory.integerLiteralType(g.a.a(), integerLiteralTypeConstructor3, false);
                        } else if (z) {
                            next = a((IntegerLiteralTypeConstructor) constructor, simpleType);
                        } else if (constructor2 instanceof IntegerLiteralTypeConstructor) {
                            next = a((IntegerLiteralTypeConstructor) constructor2, simpleType2);
                        }
                    }
                    next = null;
                }
                return (SimpleType) next;
            }
            throw new UnsupportedOperationException("Empty collection can't be reduced.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor$b.class */
    public static final class b extends r implements Function1<KotlinType, CharSequence> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f38247a = new b();

        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ CharSequence invoke(KotlinType kotlinType) {
            KotlinType it2 = kotlinType;
            p.d(it2, "it");
            return it2.toString();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private IntegerLiteralTypeConstructor(long j, ab abVar, Set<? extends KotlinType> set) {
        KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
        g.a aVar = g.f37361a;
        this.type = KotlinTypeFactory.integerLiteralType(g.a.a(), this, false);
        this.supertypes$delegate = h.a(new IntegerLiteralTypeConstructor$supertypes$2(this));
        this.value = j;
        this.module = abVar;
        this.possibleTypes = set;
    }

    public /* synthetic */ IntegerLiteralTypeConstructor(long j, ab abVar, Set set, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, abVar, set);
    }

    private final List<KotlinType> getSupertypes() {
        return (List) this.supertypes$delegate.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isContainsOnlyUnsignedTypes() {
        ab abVar = this.module;
        p.d(abVar, "<this>");
        List<KotlinType> b2 = n.b((Object[]) new SimpleType[]{abVar.getBuiltIns().l(), abVar.getBuiltIns().m(), abVar.getBuiltIns().j(), abVar.getBuiltIns().k()});
        if ((b2 instanceof Collection) && b2.isEmpty()) {
            return true;
        }
        for (KotlinType kotlinType : b2) {
            if (!(!getPossibleTypes().contains(kotlinType))) {
                return false;
            }
        }
        return true;
    }

    private final String valueToString() {
        return "[" + n.a(this.possibleTypes, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, b.f38247a, 30) + ']';
    }

    public final boolean checkConstructor(TypeConstructor constructor) {
        p.d(constructor, "constructor");
        Set<KotlinType> set = this.possibleTypes;
        if ((set instanceof Collection) && set.isEmpty()) {
            return false;
        }
        for (KotlinType kotlinType : set) {
            if (p.a(kotlinType.getConstructor(), constructor)) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final kotlin.reflect.jvm.internal.impl.builtins.g getBuiltIns() {
        return this.module.getBuiltIns();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final kotlin.reflect.jvm.internal.impl.descriptors.g getDeclarationDescriptor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final List<TypeParameterDescriptor> getParameters() {
        return z.f36608a;
    }

    public final Set<KotlinType> getPossibleTypes() {
        return this.possibleTypes;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    /* renamed from: getSupertypes  reason: collision with other method in class */
    public final Collection<KotlinType> mo7371getSupertypes() {
        return getSupertypes();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final boolean isDenotable() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final TypeConstructor refine(KotlinTypeRefiner kotlinTypeRefiner) {
        p.d(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }

    public final String toString() {
        return p.a("IntegerLiteralType", (Object) valueToString());
    }
}
