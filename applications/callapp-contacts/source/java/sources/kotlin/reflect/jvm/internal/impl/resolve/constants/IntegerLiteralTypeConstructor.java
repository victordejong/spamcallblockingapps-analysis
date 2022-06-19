package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.C18399h;
import kotlin.Lazy;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18501ah;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor.class */
public final class IntegerLiteralTypeConstructor implements TypeConstructor {
    public static final C19771a Companion = new C19771a(null);
    private final AbstractC18999ab module;
    private final Set<KotlinType> possibleTypes;
    private final Lazy supertypes$delegate;
    private final SimpleType type;
    private final long value;

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor$a.class */
    public static final class C19771a {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor$a$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor$a$a.class */
        public enum EnumC19772a {
            COMMON_SUPER_TYPE,
            INTERSECTION_TYPE
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor$a$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor$a$b.class */
        public final /* synthetic */ class C19773b {

            /* renamed from: a */
            public static final /* synthetic */ int[] f65961a;

            static {
                int[] iArr = new int[EnumC19772a.values().length];
                iArr[EnumC19772a.COMMON_SUPER_TYPE.ordinal()] = 1;
                iArr[EnumC19772a.INTERSECTION_TYPE.ordinal()] = 2;
                f65961a = iArr;
            }
        }

        private C19771a() {
        }

        public /* synthetic */ C19771a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        private static SimpleType m1493a(IntegerLiteralTypeConstructor integerLiteralTypeConstructor, SimpleType simpleType) {
            if (integerLiteralTypeConstructor.getPossibleTypes().contains(simpleType)) {
                return simpleType;
            }
            return null;
        }

