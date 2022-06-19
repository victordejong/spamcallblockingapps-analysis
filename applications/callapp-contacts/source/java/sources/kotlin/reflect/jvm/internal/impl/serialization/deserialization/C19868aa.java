package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18521m;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.p531g.C18381k;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.builtins.C18929f;
import kotlin.reflect.jvm.internal.impl.builtins.C18956k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19033ax;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.C19216v;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18808b;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18817f;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.C19902b;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.SpecialTypesKt;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionForAbsentTypeParameter;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.aa */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/aa.class */
public final class C19868aa {

    /* renamed from: a */
    final C19949k f66079a;

    /* renamed from: b */
    boolean f66080b;

    /* renamed from: c */
    private final C19868aa f66081c;

    /* renamed from: d */
    private final String f66082d;

    /* renamed from: e */
    private final String f66083e;

    /* renamed from: f */
    private final Function1<Integer, AbstractC19129g> f66084f;

    /* renamed from: g */
    private final Function1<Integer, AbstractC19129g> f66085g;

    /* renamed from: h */
    private final Map<Integer, TypeParameterDescriptor> f66086h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.aa$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$a.class */
    public static final class C19869a extends AbstractC18526r implements Function1<Integer, AbstractC19129g> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19869a() {
            super(1);
            C19868aa.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ AbstractC19129g invoke(Integer num) {
            int intValue = num.intValue();
            C19868aa c19868aa = C19868aa.this;
            C18960a m1229a = C19970u.m1229a(c19868aa.f66079a.f66270b, intValue);
            return m1229a.f64682a ? c19868aa.f66079a.f66269a.m1261a(m1229a) : C19216v.m2499a(c19868aa.f66079a.f66269a.f66250b, m1229a);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.aa$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$b.class */
    public static final class C19870b extends AbstractC18526r implements Function0<List<? extends AbstractC18977c>> {

        /* renamed from: b */
        final /* synthetic */ C18702a.C18768p f66089b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19870b(C18702a.C18768p c18768p) {
            super(0);
            C19868aa.this = r4;
            this.f66089b = c18768p;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends AbstractC18977c> invoke() {
            return C19868aa.this.f66079a.f66269a.f66253e.mo1364a(this.f66089b, C19868aa.this.f66079a.f66270b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.aa$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$c.class */
    public static final class C19871c extends AbstractC18526r implements Function1<Integer, AbstractC19129g> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19871c() {
            super(1);
            C19868aa.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ AbstractC19129g invoke(Integer num) {
            int intValue = num.intValue();
            C19868aa c19868aa = C19868aa.this;
            C18960a classId = C19970u.m1229a(c19868aa.f66079a.f66270b, intValue);
            AbstractC19033ax abstractC19033ax = null;
            if (classId.f64682a) {
                return null;
            }
            AbstractC18999ab abstractC18999ab = c19868aa.f66079a.f66269a.f66250b;
            C18524p.m3840d(abstractC18999ab, "<this>");
            C18524p.m3840d(classId, "classId");
            AbstractC19129g m2499a = C19216v.m2499a(abstractC18999ab, classId);
            if (m2499a instanceof AbstractC19033ax) {
                abstractC19033ax = (AbstractC19033ax) m2499a;
            }
            return abstractC19033ax;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.aa$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$d.class */
    public final /* synthetic */ class C19872d extends C18521m implements Function1<C18960a, C18960a> {

        /* renamed from: a */
        public static final C19872d f66091a = new C19872d();

        C19872d() {
            super(1);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e, kotlin.reflect.KCallable
        public final String getName() {
            return "getOuterClassId";
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final KDeclarationContainer getOwner() {
            return C18496ac.m3882b(C18960a.class);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final String getSignature() {
            return "getOuterClassId()Lorg/jetbrains/kotlin/name/ClassId;";
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C18960a invoke(C18960a c18960a) {
            C18960a p0 = c18960a;
            C18524p.m3840d(p0, "p0");
            return p0.m2750d();
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.aa$e */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$e.class */
    public static final class C19873e extends AbstractC18526r implements Function1<C18702a.C18768p, C18702a.C18768p> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19873e() {
            super(1);
            C19868aa.this = r4;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C18702a.C18768p invoke(C18702a.C18768p c18768p) {
            C18702a.C18768p it2 = c18768p;
            C18524p.m3840d(it2, "it");
            return C18817f.m3046b(it2, C19868aa.this.f66079a.f66272d);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.aa$f */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$f.class */
    public static final class C19874f extends AbstractC18526r implements Function1<C18702a.C18768p, Integer> {

        /* renamed from: a */
        public static final C19874f f66093a = new C19874f();

        C19874f() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Integer invoke(C18702a.C18768p c18768p) {
            C18702a.C18768p it2 = c18768p;
            C18524p.m3840d(it2, "it");
            return Integer.valueOf(it2.m3280c());
        }
    }

    public C19868aa(C19949k c, C19868aa c19868aa, List<C18702a.C18779r> typeParameterProtos, String debugName, String containerPresentableName, boolean z) {
        LinkedHashMap linkedHashMap;
        C18524p.m3840d(c, "c");
        C18524p.m3840d(typeParameterProtos, "typeParameterProtos");
        C18524p.m3840d(debugName, "debugName");
        C18524p.m3840d(containerPresentableName, "containerPresentableName");
        this.f66079a = c;
        this.f66081c = c19868aa;
        this.f66082d = debugName;
        this.f66083e = containerPresentableName;
        this.f66080b = z;
        this.f66084f = c.f66269a.f66249a.mo2307b(new C19869a());
        this.f66085g = c.f66269a.f66249a.mo2307b(new C19871c());
        if (typeParameterProtos.isEmpty()) {
            linkedHashMap = C18247ai.m4257a();
        } else {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            int i = 0;
            for (C18702a.C18779r c18779r : typeParameterProtos) {
                linkedHashMap2.put(Integer.valueOf(c18779r.f64169b), new DeserializedTypeParameterDescriptor(this.f66079a, c18779r, i));
                i++;
            }
            linkedHashMap = linkedHashMap2;
        }
        this.f66086h = linkedHashMap;
    }

    public /* synthetic */ C19868aa(C19949k c19949k, C19868aa c19868aa, List list, String str, String str2, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(c19949k, c19868aa, list, str, str2, (i & 32) != 0 ? false : z);
    }

    /* renamed from: a */
    private static final List<C18702a.C18768p.C18770a> m1379a(C18702a.C18768p c18768p, C19868aa c19868aa) {
        List<C18702a.C18768p.C18770a> argumentList = c18768p.f64095b;
        C18524p.m3843b(argumentList, "argumentList");
        List<C18702a.C18768p.C18770a> list = argumentList;
        C18702a.C18768p m3046b = C18817f.m3046b(c18768p, c19868aa.f66079a.f66272d);
        List<C18702a.C18768p.C18770a> m1379a = m3046b == null ? null : m1379a(m3046b, c19868aa);
        List<C18702a.C18768p.C18770a> list2 = m1379a;
        if (m1379a == null) {
            list2 = C18297z.f63400a;
        }
        return C18282n.m4135b((Collection) list, list2);
    }

    /* renamed from: a */
    private static final AbstractC19070d m1375a(C19868aa c19868aa, C18702a.C18768p c18768p, int i) {
        C18960a m1229a = C19970u.m1229a(c19868aa.f66079a.f66270b, i);
        List<Integer> g = C18381k.m4011g(C18381k.m4015d(C18381k.m4031a(c18768p, new C19873e()), C19874f.f66093a));
        int h = C18381k.m4010h(C18381k.m4031a(m1229a, C19872d.f66091a));
        while (g.size() < h) {
            g.add(0);
        }
        return c19868aa.f66079a.f66269a.f66260l.m2699a(m1229a, g);
    }

    /* renamed from: a */
    private final SimpleType m1376a(AbstractC18983g abstractC18983g, TypeConstructor typeConstructor, List<? extends TypeProjection> list, boolean z) {
        int size;
        int size2 = typeConstructor.getParameters().size() - list.size();
        SimpleType simpleType = null;
        if (size2 == 0) {
            simpleType = m1370b(abstractC18983g, typeConstructor, list, z);
        } else if (size2 == 1 && (size = list.size() - 1) >= 0) {
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            TypeConstructor typeConstructor2 = typeConstructor.getBuiltIns().m2836a(size).getTypeConstructor();
            C18524p.m3843b(typeConstructor2, "functionTypeConstructor.builtIns.getSuspendFunction(arity).typeConstructor");
            simpleType = KotlinTypeFactory.simpleType$default(abstractC18983g, typeConstructor2, list, z, null, 16, null);
        }
        if (simpleType == null) {
            SimpleType createErrorTypeWithArguments = ErrorUtils.createErrorTypeWithArguments(C18524p.m3847a("Bad suspend function in metadata with constructor: ", (Object) typeConstructor), list);
            C18524p.m3843b(createErrorTypeWithArguments, "createErrorTypeWithArguments(\n            \"Bad suspend function in metadata with constructor: $functionTypeConstructor\",\n            arguments\n        )");
            return createErrorTypeWithArguments;
        }
        return simpleType;
    }

    /* renamed from: a */
    private final SimpleType m1374a(KotlinType kotlinType) {
        boolean releaseCoroutines = this.f66079a.f66269a.f66251c.getReleaseCoroutines();
        TypeProjection typeProjection = (TypeProjection) C18282n.m4117h((List<? extends Object>) C18929f.m2852f(kotlinType));
        KotlinType type = typeProjection == null ? null : typeProjection.getType();
        if (type == null) {
            return null;
        }
        AbstractC19129g declarationDescriptor = type.getConstructor().getDeclarationDescriptor();
        C18961b m1528b = declarationDescriptor == null ? null : C19756a.m1528b(declarationDescriptor);
        if (type.getArguments().size() != 1 || (!C18956k.m2763a(m1528b, true) && !C18956k.m2763a(m1528b, false))) {
            return (SimpleType) kotlinType;
        }
        KotlinType type2 = ((TypeProjection) C18282n.m4115i((List<? extends Object>) type.getArguments())).getType();
        C18524p.m3843b(type2, "continuationArgumentType.arguments.single().type");
        AbstractC19193k abstractC19193k = this.f66079a.f66271c;
        AbstractC19193k abstractC19193k2 = abstractC19193k;
        if (!(abstractC19193k instanceof AbstractC18973a)) {
            abstractC19193k2 = null;
        }
        AbstractC18973a abstractC18973a = (AbstractC18973a) abstractC19193k2;
        if (C18524p.m3850a(abstractC18973a == null ? null : C19756a.m1524f(abstractC18973a), C19979z.f66341a)) {
            return m1373a(kotlinType, type2);
        }
        boolean z = true;
        if (!this.f66080b) {
            z = releaseCoroutines && C18956k.m2763a(m1528b, releaseCoroutines ^ true);
        }
        this.f66080b = z;
        return m1373a(kotlinType, type2);
    }

    /* renamed from: a */
    private static SimpleType m1373a(KotlinType kotlinType, KotlinType kotlinType2) {
        AbstractC18940g builtIns = TypeUtilsKt.getBuiltIns(kotlinType);
        AbstractC18983g annotations = kotlinType.getAnnotations();
        KotlinType m2854d = C18929f.m2854d(kotlinType);
        List<TypeProjection> k = C18282n.m4111k((List) C18929f.m2852f(kotlinType));
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) k, 10));
        for (TypeProjection typeProjection : k) {
            arrayList.add(typeProjection.getType());
        }
        return C18929f.m2861a(builtIns, annotations, m2854d, arrayList, null, kotlinType2, true).makeNullableAsSpecified(kotlinType.isMarkedNullable());
    }

    /* renamed from: a */
    private final TypeConstructor m1381a(int i) {
        C19868aa c19868aa;
        C19868aa c19868aa2 = this;
        do {
            TypeParameterDescriptor typeParameterDescriptor = c19868aa2.f66086h.get(Integer.valueOf(i));
            TypeConstructor typeConstructor = typeParameterDescriptor == null ? null : typeParameterDescriptor.getTypeConstructor();
            if (typeConstructor != null) {
                return typeConstructor;
            }
            c19868aa = c19868aa2.f66081c;
            c19868aa2 = c19868aa;
        } while (c19868aa != null);
        return null;
    }

    /* renamed from: a */
    private final TypeProjection m1377a(TypeParameterDescriptor typeParameterDescriptor, C18702a.C18768p.C18770a c18770a) {
        if (c18770a.f64115b == C18702a.C18768p.C18770a.EnumC18773b.STAR) {
            return typeParameterDescriptor == null ? new StarProjectionForAbsentTypeParameter(this.f66079a.f66269a.f66250b.getBuiltIns()) : new StarProjectionImpl(typeParameterDescriptor);
        }
        C19975x c19975x = C19975x.f66329a;
        C18702a.C18768p.C18770a.EnumC18773b enumC18773b = c18770a.f64115b;
        C18524p.m3843b(enumC18773b, "typeArgumentProto.projection");
        Variance m1223a = C19975x.m1223a(enumC18773b);
        C18702a.C18768p m3051a = C18817f.m3051a(c18770a, this.f66079a.f66272d);
        return m3051a == null ? new TypeProjectionImpl(ErrorUtils.createErrorType("No type recorded")) : new TypeProjectionImpl(m1223a, m1380a(m3051a));
    }

    /* renamed from: b */
    private final SimpleType m1372b(int i) {
        if (C19970u.m1229a(this.f66079a.f66270b, i).f64682a) {
        }
        return null;
    }

    /* renamed from: b */
    private final SimpleType m1370b(AbstractC18983g abstractC18983g, TypeConstructor typeConstructor, List<? extends TypeProjection> list, boolean z) {
        KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
        SimpleType simpleType$default = KotlinTypeFactory.simpleType$default(abstractC18983g, typeConstructor, list, z, null, 16, null);
        if (!C18929f.m2857a(simpleType$default)) {
            return null;
        }
        return m1374a(simpleType$default);
    }

    /* renamed from: b */
    private final TypeConstructor m1371b(C18702a.C18768p c18768p) {
        Object obj;
        if (c18768p.m3265m()) {
            AbstractC19129g invoke = this.f66084f.invoke(Integer.valueOf(c18768p.f64100g));
            AbstractC19070d abstractC19070d = invoke;
            if (invoke == null) {
                abstractC19070d = m1375a(this, c18768p, c18768p.f64100g);
            }
            TypeConstructor typeConstructor = abstractC19070d.getTypeConstructor();
            C18524p.m3843b(typeConstructor, "classifierDescriptors(proto.className) ?: notFoundClass(proto.className)).typeConstructor");
            return typeConstructor;
        } else if (c18768p.m3264n()) {
            TypeConstructor m1381a = m1381a(c18768p.f64101h);
            if (m1381a != null) {
                return m1381a;
            }
            TypeConstructor createErrorTypeConstructor = ErrorUtils.createErrorTypeConstructor("Unknown type parameter " + c18768p.f64101h + ". Please try recompiling module containing \"" + this.f66083e + '\"');
            C18524p.m3843b(createErrorTypeConstructor, "createErrorTypeConstructor(\n                        \"Unknown type parameter ${proto.typeParameter}. Please try recompiling module containing \\\"$containerPresentableName\\\"\"\n                    )");
            return createErrorTypeConstructor;
        } else if (!c18768p.m3263o()) {
            if (!c18768p.m3262p()) {
                TypeConstructor createErrorTypeConstructor2 = ErrorUtils.createErrorTypeConstructor("Unknown type");
                C18524p.m3843b(createErrorTypeConstructor2, "createErrorTypeConstructor(\"Unknown type\")");
                return createErrorTypeConstructor2;
            }
            AbstractC19129g invoke2 = this.f66085g.invoke(Integer.valueOf(c18768p.f64103j));
            AbstractC19070d abstractC19070d2 = invoke2;
            if (invoke2 == null) {
                abstractC19070d2 = m1375a(this, c18768p, c18768p.f64103j);
            }
            TypeConstructor typeConstructor2 = abstractC19070d2.getTypeConstructor();
            C18524p.m3843b(typeConstructor2, "typeAliasDescriptors(proto.typeAliasName) ?: notFoundClass(proto.typeAliasName)).typeConstructor");
            return typeConstructor2;
        } else {
            AbstractC19193k abstractC19193k = this.f66079a.f66271c;
            String mo2927a = this.f66079a.f66270b.mo2927a(c18768p.f64102i);
            Iterator<T> it2 = m1382a().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                if (C18524p.m3850a((Object) ((TypeParameterDescriptor) obj).getName().m2721a(), (Object) mo2927a)) {
                    break;
                }
            }
            TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) obj;
            TypeConstructor typeConstructor3 = typeParameterDescriptor == null ? null : typeParameterDescriptor.getTypeConstructor();
            TypeConstructor typeConstructor4 = typeConstructor3;
            if (typeConstructor3 == null) {
                typeConstructor4 = ErrorUtils.createErrorTypeConstructor("Deserialized type parameter " + mo2927a + " in " + abstractC19193k);
            }
            C18524p.m3843b(typeConstructor4, "{\n                val container = c.containingDeclaration\n                val name = c.nameResolver.getString(proto.typeParameterName)\n                val parameter = ownTypeParameters.find { it.name.asString() == name }\n                parameter?.typeConstructor ?: ErrorUtils.createErrorTypeConstructor(\"Deserialized type parameter $name in $container\")\n            }");
            return typeConstructor4;
        }
    }

    /* renamed from: a */
    public final List<TypeParameterDescriptor> m1382a() {
        return C18282n.m4118h(this.f66086h.values());
    }

    /* renamed from: a */
    public final KotlinType m1380a(C18702a.C18768p proto) {
        C18524p.m3840d(proto, "proto");
        if (proto.m3272g()) {
            String mo2927a = this.f66079a.f66270b.mo2927a(proto.f64097d);
            SimpleType m1378a = m1378a(proto, true);
            C18702a.C18768p m3050a = C18817f.m3050a(proto, this.f66079a.f66272d);
            C18524p.m3851a(m3050a);
            return this.f66079a.f66269a.f66258j.mo1250a(proto, mo2927a, m1378a, m1378a(m3050a, true));
        }
        return m1378a(proto, true);
    }

    /* renamed from: a */
    public final SimpleType m1378a(C18702a.C18768p proto, boolean z) {
        SimpleType simpleType;
        SimpleType withAbbreviation;
        C18524p.m3840d(proto, "proto");
        if (proto.m3265m()) {
            m1372b(proto.f64100g);
        } else if (proto.m3262p()) {
            m1372b(proto.f64103j);
        }
        TypeConstructor m1371b = m1371b(proto);
        if (ErrorUtils.isError(m1371b.getDeclarationDescriptor())) {
            SimpleType createErrorTypeWithCustomConstructor = ErrorUtils.createErrorTypeWithCustomConstructor(m1371b.toString(), m1371b);
            C18524p.m3843b(createErrorTypeWithCustomConstructor, "createErrorTypeWithCustomConstructor(constructor.toString(), constructor)");
            return createErrorTypeWithCustomConstructor;
        }
        C19902b c19902b = new C19902b(this.f66079a.f66269a.f66249a, new C19870b(proto));
        List<C18702a.C18768p.C18770a> m1379a = m1379a(proto, this);
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) m1379a, 10));
        int i = 0;
        for (Object obj : m1379a) {
            if (i < 0) {
                C18282n.m4175a();
            }
            C18702a.C18768p.C18770a c18770a = (C18702a.C18768p.C18770a) obj;
            List<TypeParameterDescriptor> parameters = m1371b.getParameters();
            C18524p.m3843b(parameters, "constructor.parameters");
            arrayList.add(m1377a((TypeParameterDescriptor) C18282n.m4134b((List<? extends Object>) parameters, i), c18770a));
            i++;
        }
        List<? extends TypeProjection> h = C18282n.m4118h((Iterable) arrayList);
        AbstractC19129g declarationDescriptor = m1371b.getDeclarationDescriptor();
        if (!z || !(declarationDescriptor instanceof AbstractC19033ax)) {
            Boolean mo3059b = C18808b.f64280a.mo3059b(proto.f64108o);
            C18524p.m3843b(mo3059b, "SUSPEND_TYPE.get(proto.flags)");
            if (mo3059b.booleanValue()) {
                simpleType = m1376a(c19902b, m1371b, h, proto.f64096c);
            } else {
                KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
                simpleType = KotlinTypeFactory.simpleType$default(c19902b, m1371b, h, proto.f64096c, null, 16, null);
            }
        } else {
            KotlinTypeFactory kotlinTypeFactory2 = KotlinTypeFactory.INSTANCE;
            SimpleType computeExpandedType = KotlinTypeFactory.computeExpandedType((AbstractC19033ax) declarationDescriptor, h);
            SimpleType makeNullableAsSpecified = computeExpandedType.makeNullableAsSpecified(KotlinTypeKt.isNullable(computeExpandedType) || proto.f64096c);
            AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
            simpleType = makeNullableAsSpecified.replaceAnnotations(AbstractC18983g.C18984a.m2704a(C18282n.m4132c((Iterable) c19902b, (Iterable) computeExpandedType.getAnnotations())));
        }
        C18702a.C18768p m3044c = C18817f.m3044c(proto, this.f66079a.f66272d);
        if (m3044c != null && (withAbbreviation = SpecialTypesKt.withAbbreviation(simpleType, m1378a(m3044c, false))) != null) {
            simpleType = withAbbreviation;
        }
        return proto.m3265m() ? this.f66079a.f66269a.f66266r.mo2679a(C19970u.m1229a(this.f66079a.f66270b, proto.f64100g), simpleType) : simpleType;
    }

    public final String toString() {
        String str = this.f66082d;
        C19868aa c19868aa = this.f66081c;
        return C18524p.m3847a(str, (Object) (c19868aa == null ? "" : C18524p.m3847a(". Child of ", (Object) c19868aa.f66082d)));
    }
}
