package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.a.ai;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.g.k;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.ax;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.v;
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
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/aa.class */
public final class aa {

    /* renamed from: a  reason: collision with root package name */
    final k f38331a;

    /* renamed from: b  reason: collision with root package name */
    boolean f38332b;

    /* renamed from: c  reason: collision with root package name */
    private final aa f38333c;

    /* renamed from: d  reason: collision with root package name */
    private final String f38334d;
    private final String e;
    private final Function1<Integer, g> f;
    private final Function1<Integer, g> g;
    private final Map<Integer, TypeParameterDescriptor> h;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$a.class */
    static final class a extends r implements Function1<Integer, g> {
        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ g invoke(Integer num) {
            int intValue = num.intValue();
            aa aaVar = aa.this;
            kotlin.reflect.jvm.internal.impl.c.a a2 = u.a(aaVar.f38331a.f38446b, intValue);
            return a2.f37331a ? aaVar.f38331a.f38445a.a(a2) : v.a(aaVar.f38331a.f38445a.f38442b, a2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$b.class */
    public static final class b extends r implements Function0<List<? extends kotlin.reflect.jvm.internal.impl.descriptors.a.c>> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ a.p f38337b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(a.p pVar) {
            super(0);
            this.f38337b = pVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends kotlin.reflect.jvm.internal.impl.descriptors.a.c> invoke() {
            return aa.this.f38331a.f38445a.e.a(this.f38337b, aa.this.f38331a.f38446b);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$c.class */
    static final class c extends r implements Function1<Integer, g> {
        c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ g invoke(Integer num) {
            int intValue = num.intValue();
            aa aaVar = aa.this;
            kotlin.reflect.jvm.internal.impl.c.a classId = u.a(aaVar.f38331a.f38446b, intValue);
            ax axVar = null;
            if (classId.f37331a) {
                return null;
            }
            ab abVar = aaVar.f38331a.f38445a.f38442b;
            p.d(abVar, "<this>");
            p.d(classId, "classId");
            g a2 = v.a(abVar, classId);
            if (a2 instanceof ax) {
                axVar = (ax) a2;
            }
            return axVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$d.class */
    public final /* synthetic */ class d extends m implements Function1<kotlin.reflect.jvm.internal.impl.c.a, kotlin.reflect.jvm.internal.impl.c.a> {

        /* renamed from: a  reason: collision with root package name */
        public static final d f38339a = new d();

        d() {
            super(1);
        }

        @Override // kotlin.jvm.internal.e, kotlin.reflect.KCallable
        public final String getName() {
            return "getOuterClassId";
        }

        @Override // kotlin.jvm.internal.e
        public final KDeclarationContainer getOwner() {
            return ac.b(kotlin.reflect.jvm.internal.impl.c.a.class);
        }

        @Override // kotlin.jvm.internal.e
        public final String getSignature() {
            return "getOuterClassId()Lorg/jetbrains/kotlin/name/ClassId;";
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ kotlin.reflect.jvm.internal.impl.c.a invoke(kotlin.reflect.jvm.internal.impl.c.a aVar) {
            kotlin.reflect.jvm.internal.impl.c.a p0 = aVar;
            p.d(p0, "p0");
            return p0.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$e.class */
    public static final class e extends r implements Function1<a.p, a.p> {
        e() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ a.p invoke(a.p pVar) {
            a.p it2 = pVar;
            p.d(it2, "it");
            return kotlin.reflect.jvm.internal.impl.b.b.f.b(it2, aa.this.f38331a.f38448d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$f.class */
    public static final class f extends r implements Function1<a.p, Integer> {

        /* renamed from: a  reason: collision with root package name */
        public static final f f38341a = new f();

        f() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ Integer invoke(a.p pVar) {
            a.p it2 = pVar;
            p.d(it2, "it");
            return Integer.valueOf(it2.c());
        }
    }

    public aa(k c2, aa aaVar, List<a.r> typeParameterProtos, String debugName, String containerPresentableName, boolean z) {
        LinkedHashMap linkedHashMap;
        p.d(c2, "c");
        p.d(typeParameterProtos, "typeParameterProtos");
        p.d(debugName, "debugName");
        p.d(containerPresentableName, "containerPresentableName");
        this.f38331a = c2;
        this.f38333c = aaVar;
        this.f38334d = debugName;
        this.e = containerPresentableName;
        this.f38332b = z;
        this.f = c2.f38445a.f38441a.b(new a());
        this.g = c2.f38445a.f38441a.b(new c());
        if (typeParameterProtos.isEmpty()) {
            linkedHashMap = ai.a();
        } else {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            int i = 0;
            for (a.r rVar : typeParameterProtos) {
                linkedHashMap2.put(Integer.valueOf(rVar.f37106b), new DeserializedTypeParameterDescriptor(this.f38331a, rVar, i));
                i++;
            }
            linkedHashMap = linkedHashMap2;
        }
        this.h = linkedHashMap;
    }

    public /* synthetic */ aa(k kVar, aa aaVar, List list, String str, String str2, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(kVar, aaVar, list, str, str2, (i & 32) != 0 ? false : z);
    }

    private static final List<a.p.C0646a> a(a.p pVar, aa aaVar) {
        List<a.p.C0646a> argumentList = pVar.f37085b;
        p.b(argumentList, "argumentList");
        List<a.p.C0646a> list = argumentList;
        a.p b2 = kotlin.reflect.jvm.internal.impl.b.b.f.b(pVar, aaVar.f38331a.f38448d);
        List<a.p.C0646a> a2 = b2 == null ? null : a(b2, aaVar);
        z zVar = a2;
        if (a2 == null) {
            zVar = z.f36608a;
        }
        return n.b((Collection) list, (Iterable) zVar);
    }

    private static final kotlin.reflect.jvm.internal.impl.descriptors.d a(aa aaVar, a.p pVar, int i) {
        kotlin.reflect.jvm.internal.impl.c.a a2 = u.a(aaVar.f38331a.f38446b, i);
        List<Integer> g = k.g(k.d(k.a(pVar, new e()), f.f38341a));
        int h = k.h(k.a(a2, d.f38339a));
        while (g.size() < h) {
            g.add(0);
        }
        return aaVar.f38331a.f38445a.l.a(a2, g);
    }

    private final SimpleType a(kotlin.reflect.jvm.internal.impl.descriptors.a.g gVar, TypeConstructor typeConstructor, List<? extends TypeProjection> list, boolean z) {
        int size;
        int size2 = typeConstructor.getParameters().size() - list.size();
        SimpleType simpleType = null;
        if (size2 == 0) {
            simpleType = b(gVar, typeConstructor, list, z);
        } else if (size2 == 1 && (size = list.size() - 1) >= 0) {
            KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
            TypeConstructor typeConstructor2 = typeConstructor.getBuiltIns().a(size).getTypeConstructor();
            p.b(typeConstructor2, "functionTypeConstructor.builtIns.getSuspendFunction(arity).typeConstructor");
            simpleType = KotlinTypeFactory.simpleType$default(gVar, typeConstructor2, list, z, null, 16, null);
        }
        if (simpleType != null) {
            return simpleType;
        }
        SimpleType createErrorTypeWithArguments = ErrorUtils.createErrorTypeWithArguments(p.a("Bad suspend function in metadata with constructor: ", (Object) typeConstructor), list);
        p.b(createErrorTypeWithArguments, "createErrorTypeWithArguments(\n            \"Bad suspend function in metadata with constructor: $functionTypeConstructor\",\n            arguments\n        )");
        return createErrorTypeWithArguments;
    }

    private final SimpleType a(KotlinType kotlinType) {
        boolean releaseCoroutines = this.f38331a.f38445a.f38443c.getReleaseCoroutines();
        TypeProjection typeProjection = (TypeProjection) n.h((List<? extends Object>) kotlin.reflect.jvm.internal.impl.builtins.f.f(kotlinType));
        kotlin.reflect.jvm.internal.impl.c.b bVar = null;
        KotlinType type = typeProjection == null ? null : typeProjection.getType();
        if (type == null) {
            return null;
        }
        g declarationDescriptor = type.getConstructor().getDeclarationDescriptor();
        kotlin.reflect.jvm.internal.impl.c.b b2 = declarationDescriptor == null ? null : kotlin.reflect.jvm.internal.impl.resolve.b.a.b(declarationDescriptor);
        if (type.getArguments().size() != 1 || (!kotlin.reflect.jvm.internal.impl.builtins.k.a(b2, true) && !kotlin.reflect.jvm.internal.impl.builtins.k.a(b2, false))) {
            return (SimpleType) kotlinType;
        }
        KotlinType type2 = ((TypeProjection) n.i((List<? extends Object>) type.getArguments())).getType();
        p.b(type2, "continuationArgumentType.arguments.single().type");
        kotlin.reflect.jvm.internal.impl.descriptors.k kVar = this.f38331a.f38447c;
        kotlin.reflect.jvm.internal.impl.descriptors.k kVar2 = kVar;
        if (!(kVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.a)) {
            kVar2 = null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.a aVar = (kotlin.reflect.jvm.internal.impl.descriptors.a) kVar2;
        if (aVar != null) {
            bVar = kotlin.reflect.jvm.internal.impl.resolve.b.a.f(aVar);
        }
        if (p.a(bVar, z.f38499a)) {
            return a(kotlinType, type2);
        }
        boolean z = true;
        if (!this.f38332b) {
            z = releaseCoroutines && kotlin.reflect.jvm.internal.impl.builtins.k.a(b2, releaseCoroutines ^ true);
        }
        this.f38332b = z;
        return a(kotlinType, type2);
    }

    private static SimpleType a(KotlinType kotlinType, KotlinType kotlinType2) {
        kotlin.reflect.jvm.internal.impl.builtins.g builtIns = TypeUtilsKt.getBuiltIns(kotlinType);
        kotlin.reflect.jvm.internal.impl.descriptors.a.g annotations = kotlinType.getAnnotations();
        KotlinType d2 = kotlin.reflect.jvm.internal.impl.builtins.f.d(kotlinType);
        List<TypeProjection> k = n.k((List) kotlin.reflect.jvm.internal.impl.builtins.f.f(kotlinType));
        ArrayList arrayList = new ArrayList(n.a((Iterable) k, 10));
        for (TypeProjection typeProjection : k) {
            arrayList.add(typeProjection.getType());
        }
        return kotlin.reflect.jvm.internal.impl.builtins.f.a(builtIns, annotations, d2, arrayList, null, kotlinType2, true).makeNullableAsSpecified(kotlinType.isMarkedNullable());
    }

    private final TypeConstructor a(int i) {
        aa aaVar;
        aa aaVar2 = this;
        do {
            TypeParameterDescriptor typeParameterDescriptor = aaVar2.h.get(Integer.valueOf(i));
            TypeConstructor typeConstructor = typeParameterDescriptor == null ? null : typeParameterDescriptor.getTypeConstructor();
            if (typeConstructor != null) {
                return typeConstructor;
            }
            aaVar = aaVar2.f38333c;
            aaVar2 = aaVar;
        } while (aaVar != null);
        return null;
    }

    private final TypeProjection a(TypeParameterDescriptor typeParameterDescriptor, a.p.C0646a aVar) {
        if (aVar.f37089b == a.p.C0646a.b.STAR) {
            return typeParameterDescriptor == null ? new StarProjectionForAbsentTypeParameter(this.f38331a.f38445a.f38442b.getBuiltIns()) : new StarProjectionImpl(typeParameterDescriptor);
        }
        x xVar = x.f38491a;
        a.p.C0646a.b bVar = aVar.f37089b;
        p.b(bVar, "typeArgumentProto.projection");
        Variance a2 = x.a(bVar);
        a.p a3 = kotlin.reflect.jvm.internal.impl.b.b.f.a(aVar, this.f38331a.f38448d);
        return a3 == null ? new TypeProjectionImpl(ErrorUtils.createErrorType("No type recorded")) : new TypeProjectionImpl(a2, a(a3));
    }

    private final SimpleType b(int i) {
        if (u.a(this.f38331a.f38446b, i).f37331a) {
        }
        return null;
    }

    private final SimpleType b(kotlin.reflect.jvm.internal.impl.descriptors.a.g gVar, TypeConstructor typeConstructor, List<? extends TypeProjection> list, boolean z) {
        KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
        SimpleType simpleType$default = KotlinTypeFactory.simpleType$default(gVar, typeConstructor, list, z, null, 16, null);
        if (!kotlin.reflect.jvm.internal.impl.builtins.f.a(simpleType$default)) {
            return null;
        }
        return a(simpleType$default);
    }

    private final TypeConstructor b(a.p pVar) {
        Object obj;
        TypeConstructor typeConstructor;
        if (pVar.m()) {
            g invoke = this.f.invoke(Integer.valueOf(pVar.g));
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar = invoke;
            if (invoke == null) {
                dVar = a(this, pVar, pVar.g);
            }
            TypeConstructor typeConstructor2 = dVar.getTypeConstructor();
            p.b(typeConstructor2, "classifierDescriptors(proto.className) ?: notFoundClass(proto.className)).typeConstructor");
            return typeConstructor2;
        } else if (pVar.n()) {
            TypeConstructor a2 = a(pVar.h);
            if (a2 != null) {
                return a2;
            }
            TypeConstructor createErrorTypeConstructor = ErrorUtils.createErrorTypeConstructor("Unknown type parameter " + pVar.h + ". Please try recompiling module containing \"" + this.e + '\"');
            p.b(createErrorTypeConstructor, "createErrorTypeConstructor(\n                        \"Unknown type parameter ${proto.typeParameter}. Please try recompiling module containing \\\"$containerPresentableName\\\"\"\n                    )");
            return createErrorTypeConstructor;
        } else if (pVar.o()) {
            kotlin.reflect.jvm.internal.impl.descriptors.k kVar = this.f38331a.f38447c;
            String a3 = this.f38331a.f38446b.a(pVar.i);
            Iterator<T> it2 = a().iterator();
            while (true) {
                typeConstructor = null;
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                if (p.a((Object) ((TypeParameterDescriptor) obj).getName().a(), (Object) a3)) {
                    break;
                }
            }
            TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) obj;
            if (typeParameterDescriptor != null) {
                typeConstructor = typeParameterDescriptor.getTypeConstructor();
            }
            TypeConstructor typeConstructor3 = typeConstructor;
            if (typeConstructor == null) {
                typeConstructor3 = ErrorUtils.createErrorTypeConstructor("Deserialized type parameter " + a3 + " in " + kVar);
            }
            p.b(typeConstructor3, "{\n                val container = c.containingDeclaration\n                val name = c.nameResolver.getString(proto.typeParameterName)\n                val parameter = ownTypeParameters.find { it.name.asString() == name }\n                parameter?.typeConstructor ?: ErrorUtils.createErrorTypeConstructor(\"Deserialized type parameter $name in $container\")\n            }");
            return typeConstructor3;
        } else if (pVar.p()) {
            g invoke2 = this.g.invoke(Integer.valueOf(pVar.j));
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar2 = invoke2;
            if (invoke2 == null) {
                dVar2 = a(this, pVar, pVar.j);
            }
            TypeConstructor typeConstructor4 = dVar2.getTypeConstructor();
            p.b(typeConstructor4, "typeAliasDescriptors(proto.typeAliasName) ?: notFoundClass(proto.typeAliasName)).typeConstructor");
            return typeConstructor4;
        } else {
            TypeConstructor createErrorTypeConstructor2 = ErrorUtils.createErrorTypeConstructor("Unknown type");
            p.b(createErrorTypeConstructor2, "createErrorTypeConstructor(\"Unknown type\")");
            return createErrorTypeConstructor2;
        }
    }

    public final List<TypeParameterDescriptor> a() {
        return n.h(this.h.values());
    }

    public final KotlinType a(a.p proto) {
        p.d(proto, "proto");
        if (!proto.g()) {
            return a(proto, true);
        }
        String a2 = this.f38331a.f38446b.a(proto.f37087d);
        SimpleType a3 = a(proto, true);
        a.p a4 = kotlin.reflect.jvm.internal.impl.b.b.f.a(proto, this.f38331a.f38448d);
        p.a(a4);
        return this.f38331a.f38445a.j.a(proto, a2, a3, a(a4, true));
    }

    public final SimpleType a(a.p proto, boolean z) {
        SimpleType simpleType;
        SimpleType withAbbreviation;
        p.d(proto, "proto");
        if (proto.m()) {
            b(proto.g);
        } else if (proto.p()) {
            b(proto.j);
        }
        TypeConstructor b2 = b(proto);
        if (ErrorUtils.isError(b2.getDeclarationDescriptor())) {
            SimpleType createErrorTypeWithCustomConstructor = ErrorUtils.createErrorTypeWithCustomConstructor(b2.toString(), b2);
            p.b(createErrorTypeWithCustomConstructor, "createErrorTypeWithCustomConstructor(constructor.toString(), constructor)");
            return createErrorTypeWithCustomConstructor;
        }
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.b bVar = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.b(this.f38331a.f38445a.f38441a, new b(proto));
        List<a.p.C0646a> a2 = a(proto, this);
        ArrayList arrayList = new ArrayList(n.a((Iterable) a2, 10));
        int i = 0;
        for (Object obj : a2) {
            if (i < 0) {
                n.a();
            }
            a.p.C0646a aVar = (a.p.C0646a) obj;
            List<TypeParameterDescriptor> parameters = b2.getParameters();
            p.b(parameters, "constructor.parameters");
            arrayList.add(a((TypeParameterDescriptor) n.b((List<? extends Object>) parameters, i), aVar));
            i++;
        }
        List<? extends TypeProjection> h = n.h((Iterable) arrayList);
        g declarationDescriptor = b2.getDeclarationDescriptor();
        if (!z || !(declarationDescriptor instanceof ax)) {
            Boolean a3 = kotlin.reflect.jvm.internal.impl.b.b.b.f37142a.b(proto.o);
            p.b(a3, "SUSPEND_TYPE.get(proto.flags)");
            if (a3.booleanValue()) {
                simpleType = a(bVar, b2, h, proto.f37086c);
            } else {
                KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
                simpleType = KotlinTypeFactory.simpleType$default(bVar, b2, h, proto.f37086c, null, 16, null);
            }
        } else {
            KotlinTypeFactory kotlinTypeFactory2 = KotlinTypeFactory.INSTANCE;
            SimpleType computeExpandedType = KotlinTypeFactory.computeExpandedType((ax) declarationDescriptor, h);
            SimpleType makeNullableAsSpecified = computeExpandedType.makeNullableAsSpecified(KotlinTypeKt.isNullable(computeExpandedType) || proto.f37086c);
            g.a aVar2 = kotlin.reflect.jvm.internal.impl.descriptors.a.g.f37361a;
            simpleType = makeNullableAsSpecified.replaceAnnotations(g.a.a(n.c((Iterable) bVar, (Iterable) computeExpandedType.getAnnotations())));
        }
        a.p c2 = kotlin.reflect.jvm.internal.impl.b.b.f.c(proto, this.f38331a.f38448d);
        if (!(c2 == null || (withAbbreviation = SpecialTypesKt.withAbbreviation(simpleType, a(c2, false))) == null)) {
            simpleType = withAbbreviation;
        }
        return proto.m() ? this.f38331a.f38445a.r.a(u.a(this.f38331a.f38446b, proto.g), simpleType) : simpleType;
    }

    public final String toString() {
        String str = this.f38334d;
        aa aaVar = this.f38333c;
        return p.a(str, (Object) (aaVar == null ? "" : p.a(". Child of ", (Object) aaVar.f38334d)));
    }
}
