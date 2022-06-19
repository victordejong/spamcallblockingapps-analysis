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
import kotlin.C20128v;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18521m;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18255ap;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.p530f.C18363d;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19031aw;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19065c;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19214t;
import kotlin.reflect.jvm.internal.impl.descriptors.C19001ad;
import kotlin.reflect.jvm.internal.impl.descriptors.C19021ar;
import kotlin.reflect.jvm.internal.impl.descriptors.C19034ay;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19127e;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19137a;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19166l;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p537a.C18693a;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18695b;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.EnumC18698d;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18806a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18808b;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18818g;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18824i;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19295h;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19296i;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19297j;
import kotlin.reflect.jvm.internal.impl.resolve.AbstractC19855g;
import kotlin.reflect.jvm.internal.impl.resolve.C19748a;
import kotlin.reflect.jvm.internal.impl.resolve.C19762c;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.C19825d;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.C19843l;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19955o;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19972w;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19948j;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19949k;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19963t;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19970u;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19975x;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19977y;
import kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor.class */
public final class DeserializedClassDescriptor extends AbstractC19137a implements AbstractC19214t {

    /* renamed from: a */
    public final C18702a.C18715b f66101a;

    /* renamed from: b */
    public final AbstractC18806a f66102b;

    /* renamed from: c */
    public final C19949k f66103c;

    /* renamed from: d */
    public final AbstractC19972w.C19973a f66104d;

    /* renamed from: e */
    private final AbstractC19026at f66105e;

    /* renamed from: f */
    private final C18960a f66106f;

    /* renamed from: g */
    private final EnumC19222y f66107g;

    /* renamed from: h */
    private final AbstractC19213s f66108h;

    /* renamed from: i */
    private final EnumC19127e f66109i;

    /* renamed from: j */
    private final AbstractC19839i f66110j;

    /* renamed from: k */
    private final DeserializedClassTypeConstructor f66111k;

    /* renamed from: l */
    private final C19021ar<C19885a> f66112l;

    /* renamed from: m */
    private final C19889b f66113m;

    /* renamed from: n */
    private final AbstractC19193k f66114n;

    /* renamed from: o */
    private final AbstractC19297j<AbstractC19065c> f66115o;

    /* renamed from: p */
    private final AbstractC19296i<Collection<AbstractC19065c>> f66116p;

    /* renamed from: q */
    private final AbstractC19297j<AbstractC19070d> f66117q;

    /* renamed from: r */
    private final AbstractC19296i<Collection<AbstractC19070d>> f66118r;

    /* renamed from: s */
    private final AbstractC18983g f66119s;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassTypeConstructor.class */
    public final class DeserializedClassTypeConstructor extends AbstractClassTypeConstructor {
        private final AbstractC19296i<List<TypeParameterDescriptor>> parameters;
        final /* synthetic */ DeserializedClassDescriptor this$0;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$DeserializedClassTypeConstructor$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassTypeConstructor$a.class */
        public static final class C19884a extends AbstractC18526r implements Function0<List<? extends TypeParameterDescriptor>> {