        /* renamed from: a */
        public final SimpleType m1494a(Collection<? extends SimpleType> types) {
            Set set;
            C18524p.m3840d(types, "types");
            EnumC19772a enumC19772a = EnumC19772a.INTERSECTION_TYPE;
            if (types.isEmpty()) {
                return null;
            }
            Iterator<T> it2 = types.iterator();
            if (!it2.hasNext()) {
                throw new UnsupportedOperationException("Empty collection can't be reduced.");
            }
            Object next = it2.next();
            while (true) {
                Object obj = next;
                if (!it2.hasNext()) {
                    return (SimpleType) obj;
                }
                SimpleType simpleType = (SimpleType) it2.next();
                SimpleType simpleType2 = (SimpleType) obj;
                if (simpleType2 != null && simpleType != null) {
                    TypeConstructor constructor = simpleType2.getConstructor();
                    TypeConstructor constructor2 = simpleType.getConstructor();
                    boolean z = constructor instanceof IntegerLiteralTypeConstructor;
                    if (z && (constructor2 instanceof IntegerLiteralTypeConstructor)) {
                        IntegerLiteralTypeConstructor integerLiteralTypeConstructor = (IntegerLiteralTypeConstructor) constructor;
                        IntegerLiteralTypeConstructor integerLiteralTypeConstructor2 = (IntegerLiteralTypeConstructor) constructor2;
                        int i = C19773b.f65961a[enumC19772a.ordinal()];
                        if (i == 1) {
                            Set<KotlinType> intersect = integerLiteralTypeConstructor.getPossibleTypes();
                            Set<KotlinType> elements = integerLiteralTypeConstructor2.getPossibleTypes();
                            C18524p.m3840d(intersect, "$this$intersect");
                            C18524p.m3840d(elements, "other");
                            set = C18282n.m4109m(intersect);
                            Set retainAll = set;
                            C18524p.m3840d(retainAll, "$this$retainAll");
                            C18524p.m3840d(elements, "elements");
                            C18501ah.m3873b(retainAll).retainAll(C18282n.m4162a((Iterable) elements, (Iterable) retainAll));
                        } else if (i != 2) {
                            throw new NoWhenBranchMatchedException();
                        } else {
                            set = C18282n.m4140b((Iterable) integerLiteralTypeConstructor.getPossibleTypes(), (Iterable) integerLiteralTypeConstructor2.getPossibleTypes());
                        }
                        IntegerLiteralTypeConstructor integerLiteralTypeConstructor3 = new IntegerLiteralTypeConstructor(integerLiteralTypeConstructor.value, integerLiteralTypeConstructor.module, set, null);
                        KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
                        AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
                        next = KotlinTypeFactory.integerLiteralType(AbstractC18983g.C18984a.m2705a(), integerLiteralTypeConstructor3, false);
                    } else if (z) {
                        next = m1493a((IntegerLiteralTypeConstructor) constructor, simpleType);
                    } else if (constructor2 instanceof IntegerLiteralTypeConstructor) {
                        next = m1493a((IntegerLiteralTypeConstructor) constructor2, simpleType2);
                    }
                }
                next = null;
            }
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor$b.class */
    public static final class C19774b extends AbstractC18526r implements Function1<KotlinType, CharSequence> {

        /* renamed from: a */
        public static final C19774b f65962a = new C19774b();

        C19774b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ CharSequence invoke(KotlinType kotlinType) {
            KotlinType it2 = kotlinType;
            C18524p.m3840d(it2, "it");
            return it2.toString();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private IntegerLiteralTypeConstructor(long j, AbstractC18999ab abstractC18999ab, Set<? extends KotlinType> set) {
        KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
        AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
        this.type = KotlinTypeFactory.integerLiteralType(AbstractC18983g.C18984a.m2705a(), this, false);
        this.supertypes$delegate = C18399h.m3897a(new IntegerLiteralTypeConstructor$supertypes$2(this));
        this.value = j;
        this.module = abstractC18999ab;
        this.possibleTypes = set;
    }

    public /* synthetic */ IntegerLiteralTypeConstructor(long j, AbstractC18999ab abstractC18999ab, Set set, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, abstractC18999ab, set);
    }

    private final List<KotlinType> getSupertypes() {
        return (List) this.supertypes$delegate.mo1102a();
    }

    public final boolean isContainsOnlyUnsignedTypes() {
        AbstractC18999ab abstractC18999ab = this.module;
        C18524p.m3840d(abstractC18999ab, "<this>");
        List<KotlinType> b = C18282n.m4167b((Object[]) new SimpleType[]{abstractC18999ab.getBuiltIns().m2788l(), abstractC18999ab.getBuiltIns().m2786m(), abstractC18999ab.getBuiltIns().m2792j(), abstractC18999ab.getBuiltIns().m2790k()});
        if (!(b instanceof Collection) || !b.isEmpty()) {
            for (KotlinType kotlinType : b) {
                if (!(!getPossibleTypes().contains(kotlinType))) {
                    return false;
                }
            }
            return true;
        }
        return true;
    }

    private final String valueToString() {
        return "[" + C18282n.m4148a(this.possibleTypes, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C19774b.f65962a, 30) + ']';
    }

    public final boolean checkConstructor(TypeConstructor constructor) {
        C18524p.m3840d(constructor, "constructor");
        Set<KotlinType> set = this.possibleTypes;
        if (!(set instanceof Collection) || !set.isEmpty()) {
            for (KotlinType kotlinType : set) {
                if (C18524p.m3850a(kotlinType.getConstructor(), constructor)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final AbstractC18940g getBuiltIns() {
        return this.module.getBuiltIns();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final AbstractC19129g getDeclarationDescriptor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final List<TypeParameterDescriptor> getParameters() {
        return C18297z.f63400a;
    }

    public final Set<KotlinType> getPossibleTypes() {
        return this.possibleTypes;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    /* renamed from: getSupertypes */
    public final Collection<KotlinType> mo53752getSupertypes() {
        return getSupertypes();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final boolean isDenotable() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final TypeConstructor refine(KotlinTypeRefiner kotlinTypeRefiner) {
        C18524p.m3840d(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }

    public final String toString() {
        return C18524p.m3847a("IntegerLiteralType", (Object) valueToString());
    }
}
