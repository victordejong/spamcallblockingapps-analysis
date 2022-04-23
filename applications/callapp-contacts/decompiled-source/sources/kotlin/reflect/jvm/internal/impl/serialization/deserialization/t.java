package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.a.ai;
import kotlin.a.n;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.z;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.b.b.h;
import kotlin.reflect.jvm.internal.impl.b.b.i;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.ae;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.aq;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.ax;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.x;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.protobuf.p;
import kotlin.reflect.jvm.internal.impl.resolve.constants.g;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.j;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.l;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.m;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.w;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/t.class */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    private final k f38463a;

    /* renamed from: b  reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.serialization.deserialization.e f38464b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/t$a.class */
    public final /* synthetic */ class a extends z {

        /* renamed from: a  reason: collision with root package name */
        public static final a f38465a = new a();

        /* synthetic */ a() {
        }

        @Override // kotlin.reflect.m
        public final Object a(Object obj) {
            return Boolean.valueOf(kotlin.reflect.jvm.internal.impl.builtins.f.b((KotlinType) obj));
        }

        @Override // kotlin.jvm.internal.e, kotlin.reflect.KCallable
        public final String getName() {
            return "isSuspendFunctionType";
        }

        @Override // kotlin.jvm.internal.e
        public final KDeclarationContainer getOwner() {
            return ac.a(kotlin.reflect.jvm.internal.impl.builtins.f.class, "deserialization");
        }

        @Override // kotlin.jvm.internal.e
        public final String getSignature() {
            return "isSuspendFunctionType(Lorg/jetbrains/kotlin/types/KotlinType;)Z";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/t$b.class */
    public static final class b extends r implements Function0<List<? extends kotlin.reflect.jvm.internal.impl.descriptors.a.c>> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ p f38467b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.serialization.deserialization.b f38468c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(p pVar, kotlin.reflect.jvm.internal.impl.serialization.deserialization.b bVar) {
            super(0);
            this.f38467b = pVar;
            this.f38468c = bVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends kotlin.reflect.jvm.internal.impl.descriptors.a.c> invoke() {
            List<? extends kotlin.reflect.jvm.internal.impl.descriptors.a.c> list;
            t tVar = t.this;
            w a2 = tVar.a(tVar.f38463a.f38447c);
            if (a2 == null) {
                list = null;
            } else {
                t tVar2 = t.this;
                list = n.h((Iterable) tVar2.f38463a.f38445a.e.a(a2, this.f38467b, this.f38468c));
            }
            kotlin.a.z zVar = list;
            if (list == null) {
                zVar = kotlin.a.z.f36608a;
            }
            return zVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/t$c.class */
    public static final class c extends r implements Function0<List<? extends kotlin.reflect.jvm.internal.impl.descriptors.a.c>> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f38470b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ a.m f38471c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(boolean z, a.m mVar) {
            super(0);
            this.f38470b = z;
            this.f38471c = mVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends kotlin.reflect.jvm.internal.impl.descriptors.a.c> invoke() {
            List<? extends kotlin.reflect.jvm.internal.impl.descriptors.a.c> list;
            t tVar = t.this;
            w a2 = tVar.a(tVar.f38463a.f38447c);
            if (a2 == null) {
                list = null;
            } else {
                boolean z = this.f38470b;
                t tVar2 = t.this;
                a.m mVar = this.f38471c;
                list = z ? n.h((Iterable) tVar2.f38463a.f38445a.e.b(a2, mVar)) : n.h((Iterable) tVar2.f38463a.f38445a.e.a(a2, mVar));
            }
            kotlin.a.z zVar = list;
            if (list == null) {
                zVar = kotlin.a.z.f36608a;
            }
            return zVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/t$d.class */
    public static final class d extends r implements Function0<List<? extends kotlin.reflect.jvm.internal.impl.descriptors.a.c>> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ p f38473b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.serialization.deserialization.b f38474c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(p pVar, kotlin.reflect.jvm.internal.impl.serialization.deserialization.b bVar) {
            super(0);
            this.f38473b = pVar;
            this.f38474c = bVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends kotlin.reflect.jvm.internal.impl.descriptors.a.c> invoke() {
            List<kotlin.reflect.jvm.internal.impl.descriptors.a.c> list;
            t tVar = t.this;
            w a2 = tVar.a(tVar.f38463a.f38447c);
            if (a2 == null) {
                list = null;
            } else {
                t tVar2 = t.this;
                list = tVar2.f38463a.f38445a.e.b(a2, this.f38473b, this.f38474c);
            }
            kotlin.a.z zVar = list;
            if (list == null) {
                zVar = kotlin.a.z.f36608a;
            }
            return zVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/t$e.class */
    public static final class e extends r implements Function0<g<?>> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ a.m f38476b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ j f38477c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(a.m mVar, j jVar) {
            super(0);
            this.f38476b = mVar;
            this.f38477c = jVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ g<?> invoke() {
            t tVar = t.this;
            w a2 = tVar.a(tVar.f38463a.f38447c);
            kotlin.jvm.internal.p.a(a2);
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.c<kotlin.reflect.jvm.internal.impl.descriptors.a.c, g<?>> cVar = t.this.f38463a.f38445a.e;
            a.m mVar = this.f38476b;
            KotlinType returnType = this.f38477c.getReturnType();
            kotlin.jvm.internal.p.b(returnType, "property.returnType");
            return cVar.a(a2, mVar, returnType);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/t$f.class */
    public static final class f extends r implements Function0<List<? extends kotlin.reflect.jvm.internal.impl.descriptors.a.c>> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ w f38479b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ p f38480c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.serialization.deserialization.b f38481d;
        final /* synthetic */ int e;
        final /* synthetic */ a.t f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(w wVar, p pVar, kotlin.reflect.jvm.internal.impl.serialization.deserialization.b bVar, int i, a.t tVar) {
            super(0);
            this.f38479b = wVar;
            this.f38480c = pVar;
            this.f38481d = bVar;
            this.e = i;
            this.f = tVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends kotlin.reflect.jvm.internal.impl.descriptors.a.c> invoke() {
            return n.h((Iterable) t.this.f38463a.f38445a.e.a(this.f38479b, this.f38480c, this.f38481d, this.e, this.f));
        }
    }

    public t(k c2) {
        kotlin.jvm.internal.p.d(c2, "c");
        this.f38463a = c2;
        this.f38464b = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.e(c2.f38445a.f38442b, c2.f38445a.l);
    }

    private static int a(int i) {
        return (i & 63) + ((i >> 8) << 6);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x015d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List<kotlin.reflect.jvm.internal.impl.descriptors.ba> a(java.util.List<kotlin.reflect.jvm.internal.impl.b.a.t> r16, kotlin.reflect.jvm.internal.impl.protobuf.p r17, kotlin.reflect.jvm.internal.impl.serialization.deserialization.b r18) {
        /*
            Method dump skipped, instructions count: 427
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.t.a(java.util.List, kotlin.reflect.jvm.internal.impl.protobuf.p, kotlin.reflect.jvm.internal.impl.serialization.deserialization.b):java.util.List");
    }

    private final kotlin.reflect.jvm.internal.impl.descriptors.a.g a(a.m mVar, boolean z) {
        if (kotlin.reflect.jvm.internal.impl.b.b.b.f37143b.b(mVar.f37059b).booleanValue()) {
            return new m(this.f38463a.f38445a.f38441a, new c(z, mVar));
        }
        g.a aVar = kotlin.reflect.jvm.internal.impl.descriptors.a.g.f37361a;
        return g.a.a();
    }

    private final kotlin.reflect.jvm.internal.impl.descriptors.a.g a(p pVar, int i, kotlin.reflect.jvm.internal.impl.serialization.deserialization.b bVar) {
        if (kotlin.reflect.jvm.internal.impl.b.b.b.f37143b.b(i).booleanValue()) {
            return new m(this.f38463a.f38445a.f38441a, new b(pVar, bVar));
        }
        g.a aVar = kotlin.reflect.jvm.internal.impl.descriptors.a.g.f37361a;
        return g.a.a();
    }

    private final kotlin.reflect.jvm.internal.impl.descriptors.a.g a(p pVar, kotlin.reflect.jvm.internal.impl.serialization.deserialization.b bVar) {
        return new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.b(this.f38463a.f38445a.f38441a, new d(pVar, bVar));
    }

    private final aq a() {
        k kVar = this.f38463a.f38447c;
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = kVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d ? (kotlin.reflect.jvm.internal.impl.descriptors.d) kVar : null;
        if (dVar == null) {
            return null;
        }
        return dVar.getThisAsReceiverParameter();
    }

    private final g.a a(kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.c cVar, aq aqVar, Collection<? extends ba> collection, Collection<? extends TypeParameterDescriptor> collection2, KotlinType kotlinType, boolean z) {
        boolean z2;
        g.a aVar;
        boolean z3;
        boolean z4;
        if (a((kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g) cVar) && !kotlin.jvm.internal.p.a(kotlin.reflect.jvm.internal.impl.resolve.b.a.f(cVar), z.f38499a)) {
            Collection<? extends ba> collection3 = collection;
            ArrayList arrayList = new ArrayList(n.a(collection3, 10));
            for (ba baVar : collection3) {
                arrayList.add(baVar.g());
            }
            Boolean bool = null;
            List b2 = n.b((Collection) arrayList, (Iterable) n.b(aqVar == null ? null : aqVar.g()));
            if (kotlinType != null) {
                bool = Boolean.valueOf(a(kotlinType));
            }
            if (kotlin.jvm.internal.p.a(bool, Boolean.TRUE)) {
                return g.a.INCOMPATIBLE;
            }
            Collection<? extends TypeParameterDescriptor> collection4 = collection2;
            if (!(collection4 instanceof Collection) || !collection4.isEmpty()) {
                for (TypeParameterDescriptor typeParameterDescriptor : collection4) {
                    List<KotlinType> upperBounds = typeParameterDescriptor.getUpperBounds();
                    kotlin.jvm.internal.p.b(upperBounds, "typeParameter.upperBounds");
                    List<KotlinType> list = upperBounds;
                    if (!(list instanceof Collection) || !list.isEmpty()) {
                        for (KotlinType it2 : list) {
                            kotlin.jvm.internal.p.b(it2, "it");
                            if (a(it2)) {
                                z4 = true;
                                break;
                            }
                        }
                    }
                    z4 = false;
                    if (z4) {
                        z2 = true;
                        break;
                    }
                }
            }
            z2 = false;
            if (z2) {
                return g.a.INCOMPATIBLE;
            }
            List<KotlinType> list2 = b2;
            ArrayList arrayList2 = new ArrayList(n.a((Iterable) list2, 10));
            for (KotlinType type : list2) {
                kotlin.jvm.internal.p.b(type, "type");
                if (!kotlin.reflect.jvm.internal.impl.builtins.f.b(type) || type.getArguments().size() > 3) {
                    aVar = a(type) ? g.a.INCOMPATIBLE : g.a.COMPATIBLE;
                } else {
                    List<TypeProjection> arguments = type.getArguments();
                    if (!(arguments instanceof Collection) || !arguments.isEmpty()) {
                        for (TypeProjection typeProjection : arguments) {
                            KotlinType type2 = typeProjection.getType();
                            kotlin.jvm.internal.p.b(type2, "it.type");
                            if (a(type2)) {
                                z3 = true;
                                break;
                            }
                        }
                    }
                    z3 = false;
                    aVar = z3 ? g.a.INCOMPATIBLE : g.a.NEEDS_WRAPPER;
                }
                arrayList2.add(aVar);
            }
            g.a aVar2 = (g.a) n.n(arrayList2);
            g.a aVar3 = aVar2;
            if (aVar2 == null) {
                aVar3 = g.a.COMPATIBLE;
            }
            return (g.a) kotlin.b.a.b(z ? g.a.NEEDS_WRAPPER : g.a.COMPATIBLE, aVar3);
        }
        return g.a.COMPATIBLE;
    }

    private final g.a a(kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g gVar, aa aaVar) {
        if (!a(gVar)) {
            return g.a.COMPATIBLE;
        }
        a(aaVar);
        return aaVar.f38332b ? g.a.INCOMPATIBLE : g.a.COMPATIBLE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final w a(k kVar) {
        if (kVar instanceof ae) {
            return new w.b(((ae) kVar).c(), this.f38463a.f38446b, this.f38463a.f38448d, this.f38463a.f);
        }
        if (kVar instanceof DeserializedClassDescriptor) {
            return ((DeserializedClassDescriptor) kVar).f38351d;
        }
        return null;
    }

    private static void a(aa aaVar) {
        for (TypeParameterDescriptor typeParameterDescriptor : aaVar.a()) {
            typeParameterDescriptor.getUpperBounds();
        }
    }

    private final void a(kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.k kVar, aq aqVar, aq aqVar2, List<? extends TypeParameterDescriptor> list, List<? extends ba> list2, KotlinType kotlinType, y yVar, s sVar, Map<? extends a.AbstractC0668a<?>, ?> map, boolean z) {
        kVar.a(aqVar, aqVar2, list, list2, kotlinType, yVar, sVar, map, a(kVar, aqVar, list2, list, kotlinType, z));
    }

    private final boolean a(kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g gVar) {
        boolean z;
        if (!this.f38463a.f38445a.f38443c.getReleaseCoroutines()) {
            return false;
        }
        List<h> aq_ = gVar.aq_();
        if (!(aq_ instanceof Collection) || !aq_.isEmpty()) {
            for (h hVar : aq_) {
                if (kotlin.jvm.internal.p.a(hVar.f37154b, new h.b(1, 3, 0, 4, null)) && hVar.f37155c == a.u.c.LANGUAGE_VERSION) {
                    z = false;
                    break;
                }
            }
        }
        z = true;
        return z;
    }

    private static boolean a(KotlinType kotlinType) {
        return TypeUtilsKt.contains(kotlinType, a.f38465a);
    }

    public final an a(a.m proto) {
        k a2;
        kotlin.reflect.jvm.internal.impl.descriptors.a.g gVar;
        x xVar;
        k a3;
        x xVar2;
        KotlinType a4;
        kotlin.jvm.internal.p.d(proto, "proto");
        int a5 = proto.c() ? proto.f37059b : a(proto.f37060c);
        k kVar = this.f38463a.f38447c;
        a.m mVar = proto;
        kotlin.reflect.jvm.internal.impl.descriptors.a.g a6 = a(mVar, a5, kotlin.reflect.jvm.internal.impl.serialization.deserialization.b.PROPERTY);
        x xVar3 = x.f38491a;
        y a7 = x.a(kotlin.reflect.jvm.internal.impl.b.b.b.f37145d.b(a5));
        s a8 = y.a(x.f38491a, kotlin.reflect.jvm.internal.impl.b.b.b.f37144c.b(a5));
        Boolean a9 = kotlin.reflect.jvm.internal.impl.b.b.b.w.b(a5);
        kotlin.jvm.internal.p.b(a9, "IS_VAR.get(flags)");
        boolean booleanValue = a9.booleanValue();
        kotlin.reflect.jvm.internal.impl.c.e b2 = u.b(this.f38463a.f38446b, proto.f37061d);
        b.a a10 = y.a(x.f38491a, kotlin.reflect.jvm.internal.impl.b.b.b.n.b(a5));
        Boolean a11 = kotlin.reflect.jvm.internal.impl.b.b.b.A.b(a5);
        kotlin.jvm.internal.p.b(a11, "IS_LATEINIT.get(flags)");
        boolean booleanValue2 = a11.booleanValue();
        Boolean a12 = kotlin.reflect.jvm.internal.impl.b.b.b.z.b(a5);
        kotlin.jvm.internal.p.b(a12, "IS_CONST.get(flags)");
        boolean booleanValue3 = a12.booleanValue();
        Boolean a13 = kotlin.reflect.jvm.internal.impl.b.b.b.C.b(a5);
        kotlin.jvm.internal.p.b(a13, "IS_EXTERNAL_PROPERTY.get(flags)");
        boolean booleanValue4 = a13.booleanValue();
        Boolean a14 = kotlin.reflect.jvm.internal.impl.b.b.b.D.b(a5);
        kotlin.jvm.internal.p.b(a14, "IS_DELEGATED.get(flags)");
        boolean booleanValue5 = a14.booleanValue();
        Boolean a15 = kotlin.reflect.jvm.internal.impl.b.b.b.E.b(a5);
        kotlin.jvm.internal.p.b(a15, "IS_EXPECT_PROPERTY.get(flags)");
        j jVar = new j(kVar, null, a6, a7, a8, booleanValue, b2, a10, booleanValue2, booleanValue3, booleanValue4, booleanValue5, a15.booleanValue(), proto, this.f38463a.f38446b, this.f38463a.f38448d, this.f38463a.e, this.f38463a.f);
        k kVar2 = this.f38463a;
        j jVar2 = jVar;
        List<a.r> list = proto.g;
        kotlin.jvm.internal.p.b(list, "proto.typeParameterList");
        a2 = kVar2.a(jVar2, list, kVar2.f38446b, kVar2.f38448d, kVar2.e, kVar2.i);
        Boolean a16 = kotlin.reflect.jvm.internal.impl.b.b.b.x.b(a5);
        kotlin.jvm.internal.p.b(a16, "HAS_GETTER.get(flags)");
        boolean booleanValue6 = a16.booleanValue();
        if (!booleanValue6 || !kotlin.reflect.jvm.internal.impl.b.b.f.a(proto)) {
            g.a aVar = kotlin.reflect.jvm.internal.impl.descriptors.a.g.f37361a;
            gVar = g.a.a();
        } else {
            gVar = a(mVar, kotlin.reflect.jvm.internal.impl.serialization.deserialization.b.PROPERTY_GETTER);
        }
        KotlinType a17 = a2.g.a(kotlin.reflect.jvm.internal.impl.b.b.f.a(proto, this.f38463a.f38448d));
        List<TypeParameterDescriptor> a18 = a2.g.a();
        aq a19 = a();
        a.p b3 = kotlin.reflect.jvm.internal.impl.b.b.f.b(proto, this.f38463a.f38448d);
        kotlin.reflect.jvm.internal.impl.descriptors.impl.y yVar = null;
        jVar.a(a17, a18, a19, (b3 == null || (a4 = a2.g.a(b3)) == null) ? null : kotlin.reflect.jvm.internal.impl.resolve.c.a(jVar, a4, gVar));
        Boolean a20 = kotlin.reflect.jvm.internal.impl.b.b.b.f37143b.b(a5);
        kotlin.jvm.internal.p.b(a20, "HAS_ANNOTATIONS.get(flags)");
        int a21 = kotlin.reflect.jvm.internal.impl.b.b.b.a(a20.booleanValue(), kotlin.reflect.jvm.internal.impl.b.b.b.f37144c.b(a5), kotlin.reflect.jvm.internal.impl.b.b.b.f37145d.b(a5));
        if (booleanValue6) {
            int i = proto.p() ? proto.k : a21;
            Boolean a22 = kotlin.reflect.jvm.internal.impl.b.b.b.I.b(i);
            kotlin.jvm.internal.p.b(a22, "IS_NOT_DEFAULT.get(getterFlags)");
            boolean booleanValue7 = a22.booleanValue();
            Boolean a23 = kotlin.reflect.jvm.internal.impl.b.b.b.J.b(i);
            kotlin.jvm.internal.p.b(a23, "IS_EXTERNAL_ACCESSOR.get(getterFlags)");
            boolean booleanValue8 = a23.booleanValue();
            Boolean a24 = kotlin.reflect.jvm.internal.impl.b.b.b.K.b(i);
            kotlin.jvm.internal.p.b(a24, "IS_INLINE_ACCESSOR.get(getterFlags)");
            boolean booleanValue9 = a24.booleanValue();
            kotlin.reflect.jvm.internal.impl.descriptors.a.g a25 = a(mVar, i, kotlin.reflect.jvm.internal.impl.serialization.deserialization.b.PROPERTY_GETTER);
            if (booleanValue7) {
                j jVar3 = jVar;
                x xVar4 = x.f38491a;
                xVar2 = new x(jVar3, a25, x.a(kotlin.reflect.jvm.internal.impl.b.b.b.f37145d.b(i)), y.a(x.f38491a, kotlin.reflect.jvm.internal.impl.b.b.b.f37144c.b(i)), !booleanValue7, booleanValue8, booleanValue9, jVar.getKind(), null, at.f37401a);
            } else {
                xVar2 = kotlin.reflect.jvm.internal.impl.resolve.c.a(jVar, a25);
                kotlin.jvm.internal.p.b(xVar2, "{\n                DescriptorFactory.createDefaultGetter(property, annotations)\n            }");
            }
            xVar2.a(jVar.getReturnType());
            xVar = xVar2;
        } else {
            xVar = null;
        }
        Boolean a26 = kotlin.reflect.jvm.internal.impl.b.b.b.y.b(a5);
        kotlin.jvm.internal.p.b(a26, "HAS_SETTER.get(flags)");
        if (a26.booleanValue()) {
            if (proto.q()) {
                a21 = proto.l;
            }
            Boolean a27 = kotlin.reflect.jvm.internal.impl.b.b.b.I.b(a21);
            kotlin.jvm.internal.p.b(a27, "IS_NOT_DEFAULT.get(setterFlags)");
            boolean booleanValue10 = a27.booleanValue();
            Boolean a28 = kotlin.reflect.jvm.internal.impl.b.b.b.J.b(a21);
            kotlin.jvm.internal.p.b(a28, "IS_EXTERNAL_ACCESSOR.get(setterFlags)");
            boolean booleanValue11 = a28.booleanValue();
            Boolean a29 = kotlin.reflect.jvm.internal.impl.b.b.b.K.b(a21);
            kotlin.jvm.internal.p.b(a29, "IS_INLINE_ACCESSOR.get(setterFlags)");
            boolean booleanValue12 = a29.booleanValue();
            kotlin.reflect.jvm.internal.impl.descriptors.a.g a30 = a(mVar, a21, kotlin.reflect.jvm.internal.impl.serialization.deserialization.b.PROPERTY_SETTER);
            if (booleanValue10) {
                j jVar4 = jVar;
                x xVar5 = x.f38491a;
                kotlin.reflect.jvm.internal.impl.descriptors.impl.y yVar2 = new kotlin.reflect.jvm.internal.impl.descriptors.impl.y(jVar4, a30, x.a(kotlin.reflect.jvm.internal.impl.b.b.b.f37145d.b(a21)), y.a(x.f38491a, kotlin.reflect.jvm.internal.impl.b.b.b.f37144c.b(a21)), !booleanValue10, booleanValue11, booleanValue12, jVar.getKind(), null, at.f37401a);
                yVar = yVar2;
                a3 = a2.a(yVar2, kotlin.a.z.f36608a, a2.f38446b, a2.f38448d, a2.e, a2.i);
                yVar2.a((ba) n.i((List<? extends Object>) a3.h.a(n.a(proto.j), mVar, kotlin.reflect.jvm.internal.impl.serialization.deserialization.b.PROPERTY_SETTER)));
            } else {
                j jVar5 = jVar;
                g.a aVar2 = kotlin.reflect.jvm.internal.impl.descriptors.a.g.f37361a;
                yVar = kotlin.reflect.jvm.internal.impl.resolve.c.a(jVar5, a30, g.a.a());
                kotlin.jvm.internal.p.b(yVar, "{\n                DescriptorFactory.createDefaultSetter(\n                    property, annotations,\n                    Annotations.EMPTY /* Otherwise the setter is not default, see DescriptorResolver.resolvePropertySetterDescriptor */\n                )\n            }");
            }
        }
        Boolean a31 = kotlin.reflect.jvm.internal.impl.b.b.b.B.b(a5);
        kotlin.jvm.internal.p.b(a31, "HAS_CONSTANT.get(flags)");
        if (a31.booleanValue()) {
            jVar.a(this.f38463a.f38445a.f38441a.b(new e(proto, jVar)));
        }
        j jVar6 = jVar;
        jVar.a(xVar, yVar, new kotlin.reflect.jvm.internal.impl.descriptors.impl.m(a(proto, false), jVar6), new kotlin.reflect.jvm.internal.impl.descriptors.impl.m(a(proto, true), jVar6), a(jVar, a2.g));
        return jVar6;
    }

    public final as a(a.h proto) {
        kotlin.reflect.jvm.internal.impl.descriptors.a.g gVar;
        i iVar;
        k a2;
        KotlinType a3;
        kotlin.jvm.internal.p.d(proto, "proto");
        int a4 = proto.c() ? proto.f37038b : a(proto.f37039c);
        a.h hVar = proto;
        kotlin.reflect.jvm.internal.impl.descriptors.a.g a5 = a(hVar, a4, kotlin.reflect.jvm.internal.impl.serialization.deserialization.b.FUNCTION);
        if (kotlin.reflect.jvm.internal.impl.b.b.f.a(proto)) {
            gVar = a(hVar, kotlin.reflect.jvm.internal.impl.serialization.deserialization.b.FUNCTION);
        } else {
            g.a aVar = kotlin.reflect.jvm.internal.impl.descriptors.a.g.f37361a;
            gVar = g.a.a();
        }
        if (kotlin.jvm.internal.p.a(kotlin.reflect.jvm.internal.impl.resolve.b.a.b(this.f38463a.f38447c).a(u.b(this.f38463a.f38446b, proto.f37040d)), z.f38499a)) {
            i.a aVar2 = i.f37162a;
            iVar = i.f37163c;
        } else {
            iVar = this.f38463a.e;
        }
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.k kVar = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.k(this.f38463a.f38447c, null, a5, u.b(this.f38463a.f38446b, proto.f37040d), y.a(x.f38491a, kotlin.reflect.jvm.internal.impl.b.b.b.n.b(a4)), proto, this.f38463a.f38446b, this.f38463a.f38448d, iVar, this.f38463a.f, null, 1024, null);
        k kVar2 = this.f38463a;
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.k kVar3 = kVar;
        List<a.r> list = proto.g;
        kotlin.jvm.internal.p.b(list, "proto.typeParameterList");
        a2 = kVar2.a(kVar3, list, kVar2.f38446b, kVar2.f38448d, kVar2.e, kVar2.i);
        a.p b2 = kotlin.reflect.jvm.internal.impl.b.b.f.b(proto, this.f38463a.f38448d);
        aq a6 = (b2 == null || (a3 = a2.g.a(b2)) == null) ? null : kotlin.reflect.jvm.internal.impl.resolve.c.a(kVar, a3, gVar);
        aq a7 = a();
        List<TypeParameterDescriptor> a8 = a2.g.a();
        t tVar = a2.h;
        List<a.t> list2 = proto.j;
        kotlin.jvm.internal.p.b(list2, "proto.valueParameterList");
        List<ba> a9 = tVar.a(list2, hVar, kotlin.reflect.jvm.internal.impl.serialization.deserialization.b.FUNCTION);
        KotlinType a10 = a2.g.a(kotlin.reflect.jvm.internal.impl.b.b.f.a(proto, this.f38463a.f38448d));
        x xVar = x.f38491a;
        y a11 = x.a(kotlin.reflect.jvm.internal.impl.b.b.b.f37145d.b(a4));
        s a12 = y.a(x.f38491a, kotlin.reflect.jvm.internal.impl.b.b.b.f37144c.b(a4));
        Map<? extends a.AbstractC0668a<?>, ?> a13 = ai.a();
        Boolean a14 = kotlin.reflect.jvm.internal.impl.b.b.b.t.b(a4);
        kotlin.jvm.internal.p.b(a14, "IS_SUSPEND.get(flags)");
        a(kVar, a6, a7, a8, a9, a10, a11, a12, a13, a14.booleanValue());
        Boolean a15 = kotlin.reflect.jvm.internal.impl.b.b.b.o.b(a4);
        kotlin.jvm.internal.p.b(a15, "IS_OPERATOR.get(flags)");
        kVar.setOperator(a15.booleanValue());
        Boolean a16 = kotlin.reflect.jvm.internal.impl.b.b.b.p.b(a4);
        kotlin.jvm.internal.p.b(a16, "IS_INFIX.get(flags)");
        kVar.setInfix(a16.booleanValue());
        Boolean a17 = kotlin.reflect.jvm.internal.impl.b.b.b.s.b(a4);
        kotlin.jvm.internal.p.b(a17, "IS_EXTERNAL_FUNCTION.get(flags)");
        kVar.setExternal(a17.booleanValue());
        Boolean a18 = kotlin.reflect.jvm.internal.impl.b.b.b.q.b(a4);
        kotlin.jvm.internal.p.b(a18, "IS_INLINE.get(flags)");
        kVar.setInline(a18.booleanValue());
        Boolean a19 = kotlin.reflect.jvm.internal.impl.b.b.b.r.b(a4);
        kotlin.jvm.internal.p.b(a19, "IS_TAILREC.get(flags)");
        kVar.setTailrec(a19.booleanValue());
        Boolean a20 = kotlin.reflect.jvm.internal.impl.b.b.b.t.b(a4);
        kotlin.jvm.internal.p.b(a20, "IS_SUSPEND.get(flags)");
        kVar.setSuspend(a20.booleanValue());
        Boolean a21 = kotlin.reflect.jvm.internal.impl.b.b.b.u.b(a4);
        kotlin.jvm.internal.p.b(a21, "IS_EXPECT_FUNCTION.get(flags)");
        kVar.setExpect(a21.booleanValue());
        kVar.setHasStableParameterNames(!kotlin.reflect.jvm.internal.impl.b.b.b.v.b(a4).booleanValue());
        this.f38463a.f38445a.m.a(proto, kVar, this.f38463a.f38448d, a2.g);
        return kVar;
    }

    public final ax a(a.q proto) {
        k a2;
        a.p underlyingType;
        a.p expandedType;
        kotlin.jvm.internal.p.d(proto, "proto");
        g.a aVar = kotlin.reflect.jvm.internal.impl.descriptors.a.g.f37361a;
        List<a.C0625a> list = proto.i;
        kotlin.jvm.internal.p.b(list, "proto.annotationList");
        List<a.C0625a> list2 = list;
        ArrayList arrayList = new ArrayList(n.a((Iterable) list2, 10));
        for (a.C0625a it2 : list2) {
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.e eVar = this.f38464b;
            kotlin.jvm.internal.p.b(it2, "it");
            arrayList.add(eVar.a(it2, this.f38463a.f38446b));
        }
        l lVar = new l(this.f38463a.f38445a.f38441a, this.f38463a.f38447c, g.a.a(arrayList), u.b(this.f38463a.f38446b, proto.f37100c), y.a(x.f38491a, kotlin.reflect.jvm.internal.impl.b.b.b.f37144c.b(proto.f37099b)), proto, this.f38463a.f38446b, this.f38463a.f38448d, this.f38463a.e, this.f38463a.f);
        k kVar = this.f38463a;
        l lVar2 = lVar;
        List<a.r> list3 = proto.f37101d;
        kotlin.jvm.internal.p.b(list3, "proto.typeParameterList");
        a2 = kVar.a(lVar2, list3, kVar.f38446b, kVar.f38448d, kVar.e, kVar.i);
        List<TypeParameterDescriptor> a3 = a2.g.a();
        aa aaVar = a2.g;
        kotlin.reflect.jvm.internal.impl.b.b.g typeTable = this.f38463a.f38448d;
        kotlin.jvm.internal.p.d(proto, "<this>");
        kotlin.jvm.internal.p.d(typeTable, "typeTable");
        if (proto.g()) {
            underlyingType = proto.e;
            kotlin.jvm.internal.p.b(underlyingType, "underlyingType");
        } else if (proto.k()) {
            underlyingType = typeTable.a(proto.f);
        } else {
            throw new IllegalStateException("No underlyingType in ProtoBuf.TypeAlias".toString());
        }
        SimpleType a4 = aaVar.a(underlyingType, false);
        aa aaVar2 = a2.g;
        kotlin.reflect.jvm.internal.impl.b.b.g typeTable2 = this.f38463a.f38448d;
        kotlin.jvm.internal.p.d(proto, "<this>");
        kotlin.jvm.internal.p.d(typeTable2, "typeTable");
        if (proto.l()) {
            expandedType = proto.g;
            kotlin.jvm.internal.p.b(expandedType, "expandedType");
        } else if (proto.m()) {
            expandedType = typeTable2.a(proto.h);
        } else {
            throw new IllegalStateException("No expandedType in ProtoBuf.TypeAlias".toString());
        }
        lVar.a(a3, a4, aaVar2.a(expandedType, false), a(lVar, a2.g));
        return lVar;
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.c a(a.c proto, boolean z) {
        k a2;
        Boolean bool;
        g.a aVar;
        kotlin.jvm.internal.p.d(proto, "proto");
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) this.f38463a.f38447c;
        a.c cVar = proto;
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.d dVar2 = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.d(dVar, null, a(cVar, proto.f37005b, kotlin.reflect.jvm.internal.impl.serialization.deserialization.b.FUNCTION), z, b.a.DECLARATION, proto, this.f38463a.f38446b, this.f38463a.f38448d, this.f38463a.e, this.f38463a.f, null, 1024, null);
        a2 = r0.a(dVar2, kotlin.a.z.f36608a, r0.f38446b, r0.f38448d, r0.e, this.f38463a.i);
        t tVar = a2.h;
        List<a.t> list = proto.f37006c;
        kotlin.jvm.internal.p.b(list, "proto.valueParameterList");
        dVar2.a(tVar.a(list, cVar, kotlin.reflect.jvm.internal.impl.serialization.deserialization.b.FUNCTION), y.a(x.f38491a, kotlin.reflect.jvm.internal.impl.b.b.b.f37144c.b(proto.f37005b)));
        dVar2.setReturnType(dVar.getDefaultType());
        boolean z2 = true;
        dVar2.setHasStableParameterNames(!kotlin.reflect.jvm.internal.impl.b.b.b.m.b(proto.f37005b).booleanValue());
        k kVar = this.f38463a.f38447c;
        DeserializedClassDescriptor deserializedClassDescriptor = kVar instanceof DeserializedClassDescriptor ? (DeserializedClassDescriptor) kVar : null;
        k kVar2 = deserializedClassDescriptor == null ? null : deserializedClassDescriptor.f38350c;
        if (kVar2 == null) {
            bool = null;
        } else {
            aa aaVar = kVar2.g;
            bool = aaVar == null ? null : Boolean.valueOf(aaVar.f38332b);
        }
        if (!kotlin.jvm.internal.p.a(bool, Boolean.TRUE) || !a((kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.g) dVar2)) {
            z2 = false;
        }
        if (z2) {
            aVar = g.a.INCOMPATIBLE;
        } else {
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.d dVar3 = dVar2;
            List<ba> valueParameters = dVar2.getValueParameters();
            kotlin.jvm.internal.p.b(valueParameters, "descriptor.valueParameters");
            List<ba> list2 = valueParameters;
            List<TypeParameterDescriptor> typeParameters = dVar2.getTypeParameters();
            kotlin.jvm.internal.p.b(typeParameters, "descriptor.typeParameters");
            aVar = a(dVar3, null, list2, typeParameters, dVar2.getReturnType(), false);
        }
        dVar2.a(aVar);
        return dVar2;
    }
}