            /* renamed from: a */
            final /* synthetic */ DeserializedClassDescriptor f66120a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C19884a(DeserializedClassDescriptor deserializedClassDescriptor) {
                super(0);
                this.f66120a = deserializedClassDescriptor;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends TypeParameterDescriptor> invoke() {
                return C19034ay.m2690a(this.f66120a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DeserializedClassTypeConstructor(DeserializedClassDescriptor this$0) {
            super(this$0.f66103c.f66269a.f66249a);
            C18524p.m3840d(this$0, "this$0");
            this.this$0 = this$0;
            this.parameters = this$0.f66103c.f66269a.f66249a.mo2313a(new C19884a(this$0));
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        public final Collection<KotlinType> computeSupertypes() {
            C18961b m2748f;
            C18702a.C18715b c18715b = this.this$0.f66101a;
            C18818g typeTable = this.this$0.f66103c.f66272d;
            C18524p.m3840d(c18715b, "<this>");
            C18524p.m3840d(typeTable, "typeTable");
            List<C18702a.C18768p> list = c18715b.f63868f;
            if (!(!list.isEmpty())) {
                list = null;
            }
            ArrayList arrayList = list;
            if (list == null) {
                List<Integer> supertypeIdList = c18715b.f63869g;
                C18524p.m3843b(supertypeIdList, "supertypeIdList");
                List<Integer> list2 = supertypeIdList;
                ArrayList arrayList2 = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
                for (Integer it2 : list2) {
                    C18524p.m3843b(it2, "it");
                    arrayList2.add(typeTable.m3043a(it2.intValue()));
                }
                arrayList = arrayList2;
            }
            List<C18702a.C18768p> list3 = arrayList;
            DeserializedClassDescriptor deserializedClassDescriptor = this.this$0;
            ArrayList arrayList3 = new ArrayList(C18282n.m4163a((Iterable) list3, 10));
            for (C18702a.C18768p c18768p : list3) {
                arrayList3.add(deserializedClassDescriptor.f66103c.f66275g.m1380a(c18768p));
            }
            List<KotlinType> b = C18282n.m4135b((Collection) arrayList3, (Iterable) this.this$0.f66103c.f66269a.f66262n.mo2687a(this.this$0));
            ArrayList arrayList4 = new ArrayList();
            for (KotlinType kotlinType : b) {
                AbstractC19129g declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
                C19001ad.C19003b c19003b = declarationDescriptor instanceof C19001ad.C19003b ? (C19001ad.C19003b) declarationDescriptor : null;
                if (c19003b != null) {
                    arrayList4.add(c19003b);
                }
            }
            ArrayList arrayList5 = arrayList4;
            if (!arrayList5.isEmpty()) {
                AbstractC19955o abstractC19955o = this.this$0.f66103c.f66269a.f66256h;
                DeserializedClassDescriptor deserializedClassDescriptor2 = this.this$0;
                ArrayList<C19001ad.C19003b> arrayList6 = arrayList5;
                ArrayList arrayList7 = new ArrayList(C18282n.m4163a((Iterable) arrayList6, 10));
                for (C19001ad.C19003b c19003b2 : arrayList6) {
                    C18960a m1532a = C19756a.m1532a((AbstractC19129g) c19003b2);
                    String m2746a = (m1532a == null || (m2748f = m1532a.m2748f()) == null) ? null : m2748f.m2746a();
                    String str = m2746a;
                    if (m2746a == null) {
                        str = c19003b2.getName().m2721a();
                    }
                    arrayList7.add(str);
                }
                abstractC19955o.mo1251a(deserializedClassDescriptor2, arrayList7);
            }
            return C18282n.m4118h((Iterable) b);
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
        public final AbstractC19031aw getSupertypeLoopChecker() {
            return AbstractC19031aw.C19032a.f64761a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final boolean isDenotable() {
            return true;
        }

        public final String toString() {
            String c18966e = this.this$0.getName().toString();
            C18524p.m3843b(c18966e, "name.toString()");
            return c18966e;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$a.class */
    public final class C19885a extends AbstractC19910h {

        /* renamed from: a */
        final /* synthetic */ DeserializedClassDescriptor f66121a;

        /* renamed from: d */
        private final KotlinTypeRefiner f66122d;

        /* renamed from: e */
        private final AbstractC19296i<Collection<AbstractC19193k>> f66123e;

        /* renamed from: f */
        private final AbstractC19296i<Collection<KotlinType>> f66124f;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$a$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$a$a.class */
        public static final class C19886a extends AbstractC18526r implements Function0<List<? extends C18966e>> {

            /* renamed from: a */
            final /* synthetic */ List<C18966e> f66125a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C19886a(List<C18966e> list) {
                super(0);
                this.f66125a = list;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* bridge */ /* synthetic */ List<? extends C18966e> invoke() {
                return this.f66125a;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$a$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$a$b.class */
        public static final class C19887b extends AbstractC18526r implements Function0<Collection<? extends AbstractC19193k>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C19887b() {
                super(0);
                C19885a.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Collection<? extends AbstractC19193k> invoke() {
                C19885a c19885a = C19885a.this;
                C19825d c19825d = C19825d.f65995d;
                AbstractC19834h.C19835a c19835a = AbstractC19834h.f66031g;
                return c19885a.m1330a(c19825d, AbstractC19834h.C19835a.m1414a(), EnumC18698d.WHEN_GET_ALL_DESCRIPTORS);
            }
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$a$c */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$a$c.class */
        public static final class C19888c extends AbstractC19855g {

            /* renamed from: a */
            final /* synthetic */ List<D> f66127a;

            C19888c(List<D> list) {
                this.f66127a = list;
            }

            @Override // kotlin.reflect.jvm.internal.impl.resolve.AbstractC19856h
            /* renamed from: a */
            public final void mo1343a(AbstractC19039b fakeOverride) {
                C18524p.m3840d(fakeOverride, "fakeOverride");
                OverridingUtil.m1568a(fakeOverride, (Function1<AbstractC19039b, C20128v>) null);
                this.f66127a.add(fakeOverride);
            }

            @Override // kotlin.reflect.jvm.internal.impl.resolve.AbstractC19855g
            /* renamed from: a */
            public final void mo1342a(AbstractC19039b fromSuper, AbstractC19039b fromCurrent) {
                C18524p.m3840d(fromSuper, "fromSuper");
                C18524p.m3840d(fromCurrent, "fromCurrent");
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C19885a(kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor r10, kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner r11) {
            /*
                Method dump skipped, instructions count: 259
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor.C19885a.<init>(kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor, kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner):void");
        }

        /* renamed from: a */
        private final <D extends AbstractC19039b> void m1346a(C18966e c18966e, Collection<? extends D> collection, List<D> list) {
            this.f66154c.f66269a.f66265q.getOverridingUtil().m1580a(c18966e, collection, new ArrayList(list), this.f66121a, new C19888c(list));
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h
        /* renamed from: a */
        protected final Set<C18966e> mo1293a() {
            List<KotlinType> supertypes = this.f66121a.f66111k.mo53752getSupertypes();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (KotlinType kotlinType : supertypes) {
                C18282n.m4158a((Collection) linkedHashSet, (Iterable) kotlinType.getMemberScope().getFunctionNames());
            }
            linkedHashSet.addAll(this.f66154c.f66269a.f66262n.mo2685c(this.f66121a));
            return linkedHashSet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h
        /* renamed from: a */
        protected final C18960a mo1291a(C18966e name) {
            C18524p.m3840d(name, "name");
            C18960a m2753a = this.f66121a.f66106f.m2753a(name);
            C18524p.m3843b(m2753a, "classId.createNestedClassId(name)");
            return m2753a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h
        /* renamed from: a */
        protected final void mo1292a(Collection<AbstractC19193k> result, Function1<? super C18966e, Boolean> nameFilter) {
            ArrayList arrayList;
            C18524p.m3840d(result, "result");
            C18524p.m3840d(nameFilter, "nameFilter");
            C19889b c19889b = this.f66121a.f66113m;
            if (c19889b == null) {
                arrayList = null;
            } else {
                Set<C18966e> keySet = c19889b.f66128a.keySet();
                ArrayList arrayList2 = new ArrayList();
                for (C18966e c18966e : keySet) {
                    AbstractC19070d m1341a = c19889b.m1341a(c18966e);
                    if (m1341a != null) {
                        arrayList2.add(m1341a);
                    }
                }
                arrayList = arrayList2;
            }
            ArrayList arrayList3 = arrayList;
            if (arrayList == null) {
                arrayList3 = C18297z.f63400a;
            }
            result.addAll(arrayList3);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h
        /* renamed from: a */
        protected final void mo1332a(C18966e name, List<AbstractC19025as> functions) {
            C18524p.m3840d(name, "name");
            C18524p.m3840d(functions, "functions");
            ArrayList arrayList = new ArrayList();
            for (KotlinType kotlinType : this.f66124f.invoke()) {
                arrayList.addAll(kotlinType.getMemberScope().getContributedFunctions(name, EnumC18698d.FOR_ALREADY_TRACKED));
            }
            functions.addAll(this.f66154c.f66269a.f66262n.mo2688a(name, this.f66121a));
            m1346a(name, arrayList, functions);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h
        /* renamed from: a */
        protected final boolean mo1331a(AbstractC19025as function) {
            C18524p.m3840d(function, "function");
            return this.f66154c.f66269a.f66263o.mo2681a(this.f66121a, function);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h
        /* renamed from: b */
        protected final Set<C18966e> mo1290b() {
            List<KotlinType> supertypes = this.f66121a.f66111k.mo53752getSupertypes();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (KotlinType kotlinType : supertypes) {
                C18282n.m4158a((Collection) linkedHashSet, (Iterable) kotlinType.getMemberScope().getVariableNames());
            }
            return linkedHashSet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h
        /* renamed from: b */
        protected final void mo1328b(C18966e name, List<AbstractC19017an> descriptors) {
            C18524p.m3840d(name, "name");
            C18524p.m3840d(descriptors, "descriptors");
            ArrayList arrayList = new ArrayList();
            for (KotlinType kotlinType : this.f66124f.invoke()) {
                arrayList.addAll(kotlinType.getMemberScope().getContributedVariables(name, EnumC18698d.FOR_ALREADY_TRACKED));
            }
            m1346a(name, arrayList, descriptors);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h
        /* renamed from: c */
        protected final Set<C18966e> mo1288c() {
            LinkedHashSet linkedHashSet;
            List supertypes = this.f66121a.f66111k.mo53752getSupertypes();
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            Iterator it2 = supertypes.iterator();
            while (true) {
                linkedHashSet = linkedHashSet2;
                if (!it2.hasNext()) {
                    break;
                }
                Set<C18966e> classifierNames = ((KotlinType) it2.next()).getMemberScope().getClassifierNames();
                if (classifierNames == null) {
                    linkedHashSet = null;
                    break;
                }
                C18282n.m4158a((Collection) linkedHashSet2, (Iterable) classifierNames);
            }
            return linkedHashSet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
        public final AbstractC19129g getContributedClassifier(C18966e name, AbstractC18695b location) {
            AbstractC19070d m1341a;
            C18524p.m3840d(name, "name");
            C18524p.m3840d(location, "location");
            recordLookup(name, location);
            C19889b c19889b = this.f66121a.f66113m;
            return (c19889b == null || (m1341a = c19889b.m1341a(name)) == null) ? super.getContributedClassifier(name, location) : m1341a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
        public final Collection<AbstractC19193k> getContributedDescriptors(C19825d kindFilter, Function1<? super C18966e, Boolean> nameFilter) {
            C18524p.m3840d(kindFilter, "kindFilter");
            C18524p.m3840d(nameFilter, "nameFilter");
            return this.f66123e.invoke();
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
        public final Collection<AbstractC19025as> getContributedFunctions(C18966e name, AbstractC18695b location) {
            C18524p.m3840d(name, "name");
            C18524p.m3840d(location, "location");
            recordLookup(name, location);
            return super.getContributedFunctions(name, location);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
        public final Collection<AbstractC19017an> getContributedVariables(C18966e name, AbstractC18695b location) {
            C18524p.m3840d(name, "name");
            C18524p.m3840d(location, "location");
            recordLookup(name, location);
            return super.getContributedVariables(name, location);
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
        public final void recordLookup(C18966e name, AbstractC18695b location) {
            C18524p.m3840d(name, "name");
            C18524p.m3840d(location, "location");
            C18693a.m3706a(this.f66154c.f66269a.f66257i, location, this.f66121a, name);
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$b.class */
    public final class C19889b {

        /* renamed from: a */
        final Map<C18966e, C18702a.C18733f> f66128a;

        /* renamed from: b */
        final AbstractC19296i<Set<C18966e>> f66129b;

        /* renamed from: c */
        final /* synthetic */ DeserializedClassDescriptor f66130c;

        /* renamed from: d */
        private final AbstractC19295h<C18966e, AbstractC19070d> f66131d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$b$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$b$a.class */
        public static final class C19890a extends AbstractC18526r implements Function1<C18966e, AbstractC19070d> {

            /* renamed from: b */
            final /* synthetic */ DeserializedClassDescriptor f66133b;

            /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$b$a$a */
            /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$b$a$a.class */
            static final class C19891a extends AbstractC18526r implements Function0<List<? extends AbstractC18977c>> {

                /* renamed from: a */
                final /* synthetic */ DeserializedClassDescriptor f66134a;

                /* renamed from: b */
                final /* synthetic */ C18702a.C18733f f66135b;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C19891a(DeserializedClassDescriptor deserializedClassDescriptor, C18702a.C18733f c18733f) {
                    super(0);
                    this.f66134a = deserializedClassDescriptor;
                    this.f66135b = c18733f;
                }

                @Override // kotlin.jvm.functions.Function0
                public final /* synthetic */ List<? extends AbstractC18977c> invoke() {
                    return C18282n.m4118h((Iterable) this.f66134a.f66103c.f66269a.f66253e.mo1361a(this.f66134a.f66104d, this.f66135b));
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C19890a(DeserializedClassDescriptor deserializedClassDescriptor) {
                super(1);
                C19889b.this = r4;
                this.f66133b = deserializedClassDescriptor;
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ AbstractC19070d invoke(C18966e c18966e) {
                C19166l c19166l;
                C18966e name = c18966e;
                C18524p.m3840d(name, "name");
                C18702a.C18733f c18733f = C19889b.this.f66128a.get(name);
                if (c18733f == null) {
                    c19166l = null;
                } else {
                    DeserializedClassDescriptor deserializedClassDescriptor = this.f66133b;
                    c19166l = C19166l.m2580a(deserializedClassDescriptor.f66103c.f66269a.f66249a, deserializedClassDescriptor, name, C19889b.this.f66129b, new C19902b(deserializedClassDescriptor.f66103c.f66269a.f66249a, new C19891a(deserializedClassDescriptor, c18733f)), AbstractC19026at.f64759a);
                }
                return c19166l;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$b$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$b$b.class */
        public static final class C19892b extends AbstractC18526r implements Function0<Set<? extends C18966e>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C19892b() {
                super(0);
                C19889b.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Set<? extends C18966e> invoke() {
                C19889b c19889b = C19889b.this;
                HashSet hashSet = new HashSet();
                for (KotlinType kotlinType : c19889b.f66130c.getTypeConstructor().mo53752getSupertypes()) {
                    for (AbstractC19193k abstractC19193k : AbstractC19841k.C19842a.m1411a(kotlinType.getMemberScope(), null, null, 3)) {
                        if ((abstractC19193k instanceof AbstractC19025as) || (abstractC19193k instanceof AbstractC19017an)) {
                            hashSet.add(abstractC19193k.getName());
                        }
                    }
                }
                List<C18702a.C18741h> list = c19889b.f66130c.f66101a.f63872j;
                C18524p.m3843b(list, "classProto.functionList");
                List<C18702a.C18741h> list2 = list;
                DeserializedClassDescriptor deserializedClassDescriptor = c19889b.f66130c;
                for (C18702a.C18741h c18741h : list2) {
                    hashSet.add(C19970u.m1228b(deserializedClassDescriptor.f66103c.f66270b, c18741h.f63974d));
                }
                HashSet hashSet2 = hashSet;
                HashSet hashSet3 = hashSet2;
                List<C18702a.C18754m> list3 = c19889b.f66130c.f66101a.f63873k;
                C18524p.m3843b(list3, "classProto.propertyList");
                List<C18702a.C18754m> list4 = list3;
                DeserializedClassDescriptor deserializedClassDescriptor2 = c19889b.f66130c;
                for (C18702a.C18754m c18754m : list4) {
                    hashSet2.add(C19970u.m1228b(deserializedClassDescriptor2.f66103c.f66270b, c18754m.f64037d));
                }
                return C18255ap.m4238a((Set) hashSet3, (Iterable) hashSet2);
            }
        }

        public C19889b(DeserializedClassDescriptor this$0) {
            C18524p.m3840d(this$0, "this$0");
            this.f66130c = this$0;
            List<C18702a.C18733f> list = this$0.f66101a.f63875m;
            C18524p.m3843b(list, "classProto.enumEntryList");
            List<C18702a.C18733f> list2 = list;
            LinkedHashMap linkedHashMap = new LinkedHashMap(C18363d.m4051c(C18247ai.m4260a(C18282n.m4163a((Iterable) list2, 10)), 16));
            for (Object obj : list2) {
                linkedHashMap.put(C19970u.m1228b(this$0.f66103c.f66270b, ((C18702a.C18733f) obj).f63942b), obj);
            }
            this.f66128a = linkedHashMap;
            this.f66131d = this.f66130c.f66103c.f66269a.f66249a.mo2307b(new C19890a(this.f66130c));
            this.f66129b = this.f66130c.f66103c.f66269a.f66249a.mo2313a(new C19892b());
        }

        /* renamed from: a */
        public final AbstractC19070d m1341a(C18966e name) {
            C18524p.m3840d(name, "name");
            return this.f66131d.invoke(name);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$c.class */
    public static final class C19893c extends AbstractC18526r implements Function0<List<? extends AbstractC18977c>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19893c() {
            super(0);
            DeserializedClassDescriptor.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends AbstractC18977c> invoke() {
            return C18282n.m4118h((Iterable) DeserializedClassDescriptor.this.f66103c.f66269a.f66253e.mo1362a(DeserializedClassDescriptor.this.f66104d));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$d.class */
    public static final class C19894d extends AbstractC18526r implements Function0<AbstractC19070d> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19894d() {
            super(0);
            DeserializedClassDescriptor.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ AbstractC19070d invoke() {
            return DeserializedClassDescriptor.m1348f(DeserializedClassDescriptor.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$e */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$e.class */
    public static final class C19895e extends AbstractC18526r implements Function0<Collection<? extends AbstractC19065c>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19895e() {
            super(0);
            DeserializedClassDescriptor.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Collection<? extends AbstractC19065c> invoke() {
            return DeserializedClassDescriptor.m1349e(DeserializedClassDescriptor.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$f */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$f.class */
    public final /* synthetic */ class C19896f extends C18521m implements Function1<KotlinTypeRefiner, C19885a> {
        C19896f(DeserializedClassDescriptor deserializedClassDescriptor) {
            super(1, deserializedClassDescriptor);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e, kotlin.reflect.KCallable
        public final String getName() {
            return "<init>";
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final KDeclarationContainer getOwner() {
            return C18496ac.m3882b(C19885a.class);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final String getSignature() {
            return "<init>(Lorg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedClassDescriptor;Lorg/jetbrains/kotlin/types/checker/KotlinTypeRefiner;)V";
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C19885a invoke(KotlinTypeRefiner kotlinTypeRefiner) {
            KotlinTypeRefiner p0 = kotlinTypeRefiner;
            C18524p.m3840d(p0, "p0");
            return new C19885a((DeserializedClassDescriptor) this.receiver, p0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$g */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$g.class */
    public static final class C19897g extends AbstractC18526r implements Function0<AbstractC19065c> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19897g() {
            super(0);
            DeserializedClassDescriptor.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ AbstractC19065c invoke() {
            return DeserializedClassDescriptor.m1350d(DeserializedClassDescriptor.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$h */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$h.class */
    public static final class C19898h extends AbstractC18526r implements Function0<Collection<? extends AbstractC19070d>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19898h() {
            super(0);
            DeserializedClassDescriptor.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Collection<? extends AbstractC19070d> invoke() {
            return DeserializedClassDescriptor.m1347g(DeserializedClassDescriptor.this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedClassDescriptor(C19949k outerContext, C18702a.C18715b classProto, AbstractC18813c nameResolver, AbstractC18806a metadataVersion, AbstractC19026at sourceElement) {
        super(outerContext.f66269a.f66249a, C19970u.m1229a(nameResolver, classProto.f63865c).m2751c());
        C19936m c19936m;
        C18524p.m3840d(outerContext, "outerContext");
        C18524p.m3840d(classProto, "classProto");
        C18524p.m3840d(nameResolver, "nameResolver");
        C18524p.m3840d(metadataVersion, "metadataVersion");
        C18524p.m3840d(sourceElement, "sourceElement");
        this.f66101a = classProto;
        this.f66102b = metadataVersion;
        this.f66105e = sourceElement;
        this.f66106f = C19970u.m1229a(nameResolver, classProto.f63865c);
        C19975x c19975x = C19975x.f66329a;
        this.f66107g = C19975x.m1224a(C18808b.f64283d.mo3059b(classProto.f63864b));
        this.f66108h = C19977y.m1220a(C19975x.f66329a, C18808b.f64282c.mo3059b(classProto.f63864b));
        C19975x c19975x2 = C19975x.f66329a;
        EnumC19127e m1225a = C19975x.m1225a(C18808b.f64284e.mo3059b(classProto.f63864b));
        this.f66109i = m1225a;
        List<C18702a.C18779r> list = classProto.f63867e;
        C18524p.m3843b(list, "classProto.typeParameterList");
        C18702a.C18784s c18784s = classProto.f63877o;
        C18524p.m3843b(c18784s, "classProto.typeTable");
        C18818g c18818g = new C18818g(c18784s);
        C18824i.C18825a c18825a = C18824i.f64325a;
        C18702a.C18797v c18797v = classProto.f63879q;
        C18524p.m3843b(c18797v, "classProto.versionRequirementTable");
        C19949k m1259a = outerContext.m1259a(this, list, nameResolver, c18818g, C18824i.C18825a.m3040a(c18797v), metadataVersion);
        this.f66103c = m1259a;
        this.f66110j = m1225a == EnumC19127e.ENUM_CLASS ? new C19843l(m1259a.f66269a.f66249a, this) : AbstractC19834h.C19838c.f66035a;
        this.f66111k = new DeserializedClassTypeConstructor(this);
        C19021ar.C19022a c19022a = C19021ar.f64750a;
        this.f66112l = C19021ar.C19022a.m2692a(this, m1259a.f66269a.f66249a, m1259a.f66269a.f66265q.getKotlinTypeRefiner(), new C19896f(this));
        this.f66113m = m1225a == EnumC19127e.ENUM_CLASS ? new C19889b(this) : null;
        AbstractC19193k abstractC19193k = outerContext.f66271c;
        this.f66114n = abstractC19193k;
        this.f66115o = m1259a.f66269a.f66249a.mo2308b(new C19897g());
        this.f66116p = m1259a.f66269a.f66249a.mo2313a(new C19895e());
        this.f66117q = m1259a.f66269a.f66249a.mo2308b(new C19894d());
        this.f66118r = m1259a.f66269a.f66249a.mo2313a(new C19898h());
        AbstractC18813c abstractC18813c = m1259a.f66270b;
        C18818g c18818g2 = m1259a.f66272d;
        DeserializedClassDescriptor deserializedClassDescriptor = abstractC19193k instanceof DeserializedClassDescriptor ? (DeserializedClassDescriptor) abstractC19193k : null;
        this.f66104d = new AbstractC19972w.C19973a(classProto, abstractC18813c, c18818g2, sourceElement, deserializedClassDescriptor == null ? null : deserializedClassDescriptor.f66104d);
        if (!C18808b.f64281b.mo3059b(classProto.f63864b).booleanValue()) {
            AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
            c19936m = AbstractC18983g.C18984a.m2705a();
        } else {
            c19936m = new C19936m(m1259a.f66269a.f66249a, new C19893c());
        }
        this.f66119s = c19936m;
    }

    /* renamed from: d */
    public static final /* synthetic */ AbstractC19065c m1350d(DeserializedClassDescriptor deserializedClassDescriptor) {
        Object obj;
        if (deserializedClassDescriptor.f66109i.isSingleton()) {
            DeserializedClassDescriptor deserializedClassDescriptor2 = deserializedClassDescriptor;
            AbstractC19026at abstractC19026at = AbstractC19026at.f64759a;
            if (abstractC19026at == null) {
                C19762c.m1523a(21);
            }
            C19762c.C19763a c19763a = new C19762c.C19763a(deserializedClassDescriptor2, abstractC19026at, false);
            c19763a.setReturnType(deserializedClassDescriptor.getDefaultType());
            return c19763a;
        }
        List<C18702a.C18720c> list = deserializedClassDescriptor.f66101a.f63871i;
        C18524p.m3843b(list, "classProto.constructorList");
        Iterator<T> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (!C18808b.f64291l.mo3059b(((C18702a.C18720c) obj).f63906b).booleanValue()) {
                break;
            }
        }
        C18702a.C18720c c18720c = (C18702a.C18720c) obj;
        if (c18720c != null) {
            return deserializedClassDescriptor.f66103c.f66276h.m1245a(c18720c, true);
        }
        return null;
    }

    /* renamed from: e */
    public static final /* synthetic */ Collection m1349e(DeserializedClassDescriptor deserializedClassDescriptor) {
        List<C18702a.C18720c> list = deserializedClassDescriptor.f66101a.f63871i;
        C18524p.m3843b(list, "classProto.constructorList");
        List<C18702a.C18720c> list2 = list;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list2) {
            Boolean mo3059b = C18808b.f64291l.mo3059b(((C18702a.C18720c) obj).f63906b);
            C18524p.m3843b(mo3059b, "IS_SECONDARY.get(it.flags)");
            if (mo3059b.booleanValue()) {
                arrayList.add(obj);
            }
        }
        ArrayList<C18702a.C18720c> arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(C18282n.m4163a((Iterable) arrayList2, 10));
        for (C18702a.C18720c it2 : arrayList2) {
            C19963t c19963t = deserializedClassDescriptor.f66103c.f66276h;
            C18524p.m3843b(it2, "it");
            arrayList3.add(c19963t.m1245a(it2, false));
        }
        return C18282n.m4135b((Collection) C18282n.m4135b((Collection) arrayList3, (Iterable) C18282n.m4169b(deserializedClassDescriptor.getUnsubstitutedPrimaryConstructor())), (Iterable) deserializedClassDescriptor.f66103c.f66269a.f66262n.mo2686b(deserializedClassDescriptor));
    }

    /* renamed from: f */
    public static final /* synthetic */ AbstractC19070d m1348f(DeserializedClassDescriptor deserializedClassDescriptor) {
        if (deserializedClassDescriptor.f66101a.m3601g()) {
            AbstractC19129g contributedClassifier = deserializedClassDescriptor.m1354a().getContributedClassifier(C19970u.m1228b(deserializedClassDescriptor.f66103c.f66270b, deserializedClassDescriptor.f66101a.f63866d), EnumC18698d.FROM_DESERIALIZATION);
            if (!(contributedClassifier instanceof AbstractC19070d)) {
                return null;
            }
            return (AbstractC19070d) contributedClassifier;
        }
        return null;
    }

    /* renamed from: g */
    public static final /* synthetic */ Collection m1347g(DeserializedClassDescriptor deserializedClassDescriptor) {
        if (deserializedClassDescriptor.f66107g != EnumC19222y.SEALED) {
            return C18297z.f63400a;
        }
        List<Integer> fqNames = deserializedClassDescriptor.f66101a.f63876n;
        C18524p.m3843b(fqNames, "fqNames");
        if (!(!fqNames.isEmpty())) {
            C19748a c19748a = C19748a.f65936a;
            return C19748a.m1548a(deserializedClassDescriptor);
        }
        List<Integer> list = fqNames;
        ArrayList arrayList = new ArrayList();
        for (Integer index : list) {
            C19948j c19948j = deserializedClassDescriptor.f66103c.f66269a;
            AbstractC18813c abstractC18813c = deserializedClassDescriptor.f66103c.f66270b;
            C18524p.m3843b(index, "index");
            AbstractC19070d m1261a = c19948j.m1261a(C19970u.m1229a(abstractC18813c, index.intValue()));
            if (m1261a != null) {
                arrayList.add(m1261a);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public final C19885a m1354a() {
        return this.f66112l.m2694a(this.f66103c.f66269a.f66265q.getKotlinTypeRefiner());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18975a
    public final AbstractC18983g getAnnotations() {
        return this.f66119s;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final AbstractC19070d getCompanionObjectDescriptor() {
        return this.f66117q.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final Collection<AbstractC19065c> getConstructors() {
        return this.f66116p.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19194l, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public final AbstractC19193k getContainingDeclaration() {
        return this.f66114n;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19130h
    public final List<TypeParameterDescriptor> getDeclaredTypeParameters() {
        return this.f66103c.f66275g.m1382a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final EnumC19127e getKind() {
        return this.f66109i;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public final EnumC19222y getModality() {
        return this.f66107g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final Collection<AbstractC19070d> getSealedSubclasses() {
        return this.f66118r.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19196n
    public final AbstractC19026at getSource() {
        return this.f66105e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final /* bridge */ /* synthetic */ AbstractC19834h getStaticScope() {
        return this.f66110j;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g
    public final TypeConstructor getTypeConstructor() {
        return this.f66111k;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19179q
    public final AbstractC19834h getUnsubstitutedMemberScope(KotlinTypeRefiner kotlinTypeRefiner) {
        C18524p.m3840d(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this.f66112l.m2694a(kotlinTypeRefiner);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final AbstractC19065c getUnsubstitutedPrimaryConstructor() {
        return this.f66115o.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19197o, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public final AbstractC19213s getVisibility() {
        return this.f66108h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public final boolean isActual() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final boolean isCompanionObject() {
        return C18808b.f64284e.mo3059b(this.f66101a.f63864b) == C18702a.C18715b.EnumC18718b.COMPANION_OBJECT;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final boolean isData() {
        Boolean mo3059b = C18808b.f64286g.mo3059b(this.f66101a.f63864b);
        C18524p.m3843b(mo3059b, "IS_DATA.get(classProto.flags)");
        return mo3059b.booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public final boolean isExpect() {
        Boolean mo3059b = C18808b.f64288i.mo3059b(this.f66101a.f63864b);
        C18524p.m3843b(mo3059b, "IS_EXPECT_CLASS.get(classProto.flags)");
        return mo3059b.booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public final boolean isExternal() {
        Boolean mo3059b = C18808b.f64287h.mo3059b(this.f66101a.f63864b);
        C18524p.m3843b(mo3059b, "IS_EXTERNAL_CLASS.get(classProto.flags)");
        return mo3059b.booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final boolean isFun() {
        Boolean mo3059b = C18808b.f64290k.mo3059b(this.f66101a.f63864b);
        C18524p.m3843b(mo3059b, "IS_FUN_INTERFACE.get(classProto.flags)");
        return mo3059b.booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final boolean isInline() {
        Boolean mo3059b = C18808b.f64289j.mo3059b(this.f66101a.f63864b);
        C18524p.m3843b(mo3059b, "IS_INLINE_CLASS.get(classProto.flags)");
        if (mo3059b.booleanValue()) {
            AbstractC18806a abstractC18806a = this.f66102b;
            return abstractC18806a.f64263e <= 0 || (abstractC18806a.f64263e <= 1 && (abstractC18806a.f64264f < 4 || (abstractC18806a.f64264f <= 4 && abstractC18806a.f64265g <= 1)));
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19130h
    public final boolean isInner() {
        Boolean mo3059b = C18808b.f64285f.mo3059b(this.f66101a.f63864b);
        C18524p.m3843b(mo3059b, "IS_INNER.get(classProto.flags)");
        return mo3059b.booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final boolean isValue() {
        Boolean mo3059b = C18808b.f64289j.mo3059b(this.f66101a.f63864b);
        C18524p.m3843b(mo3059b, "IS_INLINE_CLASS.get(classProto.flags)");
        return mo3059b.booleanValue() && this.f66102b.m3071a(1, 4, 2);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("deserialized ");
        sb.append(isExpect() ? "expect " : "");
        sb.append("class ");
        sb.append(getName());
        return sb.toString();
    }
}
