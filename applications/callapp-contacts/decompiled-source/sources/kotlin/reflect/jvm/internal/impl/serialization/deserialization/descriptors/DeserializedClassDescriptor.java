package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.a.ai;
import kotlin.a.ap;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.b.b.i;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.ad;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.ar;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.aw;
import kotlin.reflect.jvm.internal.impl.descriptors.ay;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.l;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.t;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.f.j;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.c;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.resolve.e.i;
import kotlin.reflect.jvm.internal.impl.resolve.e.k;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.k;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.o;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.u;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.w;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.x;
import kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.v;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor.class */
public final class DeserializedClassDescriptor extends kotlin.reflect.jvm.internal.impl.descriptors.impl.a implements t {

    /* renamed from: a  reason: collision with root package name */
    public final a.b f38348a;

    /* renamed from: b  reason: collision with root package name */
    public final kotlin.reflect.jvm.internal.impl.b.b.a f38349b;

    /* renamed from: c  reason: collision with root package name */
    public final k f38350c;

    /* renamed from: d  reason: collision with root package name */
    public final w.a f38351d;
    private final at e;
    private final kotlin.reflect.jvm.internal.impl.c.a f;
    private final y g;
    private final s h;
    private final kotlin.reflect.jvm.internal.impl.descriptors.e i;
    private final i j;
    private final DeserializedClassTypeConstructor k;
    private final ar<a> l;
    private final b m;
    private final kotlin.reflect.jvm.internal.impl.descriptors.k n;
    private final j<kotlin.reflect.jvm.internal.impl.descriptors.c> o;
    private final kotlin.reflect.jvm.internal.impl.f.i<Collection<kotlin.reflect.jvm.internal.impl.descriptors.c>> p;
    private final j<kotlin.reflect.jvm.internal.impl.descriptors.d> q;
    private final kotlin.reflect.jvm.internal.impl.f.i<Collection<kotlin.reflect.jvm.internal.impl.descriptors.d>> r;
    private final kotlin.reflect.jvm.internal.impl.descriptors.a.g s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassTypeConstructor.class */
    public final class DeserializedClassTypeConstructor extends AbstractClassTypeConstructor {
        private final kotlin.reflect.jvm.internal.impl.f.i<List<TypeParameterDescriptor>> parameters;
        final /* synthetic */ DeserializedClassDescriptor this$0;

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassTypeConstructor$a.class */
        static final class a extends r implements Function0<List<? extends TypeParameterDescriptor>> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ DeserializedClassDescriptor f38352a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(DeserializedClassDescriptor deserializedClassDescriptor) {
                super(0);
                this.f38352a = deserializedClassDescriptor;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends TypeParameterDescriptor> invoke() {
                return ay.a(this.f38352a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DeserializedClassTypeConstructor(DeserializedClassDescriptor this$0) {
            super(this$0.f38350c.f38445a.f38441a);
            p.d(this$0, "this$0");
            this.this$0 = this$0;
            this.parameters = this$0.f38350c.f38445a.f38441a.a(new a(this$0));
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        public final Collection<KotlinType> computeSupertypes() {
            kotlin.reflect.jvm.internal.impl.c.b f;
            a.b bVar = this.this$0.f38348a;
            kotlin.reflect.jvm.internal.impl.b.b.g typeTable = this.this$0.f38350c.f38448d;
            p.d(bVar, "<this>");
            p.d(typeTable, "typeTable");
            List<a.p> list = bVar.f;
            if (!(!list.isEmpty())) {
                list = null;
            }
            ArrayList arrayList = list;
            if (list == null) {
                List<Integer> supertypeIdList = bVar.g;
                p.b(supertypeIdList, "supertypeIdList");
                List<Integer> list2 = supertypeIdList;
                ArrayList arrayList2 = new ArrayList(n.a((Iterable) list2, 10));
                for (Integer it2 : list2) {
                    p.b(it2, "it");
                    arrayList2.add(typeTable.a(it2.intValue()));
                }
                arrayList = arrayList2;
            }
            List<a.p> list3 = arrayList;
            DeserializedClassDescriptor deserializedClassDescriptor = this.this$0;
            ArrayList arrayList3 = new ArrayList(n.a((Iterable) list3, 10));
            for (a.p pVar : list3) {
                arrayList3.add(deserializedClassDescriptor.f38350c.g.a(pVar));
            }
            List<KotlinType> b2 = n.b((Collection) arrayList3, (Iterable) this.this$0.f38350c.f38445a.n.a(this.this$0));
            ArrayList arrayList4 = new ArrayList();
            for (KotlinType kotlinType : b2) {
                kotlin.reflect.jvm.internal.impl.descriptors.g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
                ad.b bVar2 = declarationDescriptor instanceof ad.b ? (ad.b) declarationDescriptor : null;
                if (bVar2 != null) {
                    arrayList4.add(bVar2);
                }
            }
            ArrayList arrayList5 = arrayList4;
            if (!arrayList5.isEmpty()) {
                o oVar = this.this$0.f38350c.f38445a.h;
                DeserializedClassDescriptor deserializedClassDescriptor2 = this.this$0;
                ArrayList<ad.b> arrayList6 = arrayList5;
                ArrayList arrayList7 = new ArrayList(n.a((Iterable) arrayList6, 10));
                for (ad.b bVar3 : arrayList6) {
                    kotlin.reflect.jvm.internal.impl.c.a a2 = kotlin.reflect.jvm.internal.impl.resolve.b.a.a((kotlin.reflect.jvm.internal.impl.descriptors.g) bVar3);
                    String a3 = (a2 == null || (f = a2.f()) == null) ? null : f.a();
                    String str = a3;
                    if (a3 == null) {
                        str = bVar3.getName().a();
                    }
                    arrayList7.add(str);
                }
                oVar.a(deserializedClassDescriptor2, arrayList7);
            }
            return n.h((Iterable) b2);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor, kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor, kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final DeserializedClassDescriptor getDeclarationDescriptor() {
            return this.this$0;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final List<TypeParameterDescriptor> getParameters() {
            return this.parameters.invoke();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        public final aw getSupertypeLoopChecker() {
            return aw.a.f37403a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final boolean isDenotable() {
            return true;
        }

        public final String toString() {
            String eVar = this.this$0.getName().toString();
            p.b(eVar, "name.toString()");
            return eVar;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$a.class */
    public final class a extends kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DeserializedClassDescriptor f38353a;

        /* renamed from: d  reason: collision with root package name */
        private final KotlinTypeRefiner f38354d;
        private final kotlin.reflect.jvm.internal.impl.f.i<Collection<kotlin.reflect.jvm.internal.impl.descriptors.k>> e;
        private final kotlin.reflect.jvm.internal.impl.f.i<Collection<KotlinType>> f;

        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$a$a.class */
        static final class C0714a extends r implements Function0<List<? extends kotlin.reflect.jvm.internal.impl.c.e>> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ List<kotlin.reflect.jvm.internal.impl.c.e> f38355a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0714a(List<kotlin.reflect.jvm.internal.impl.c.e> list) {
                super(0);
                this.f38355a = list;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* bridge */ /* synthetic */ List<? extends kotlin.reflect.jvm.internal.impl.c.e> invoke() {
                return this.f38355a;
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$a$b.class */
        static final class b extends r implements Function0<Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.k>> {
            b() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.k> invoke() {
                a aVar = a.this;
                kotlin.reflect.jvm.internal.impl.resolve.e.d dVar = kotlin.reflect.jvm.internal.impl.resolve.e.d.f38280d;
                h.a aVar2 = kotlin.reflect.jvm.internal.impl.resolve.e.h.g;
                return aVar.a(dVar, h.a.a(), kotlin.reflect.jvm.internal.impl.a.a.d.WHEN_GET_ALL_DESCRIPTORS);
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$a$c.class */
        public static final class c extends kotlin.reflect.jvm.internal.impl.resolve.g {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ List<D> f38357a;

            c(List<D> list) {
                this.f38357a = list;
            }

            @Override // kotlin.reflect.jvm.internal.impl.resolve.h
            public final void a(kotlin.reflect.jvm.internal.impl.descriptors.b fakeOverride) {
                p.d(fakeOverride, "fakeOverride");
                OverridingUtil.a(fakeOverride, (Function1<kotlin.reflect.jvm.internal.impl.descriptors.b, v>) null);
                this.f38357a.add(fakeOverride);
            }

            @Override // kotlin.reflect.jvm.internal.impl.resolve.g
            public final void a(kotlin.reflect.jvm.internal.impl.descriptors.b fromSuper, kotlin.reflect.jvm.internal.impl.descriptors.b fromCurrent) {
                p.d(fromSuper, "fromSuper");
                p.d(fromCurrent, "fromCurrent");
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public a(kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor r10, kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner r11) {
            /*
                Method dump skipped, instructions count: 259
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor.a.<init>(kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor, kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner):void");
        }

        private final <D extends kotlin.reflect.jvm.internal.impl.descriptors.b> void a(kotlin.reflect.jvm.internal.impl.c.e eVar, Collection<? extends D> collection, List<D> list) {
            this.f38380c.f38445a.q.getOverridingUtil().a(eVar, collection, new ArrayList(list), this.f38353a, new c(list));
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h
        protected final Set<kotlin.reflect.jvm.internal.impl.c.e> a() {
            List<KotlinType> supertypes = this.f38353a.k.mo7371getSupertypes();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (KotlinType kotlinType : supertypes) {
                n.a((Collection) linkedHashSet, (Iterable) kotlinType.getMemberScope().getFunctionNames());
            }
            linkedHashSet.addAll(this.f38380c.f38445a.n.c(this.f38353a));
            return linkedHashSet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h
        protected final kotlin.reflect.jvm.internal.impl.c.a a(kotlin.reflect.jvm.internal.impl.c.e name) {
            p.d(name, "name");
            kotlin.reflect.jvm.internal.impl.c.a a2 = this.f38353a.f.a(name);
            p.b(a2, "classId.createNestedClassId(name)");
            return a2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h
        protected final void a(Collection<kotlin.reflect.jvm.internal.impl.descriptors.k> result, Function1<? super kotlin.reflect.jvm.internal.impl.c.e, Boolean> nameFilter) {
            ArrayList arrayList;
            p.d(result, "result");
            p.d(nameFilter, "nameFilter");
            b bVar = this.f38353a.m;
            if (bVar == null) {
                arrayList = null;
            } else {
                Set<kotlin.reflect.jvm.internal.impl.c.e> keySet = bVar.f38358a.keySet();
                ArrayList arrayList2 = new ArrayList();
                for (kotlin.reflect.jvm.internal.impl.c.e eVar : keySet) {
                    kotlin.reflect.jvm.internal.impl.descriptors.d a2 = bVar.a(eVar);
                    if (a2 != null) {
                        arrayList2.add(a2);
                    }
                }
                arrayList = arrayList2;
            }
            z zVar = arrayList;
            if (arrayList == null) {
                zVar = z.f36608a;
            }
            result.addAll(zVar);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h
        protected final void a(kotlin.reflect.jvm.internal.impl.c.e name, List<as> functions) {
            p.d(name, "name");
            p.d(functions, "functions");
            ArrayList arrayList = new ArrayList();
            for (KotlinType kotlinType : this.f.invoke()) {
                arrayList.addAll(kotlinType.getMemberScope().getContributedFunctions(name, kotlin.reflect.jvm.internal.impl.a.a.d.FOR_ALREADY_TRACKED));
            }
            functions.addAll(this.f38380c.f38445a.n.a(name, this.f38353a));
            a(name, arrayList, functions);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h
        protected final boolean a(as function) {
            p.d(function, "function");
            return this.f38380c.f38445a.o.a(this.f38353a, function);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h
        protected final Set<kotlin.reflect.jvm.internal.impl.c.e> b() {
            List<KotlinType> supertypes = this.f38353a.k.mo7371getSupertypes();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (KotlinType kotlinType : supertypes) {
                n.a((Collection) linkedHashSet, (Iterable) kotlinType.getMemberScope().getVariableNames());
            }
            return linkedHashSet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h
        protected final void b(kotlin.reflect.jvm.internal.impl.c.e name, List<an> descriptors) {
            p.d(name, "name");
            p.d(descriptors, "descriptors");
            ArrayList arrayList = new ArrayList();
            for (KotlinType kotlinType : this.f.invoke()) {
                arrayList.addAll(kotlinType.getMemberScope().getContributedVariables(name, kotlin.reflect.jvm.internal.impl.a.a.d.FOR_ALREADY_TRACKED));
            }
            a(name, arrayList, descriptors);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h
        protected final Set<kotlin.reflect.jvm.internal.impl.c.e> c() {
            LinkedHashSet linkedHashSet;
            List supertypes = this.f38353a.k.mo7371getSupertypes();
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            Iterator it2 = supertypes.iterator();
            while (true) {
                linkedHashSet = linkedHashSet2;
                if (!it2.hasNext()) {
                    break;
                }
                Set<kotlin.reflect.jvm.internal.impl.c.e> classifierNames = ((KotlinType) it2.next()).getMemberScope().getClassifierNames();
                if (classifierNames == null) {
                    linkedHashSet = null;
                    break;
                }
                n.a((Collection) linkedHashSet2, (Iterable) classifierNames);
            }
            return linkedHashSet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h, kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.k
        public final kotlin.reflect.jvm.internal.impl.descriptors.g getContributedClassifier(kotlin.reflect.jvm.internal.impl.c.e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
            kotlin.reflect.jvm.internal.impl.descriptors.d a2;
            p.d(name, "name");
            p.d(location, "location");
            recordLookup(name, location);
            b bVar = this.f38353a.m;
            return (bVar == null || (a2 = bVar.a(name)) == null) ? super.getContributedClassifier(name, location) : a2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.k
        public final Collection<kotlin.reflect.jvm.internal.impl.descriptors.k> getContributedDescriptors(kotlin.reflect.jvm.internal.impl.resolve.e.d kindFilter, Function1<? super kotlin.reflect.jvm.internal.impl.c.e, Boolean> nameFilter) {
            p.d(kindFilter, "kindFilter");
            p.d(nameFilter, "nameFilter");
            return this.e.invoke();
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h, kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h, kotlin.reflect.jvm.internal.impl.resolve.e.k
        public final Collection<as> getContributedFunctions(kotlin.reflect.jvm.internal.impl.c.e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
            p.d(name, "name");
            p.d(location, "location");
            recordLookup(name, location);
            return super.getContributedFunctions(name, location);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h, kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h
        public final Collection<an> getContributedVariables(kotlin.reflect.jvm.internal.impl.c.e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
            p.d(name, "name");
            p.d(location, "location");
            recordLookup(name, location);
            return super.getContributedVariables(name, location);
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.k
        public final void recordLookup(kotlin.reflect.jvm.internal.impl.c.e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
            p.d(name, "name");
            p.d(location, "location");
            kotlin.reflect.jvm.internal.impl.a.a.a(this.f38380c.f38445a.i, location, this.f38353a, name);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$b.class */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        final Map<kotlin.reflect.jvm.internal.impl.c.e, a.f> f38358a;

        /* renamed from: b  reason: collision with root package name */
        final kotlin.reflect.jvm.internal.impl.f.i<Set<kotlin.reflect.jvm.internal.impl.c.e>> f38359b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ DeserializedClassDescriptor f38360c;

        /* renamed from: d  reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.f.h<kotlin.reflect.jvm.internal.impl.c.e, kotlin.reflect.jvm.internal.impl.descriptors.d> f38361d;

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$b$a.class */
        static final class a extends r implements Function1<kotlin.reflect.jvm.internal.impl.c.e, kotlin.reflect.jvm.internal.impl.descriptors.d> {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ DeserializedClassDescriptor f38363b;

            /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$b$a$a.class */
            static final class C0715a extends r implements Function0<List<? extends kotlin.reflect.jvm.internal.impl.descriptors.a.c>> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ DeserializedClassDescriptor f38364a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ a.f f38365b;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0715a(DeserializedClassDescriptor deserializedClassDescriptor, a.f fVar) {
                    super(0);
                    this.f38364a = deserializedClassDescriptor;
                    this.f38365b = fVar;
                }

                @Override // kotlin.jvm.functions.Function0
                public final /* synthetic */ List<? extends kotlin.reflect.jvm.internal.impl.descriptors.a.c> invoke() {
                    return n.h((Iterable) this.f38364a.f38350c.f38445a.e.a(this.f38364a.f38351d, this.f38365b));
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(DeserializedClassDescriptor deserializedClassDescriptor) {
                super(1);
                this.f38363b = deserializedClassDescriptor;
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.d invoke(kotlin.reflect.jvm.internal.impl.c.e eVar) {
                l lVar;
                kotlin.reflect.jvm.internal.impl.c.e name = eVar;
                p.d(name, "name");
                a.f fVar = b.this.f38358a.get(name);
                if (fVar == null) {
                    lVar = null;
                } else {
                    DeserializedClassDescriptor deserializedClassDescriptor = this.f38363b;
                    lVar = l.a(deserializedClassDescriptor.f38350c.f38445a.f38441a, deserializedClassDescriptor, name, b.this.f38359b, new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.b(deserializedClassDescriptor.f38350c.f38445a.f38441a, new C0715a(deserializedClassDescriptor, fVar)), at.f37401a);
                }
                return lVar;
            }
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$b$b  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$b$b.class */
        static final class C0716b extends r implements Function0<Set<? extends kotlin.reflect.jvm.internal.impl.c.e>> {
            C0716b() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Set<? extends kotlin.reflect.jvm.internal.impl.c.e> invoke() {
                b bVar = b.this;
                HashSet hashSet = new HashSet();
                for (KotlinType kotlinType : bVar.f38360c.getTypeConstructor().mo7371getSupertypes()) {
                    for (kotlin.reflect.jvm.internal.impl.descriptors.k kVar : k.a.a(kotlinType.getMemberScope(), null, null, 3)) {
                        if ((kVar instanceof as) || (kVar instanceof an)) {
                            hashSet.add(kVar.getName());
                        }
                    }
                }
                List<a.h> list = bVar.f38360c.f38348a.j;
                p.b(list, "classProto.functionList");
                List<a.h> list2 = list;
                DeserializedClassDescriptor deserializedClassDescriptor = bVar.f38360c;
                for (a.h hVar : list2) {
                    hashSet.add(u.b(deserializedClassDescriptor.f38350c.f38446b, hVar.f37040d));
                }
                HashSet hashSet2 = hashSet;
                HashSet hashSet3 = hashSet2;
                List<a.m> list3 = bVar.f38360c.f38348a.k;
                p.b(list3, "classProto.propertyList");
                List<a.m> list4 = list3;
                DeserializedClassDescriptor deserializedClassDescriptor2 = bVar.f38360c;
                for (a.m mVar : list4) {
                    hashSet2.add(u.b(deserializedClassDescriptor2.f38350c.f38446b, mVar.f37061d));
                }
                return ap.a((Set) hashSet3, (Iterable) hashSet2);
            }
        }

        public b(DeserializedClassDescriptor this$0) {
            p.d(this$0, "this$0");
            this.f38360c = this$0;
            List<a.f> list = this$0.f38348a.m;
            p.b(list, "classProto.enumEntryList");
            List<a.f> list2 = list;
            LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.f.d.c(ai.a(n.a((Iterable) list2, 10)), 16));
            for (Object obj : list2) {
                linkedHashMap.put(u.b(this$0.f38350c.f38446b, ((a.f) obj).f37026b), obj);
            }
            this.f38358a = linkedHashMap;
            this.f38361d = this.f38360c.f38350c.f38445a.f38441a.b(new a(this.f38360c));
            this.f38359b = this.f38360c.f38350c.f38445a.f38441a.a(new C0716b());
        }

        public final kotlin.reflect.jvm.internal.impl.descriptors.d a(kotlin.reflect.jvm.internal.impl.c.e name) {
            p.d(name, "name");
            return this.f38361d.invoke(name);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$c.class */
    static final class c extends r implements Function0<List<? extends kotlin.reflect.jvm.internal.impl.descriptors.a.c>> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends kotlin.reflect.jvm.internal.impl.descriptors.a.c> invoke() {
            return n.h((Iterable) DeserializedClassDescriptor.this.f38350c.f38445a.e.a(DeserializedClassDescriptor.this.f38351d));
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$d.class */
    static final class d extends r implements Function0<kotlin.reflect.jvm.internal.impl.descriptors.d> {
        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.d invoke() {
            return DeserializedClassDescriptor.f(DeserializedClassDescriptor.this);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$e.class */
    static final class e extends r implements Function0<Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.c>> {
        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.c> invoke() {
            return DeserializedClassDescriptor.e(DeserializedClassDescriptor.this);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$f.class */
    final /* synthetic */ class f extends m implements Function1<KotlinTypeRefiner, a> {
        f(DeserializedClassDescriptor deserializedClassDescriptor) {
            super(1, deserializedClassDescriptor);
        }

        @Override // kotlin.jvm.internal.e, kotlin.reflect.KCallable
        public final String getName() {
            return "<init>";
        }

        @Override // kotlin.jvm.internal.e
        public final KDeclarationContainer getOwner() {
            return ac.b(a.class);
        }

        @Override // kotlin.jvm.internal.e
        public final String getSignature() {
            return "<init>(Lorg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedClassDescriptor;Lorg/jetbrains/kotlin/types/checker/KotlinTypeRefiner;)V";
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ a invoke(KotlinTypeRefiner kotlinTypeRefiner) {
            KotlinTypeRefiner p0 = kotlinTypeRefiner;
            p.d(p0, "p0");
            return new a((DeserializedClassDescriptor) this.receiver, p0);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$g.class */
    static final class g extends r implements Function0<kotlin.reflect.jvm.internal.impl.descriptors.c> {
        g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.c invoke() {
            return DeserializedClassDescriptor.d(DeserializedClassDescriptor.this);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$h.class */
    static final class h extends r implements Function0<Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.d>> {
        h() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.d> invoke() {
            return DeserializedClassDescriptor.g(DeserializedClassDescriptor.this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedClassDescriptor(kotlin.reflect.jvm.internal.impl.serialization.deserialization.k outerContext, a.b classProto, kotlin.reflect.jvm.internal.impl.b.b.c nameResolver, kotlin.reflect.jvm.internal.impl.b.b.a metadataVersion, at sourceElement) {
        super(outerContext.f38445a.f38441a, u.a(nameResolver, classProto.f36999c).c());
        m mVar;
        p.d(outerContext, "outerContext");
        p.d(classProto, "classProto");
        p.d(nameResolver, "nameResolver");
        p.d(metadataVersion, "metadataVersion");
        p.d(sourceElement, "sourceElement");
        this.f38348a = classProto;
        this.f38349b = metadataVersion;
        this.e = sourceElement;
        this.f = u.a(nameResolver, classProto.f36999c);
        x xVar = x.f38491a;
        this.g = x.a(kotlin.reflect.jvm.internal.impl.b.b.b.f37145d.b(classProto.f36998b));
        this.h = kotlin.reflect.jvm.internal.impl.serialization.deserialization.y.a(x.f38491a, kotlin.reflect.jvm.internal.impl.b.b.b.f37144c.b(classProto.f36998b));
        x xVar2 = x.f38491a;
        kotlin.reflect.jvm.internal.impl.descriptors.e a2 = x.a(kotlin.reflect.jvm.internal.impl.b.b.b.e.b(classProto.f36998b));
        this.i = a2;
        List<a.r> list = classProto.e;
        p.b(list, "classProto.typeParameterList");
        a.s sVar = classProto.o;
        p.b(sVar, "classProto.typeTable");
        kotlin.reflect.jvm.internal.impl.b.b.g gVar = new kotlin.reflect.jvm.internal.impl.b.b.g(sVar);
        i.a aVar = kotlin.reflect.jvm.internal.impl.b.b.i.f37162a;
        a.v vVar = classProto.q;
        p.b(vVar, "classProto.versionRequirementTable");
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.k a3 = outerContext.a(this, list, nameResolver, gVar, i.a.a(vVar), metadataVersion);
        this.f38350c = a3;
        this.j = a2 == kotlin.reflect.jvm.internal.impl.descriptors.e.ENUM_CLASS ? new kotlin.reflect.jvm.internal.impl.resolve.e.l(a3.f38445a.f38441a, this) : h.c.f38297a;
        this.k = new DeserializedClassTypeConstructor(this);
        ar.a aVar2 = ar.f37394a;
        this.l = ar.a.a(this, a3.f38445a.f38441a, a3.f38445a.q.getKotlinTypeRefiner(), new f(this));
        w.a aVar3 = null;
        this.m = a2 == kotlin.reflect.jvm.internal.impl.descriptors.e.ENUM_CLASS ? new b(this) : null;
        kotlin.reflect.jvm.internal.impl.descriptors.k kVar = outerContext.f38447c;
        this.n = kVar;
        this.o = a3.f38445a.f38441a.b(new g());
        this.p = a3.f38445a.f38441a.a(new e());
        this.q = a3.f38445a.f38441a.b(new d());
        this.r = a3.f38445a.f38441a.a(new h());
        kotlin.reflect.jvm.internal.impl.b.b.c cVar = a3.f38446b;
        kotlin.reflect.jvm.internal.impl.b.b.g gVar2 = a3.f38448d;
        DeserializedClassDescriptor deserializedClassDescriptor = kVar instanceof DeserializedClassDescriptor ? (DeserializedClassDescriptor) kVar : null;
        if (deserializedClassDescriptor != null) {
            aVar3 = deserializedClassDescriptor.f38351d;
        }
        this.f38351d = new w.a(classProto, cVar, gVar2, sourceElement, aVar3);
        if (!kotlin.reflect.jvm.internal.impl.b.b.b.f37143b.b(classProto.f36998b).booleanValue()) {
            g.a aVar4 = kotlin.reflect.jvm.internal.impl.descriptors.a.g.f37361a;
            mVar = g.a.a();
        } else {
            mVar = new m(a3.f38445a.f38441a, new c());
        }
        this.s = mVar;
    }

    public static final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.c d(DeserializedClassDescriptor deserializedClassDescriptor) {
        Object obj;
        if (deserializedClassDescriptor.i.isSingleton()) {
            DeserializedClassDescriptor deserializedClassDescriptor2 = deserializedClassDescriptor;
            at atVar = at.f37401a;
            if (atVar == null) {
                kotlin.reflect.jvm.internal.impl.resolve.c.a(21);
            }
            c.a aVar = new c.a(deserializedClassDescriptor2, atVar, false);
            aVar.setReturnType(deserializedClassDescriptor.getDefaultType());
            return aVar;
        }
        List<a.c> list = deserializedClassDescriptor.f38348a.i;
        p.b(list, "classProto.constructorList");
        Iterator<T> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (!kotlin.reflect.jvm.internal.impl.b.b.b.l.b(((a.c) obj).f37005b).booleanValue()) {
                break;
            }
        }
        a.c cVar = (a.c) obj;
        if (cVar == null) {
            return null;
        }
        return deserializedClassDescriptor.f38350c.h.a(cVar, true);
    }

    public static final /* synthetic */ Collection e(DeserializedClassDescriptor deserializedClassDescriptor) {
        List<a.c> list = deserializedClassDescriptor.f38348a.i;
        p.b(list, "classProto.constructorList");
        List<a.c> list2 = list;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list2) {
            Boolean a2 = kotlin.reflect.jvm.internal.impl.b.b.b.l.b(((a.c) obj).f37005b);
            p.b(a2, "IS_SECONDARY.get(it.flags)");
            if (a2.booleanValue()) {
                arrayList.add(obj);
            }
        }
        ArrayList<a.c> arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(n.a((Iterable) arrayList2, 10));
        for (a.c it2 : arrayList2) {
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.t tVar = deserializedClassDescriptor.f38350c.h;
            p.b(it2, "it");
            arrayList3.add(tVar.a(it2, false));
        }
        return n.b((Collection) n.b((Collection) arrayList3, (Iterable) n.b(deserializedClassDescriptor.getUnsubstitutedPrimaryConstructor())), (Iterable) deserializedClassDescriptor.f38350c.f38445a.n.b(deserializedClassDescriptor));
    }

    public static final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.d f(DeserializedClassDescriptor deserializedClassDescriptor) {
        if (!deserializedClassDescriptor.f38348a.g()) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.g contributedClassifier = deserializedClassDescriptor.a().getContributedClassifier(u.b(deserializedClassDescriptor.f38350c.f38446b, deserializedClassDescriptor.f38348a.f37000d), kotlin.reflect.jvm.internal.impl.a.a.d.FROM_DESERIALIZATION);
        if (contributedClassifier instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
            return (kotlin.reflect.jvm.internal.impl.descriptors.d) contributedClassifier;
        }
        return null;
    }

    public static final /* synthetic */ Collection g(DeserializedClassDescriptor deserializedClassDescriptor) {
        if (deserializedClassDescriptor.g != y.SEALED) {
            return z.f36608a;
        }
        List<Integer> fqNames = deserializedClassDescriptor.f38348a.n;
        p.b(fqNames, "fqNames");
        if (!fqNames.isEmpty()) {
            List<Integer> list = fqNames;
            ArrayList arrayList = new ArrayList();
            for (Integer index : list) {
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.j jVar = deserializedClassDescriptor.f38350c.f38445a;
                kotlin.reflect.jvm.internal.impl.b.b.c cVar = deserializedClassDescriptor.f38350c.f38446b;
                p.b(index, "index");
                kotlin.reflect.jvm.internal.impl.descriptors.d a2 = jVar.a(u.a(cVar, index.intValue()));
                if (a2 != null) {
                    arrayList.add(a2);
                }
            }
            return arrayList;
        }
        kotlin.reflect.jvm.internal.impl.resolve.a aVar = kotlin.reflect.jvm.internal.impl.resolve.a.f38221a;
        return kotlin.reflect.jvm.internal.impl.resolve.a.a(deserializedClassDescriptor);
    }

    public final a a() {
        return this.l.a(this.f38350c.f38445a.q.getKotlinTypeRefiner());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.a
    public final kotlin.reflect.jvm.internal.impl.descriptors.a.g getAnnotations() {
        return this.s;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final kotlin.reflect.jvm.internal.impl.descriptors.d getCompanionObjectDescriptor() {
        return this.q.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> getConstructors() {
        return this.p.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.l, kotlin.reflect.jvm.internal.impl.descriptors.k
    public final kotlin.reflect.jvm.internal.impl.descriptors.k getContainingDeclaration() {
        return this.n;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.h
    public final List<TypeParameterDescriptor> getDeclaredTypeParameters() {
        return this.f38350c.g.a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final kotlin.reflect.jvm.internal.impl.descriptors.e getKind() {
        return this.i;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.x
    public final y getModality() {
        return this.g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> getSealedSubclasses() {
        return this.r.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.n
    public final at getSource() {
        return this.e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.resolve.e.h getStaticScope() {
        return this.j;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    public final TypeConstructor getTypeConstructor() {
        return this.k;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.q
    public final kotlin.reflect.jvm.internal.impl.resolve.e.h getUnsubstitutedMemberScope(KotlinTypeRefiner kotlinTypeRefiner) {
        p.d(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this.l.a(kotlinTypeRefiner);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final kotlin.reflect.jvm.internal.impl.descriptors.c getUnsubstitutedPrimaryConstructor() {
        return this.o.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.x
    public final s getVisibility() {
        return this.h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public final boolean isActual() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final boolean isCompanionObject() {
        return kotlin.reflect.jvm.internal.impl.b.b.b.e.b(this.f38348a.f36998b) == a.b.EnumC0632b.COMPANION_OBJECT;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final boolean isData() {
        Boolean a2 = kotlin.reflect.jvm.internal.impl.b.b.b.g.b(this.f38348a.f36998b);
        p.b(a2, "IS_DATA.get(classProto.flags)");
        return a2.booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public final boolean isExpect() {
        Boolean a2 = kotlin.reflect.jvm.internal.impl.b.b.b.i.b(this.f38348a.f36998b);
        p.b(a2, "IS_EXPECT_CLASS.get(classProto.flags)");
        return a2.booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public final boolean isExternal() {
        Boolean a2 = kotlin.reflect.jvm.internal.impl.b.b.b.h.b(this.f38348a.f36998b);
        p.b(a2, "IS_EXTERNAL_CLASS.get(classProto.flags)");
        return a2.booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final boolean isFun() {
        Boolean a2 = kotlin.reflect.jvm.internal.impl.b.b.b.k.b(this.f38348a.f36998b);
        p.b(a2, "IS_FUN_INTERFACE.get(classProto.flags)");
        return a2.booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final boolean isInline() {
        Boolean a2 = kotlin.reflect.jvm.internal.impl.b.b.b.j.b(this.f38348a.f36998b);
        p.b(a2, "IS_INLINE_CLASS.get(classProto.flags)");
        if (!a2.booleanValue()) {
            return false;
        }
        kotlin.reflect.jvm.internal.impl.b.b.a aVar = this.f38349b;
        return aVar.e <= 0 || (aVar.e <= 1 && (aVar.f < 4 || (aVar.f <= 4 && aVar.g <= 1)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.h
    public final boolean isInner() {
        Boolean a2 = kotlin.reflect.jvm.internal.impl.b.b.b.f.b(this.f38348a.f36998b);
        p.b(a2, "IS_INNER.get(classProto.flags)");
        return a2.booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final boolean isValue() {
        Boolean a2 = kotlin.reflect.jvm.internal.impl.b.b.b.j.b(this.f38348a.f36998b);
        p.b(a2, "IS_INLINE_CLASS.get(classProto.flags)");
        return a2.booleanValue() && this.f38349b.a(1, 4, 2);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("deserialized ");
        sb.append(isExpect() ? "expect " : "");
        sb.append("class ");
        sb.append(getName());
        return sb.toString();
    }
}
