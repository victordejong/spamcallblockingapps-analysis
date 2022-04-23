package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
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
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.r;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.ax;
import kotlin.reflect.jvm.internal.impl.f.g;
import kotlin.reflect.jvm.internal.impl.f.j;
import kotlin.reflect.jvm.internal.impl.f.m;
import kotlin.reflect.jvm.internal.impl.protobuf.p;
import kotlin.reflect.jvm.internal.impl.resolve.e.d;
import kotlin.reflect.jvm.internal.impl.resolve.e.i;
import kotlin.reflect.jvm.internal.impl.resolve.f;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.k;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.t;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.u;
import kotlin.v;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h.class */
public abstract class h extends i {

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f38378b = {ac.a(new aa(ac.b(h.class), "classNames", "getClassNames$deserialization()Ljava/util/Set;")), ac.a(new aa(ac.b(h.class), "classifierNamesLazy", "getClassifierNamesLazy()Ljava/util/Set;"))};

    /* renamed from: a  reason: collision with root package name */
    private final a f38379a;

    /* renamed from: c  reason: collision with root package name */
    final k f38380c;

    /* renamed from: d  reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.f.i f38381d;
    private final j e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$a.class */
    public interface a {
        Collection<as> a(kotlin.reflect.jvm.internal.impl.c.e eVar, kotlin.reflect.jvm.internal.impl.a.a.b bVar);

        Set<kotlin.reflect.jvm.internal.impl.c.e> a();

        ax a(kotlin.reflect.jvm.internal.impl.c.e eVar);

        void a(Collection<kotlin.reflect.jvm.internal.impl.descriptors.k> collection, kotlin.reflect.jvm.internal.impl.resolve.e.d dVar, Function1<? super kotlin.reflect.jvm.internal.impl.c.e, Boolean> function1, kotlin.reflect.jvm.internal.impl.a.a.b bVar);

        Collection<an> b(kotlin.reflect.jvm.internal.impl.c.e eVar, kotlin.reflect.jvm.internal.impl.a.a.b bVar);

        Set<kotlin.reflect.jvm.internal.impl.c.e> b();

        Set<kotlin.reflect.jvm.internal.impl.c.e> c();
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b.class */
    final class b implements a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ KProperty<Object>[] f38382a = {ac.a(new aa(ac.b(b.class), "declaredFunctions", "getDeclaredFunctions()Ljava/util/List;")), ac.a(new aa(ac.b(b.class), "declaredProperties", "getDeclaredProperties()Ljava/util/List;")), ac.a(new aa(ac.b(b.class), "allTypeAliases", "getAllTypeAliases()Ljava/util/List;")), ac.a(new aa(ac.b(b.class), "allFunctions", "getAllFunctions()Ljava/util/List;")), ac.a(new aa(ac.b(b.class), "allProperties", "getAllProperties()Ljava/util/List;")), ac.a(new aa(ac.b(b.class), "typeAliasesByName", "getTypeAliasesByName()Ljava/util/Map;")), ac.a(new aa(ac.b(b.class), "functionsByName", "getFunctionsByName()Ljava/util/Map;")), ac.a(new aa(ac.b(b.class), "propertiesByName", "getPropertiesByName()Ljava/util/Map;")), ac.a(new aa(ac.b(b.class), "functionNames", "getFunctionNames()Ljava/util/Set;")), ac.a(new aa(ac.b(b.class), "variableNames", "getVariableNames()Ljava/util/Set;"))};

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ h f38383b;

        /* renamed from: c  reason: collision with root package name */
        private final List<a.h> f38384c;

        /* renamed from: d  reason: collision with root package name */
        private final List<a.m> f38385d;
        private final List<a.q> e;
        private final kotlin.reflect.jvm.internal.impl.f.i f;
        private final kotlin.reflect.jvm.internal.impl.f.i g;
        private final kotlin.reflect.jvm.internal.impl.f.i h;
        private final kotlin.reflect.jvm.internal.impl.f.i i;
        private final kotlin.reflect.jvm.internal.impl.f.i j;
        private final kotlin.reflect.jvm.internal.impl.f.i k;
        private final kotlin.reflect.jvm.internal.impl.f.i l;
        private final kotlin.reflect.jvm.internal.impl.f.i m;
        private final kotlin.reflect.jvm.internal.impl.f.i n;
        private final kotlin.reflect.jvm.internal.impl.f.i o;

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b$a.class */
        static final class a extends r implements Function0<List<? extends as>> {
            a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends as> invoke() {
                return n.b((Collection) b.this.d(), (Iterable) b.e(b.this));
            }
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h$b$b  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b$b.class */
        static final class C0717b extends r implements Function0<List<? extends an>> {
            C0717b() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends an> invoke() {
                return n.b((Collection) b.this.e(), (Iterable) b.g(b.this));
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b$c.class */
        static final class c extends r implements Function0<List<? extends ax>> {
            c() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends ax> invoke() {
                return b.c(b.this);
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b$d.class */
        static final class d extends r implements Function0<List<? extends as>> {
            d() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends as> invoke() {
                return b.a(b.this);
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b$e.class */
        static final class e extends r implements Function0<List<? extends an>> {
            e() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends an> invoke() {
                return b.b(b.this);
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b$f.class */
        static final class f extends r implements Function0<Set<? extends kotlin.reflect.jvm.internal.impl.c.e>> {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ h f38392b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            f(h hVar) {
                super(0);
                this.f38392b = hVar;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Set<? extends kotlin.reflect.jvm.internal.impl.c.e> invoke() {
                b bVar = b.this;
                List<p> list = bVar.f38384c;
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                h hVar = bVar.f38383b;
                for (p pVar : list) {
                    linkedHashSet.add(u.b(hVar.f38380c.f38446b, ((a.h) pVar).f37040d));
                }
                return ap.a((Set) linkedHashSet, (Iterable) this.f38392b.a());
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b$g.class */
        static final class g extends r implements Function0<Map<kotlin.reflect.jvm.internal.impl.c.e, ? extends List<? extends as>>> {
            g() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Map<kotlin.reflect.jvm.internal.impl.c.e, ? extends List<? extends as>> invoke() {
                List f = b.this.f();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Object obj : f) {
                    kotlin.reflect.jvm.internal.impl.c.e name = ((as) obj).getName();
                    kotlin.jvm.internal.p.b(name, "it.name");
                    Object obj2 = linkedHashMap.get(name);
                    ArrayList arrayList = obj2;
                    if (obj2 == null) {
                        arrayList = new ArrayList();
                        linkedHashMap.put(name, arrayList);
                    }
                    ((List) arrayList).add(obj);
                }
                return linkedHashMap;
            }
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h$b$h  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b$h.class */
        static final class C0718h extends r implements Function0<Map<kotlin.reflect.jvm.internal.impl.c.e, ? extends List<? extends an>>> {
            C0718h() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Map<kotlin.reflect.jvm.internal.impl.c.e, ? extends List<? extends an>> invoke() {
                List g = b.this.g();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Object obj : g) {
                    kotlin.reflect.jvm.internal.impl.c.e name = ((an) obj).getName();
                    kotlin.jvm.internal.p.b(name, "it.name");
                    Object obj2 = linkedHashMap.get(name);
                    ArrayList arrayList = obj2;
                    if (obj2 == null) {
                        arrayList = new ArrayList();
                        linkedHashMap.put(name, arrayList);
                    }
                    ((List) arrayList).add(obj);
                }
                return linkedHashMap;
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b$i.class */
        static final class i extends r implements Function0<Map<kotlin.reflect.jvm.internal.impl.c.e, ? extends ax>> {
            i() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Map<kotlin.reflect.jvm.internal.impl.c.e, ? extends ax> invoke() {
                List h = b.h(b.this);
                LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.f.d.c(ai.a(n.a((Iterable) h, 10)), 16));
                for (Object obj : h) {
                    kotlin.reflect.jvm.internal.impl.c.e name = ((ax) obj).getName();
                    kotlin.jvm.internal.p.b(name, "it.name");
                    linkedHashMap.put(name, obj);
                }
                return linkedHashMap;
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b$j.class */
        static final class j extends r implements Function0<Set<? extends kotlin.reflect.jvm.internal.impl.c.e>> {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ h f38397b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            j(h hVar) {
                super(0);
                this.f38397b = hVar;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Set<? extends kotlin.reflect.jvm.internal.impl.c.e> invoke() {
                b bVar = b.this;
                List<p> list = bVar.f38385d;
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                h hVar = bVar.f38383b;
                for (p pVar : list) {
                    linkedHashSet.add(u.b(hVar.f38380c.f38446b, ((a.m) pVar).f37061d));
                }
                return ap.a((Set) linkedHashSet, (Iterable) this.f38397b.b());
            }
        }

        public b(h this$0, List<a.h> functionList, List<a.m> propertyList, z typeAliasList) {
            kotlin.jvm.internal.p.d(this$0, "this$0");
            kotlin.jvm.internal.p.d(functionList, "functionList");
            kotlin.jvm.internal.p.d(propertyList, "propertyList");
            kotlin.jvm.internal.p.d(typeAliasList, "typeAliasList");
            this.f38383b = this$0;
            this.f38384c = functionList;
            this.f38385d = propertyList;
            this.e = !this$0.f38380c.f38445a.f38443c.getTypeAliasesAllowed() ? z.f36608a : typeAliasList;
            this.f = this$0.f38380c.f38445a.f38441a.a(new d());
            this.g = this$0.f38380c.f38445a.f38441a.a(new e());
            this.h = this$0.f38380c.f38445a.f38441a.a(new c());
            this.i = this$0.f38380c.f38445a.f38441a.a(new a());
            this.j = this$0.f38380c.f38445a.f38441a.a(new C0717b());
            this.k = this$0.f38380c.f38445a.f38441a.a(new i());
            this.l = this$0.f38380c.f38445a.f38441a.a(new g());
            this.m = this$0.f38380c.f38445a.f38441a.a(new C0718h());
            this.n = this$0.f38380c.f38445a.f38441a.a(new f(this$0));
            this.o = this$0.f38380c.f38445a.f38441a.a(new j(this$0));
        }

        public static final /* synthetic */ List a(b bVar) {
            List<a.h> list = bVar.f38384c;
            h hVar = bVar.f38383b;
            List<a.h> list2 = list;
            ArrayList arrayList = new ArrayList();
            for (p pVar : list2) {
                as a2 = hVar.f38380c.h.a((a.h) pVar);
                if (!hVar.a(a2)) {
                    a2 = null;
                }
                as asVar = a2;
                if (asVar != null) {
                    arrayList.add(asVar);
                }
            }
            return arrayList;
        }

        private final List<as> b(kotlin.reflect.jvm.internal.impl.c.e eVar) {
            List<as> d2 = d();
            h hVar = this.f38383b;
            List<as> list = d2;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (kotlin.jvm.internal.p.a(((kotlin.reflect.jvm.internal.impl.descriptors.k) obj).getName(), eVar)) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            hVar.a(eVar, arrayList2);
            return arrayList2.subList(size, arrayList2.size());
        }

        public static final /* synthetic */ List b(b bVar) {
            List<a.m> list = bVar.f38385d;
            h hVar = bVar.f38383b;
            ArrayList arrayList = new ArrayList();
            for (p pVar : list) {
                arrayList.add(hVar.f38380c.h.a((a.m) pVar));
            }
            return arrayList;
        }

        private final List<an> c(kotlin.reflect.jvm.internal.impl.c.e eVar) {
            List<an> e2 = e();
            h hVar = this.f38383b;
            List<an> list = e2;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (kotlin.jvm.internal.p.a(((kotlin.reflect.jvm.internal.impl.descriptors.k) obj).getName(), eVar)) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            hVar.b(eVar, arrayList2);
            return arrayList2.subList(size, arrayList2.size());
        }

        public static final /* synthetic */ List c(b bVar) {
            List<a.q> list = bVar.e;
            h hVar = bVar.f38383b;
            ArrayList arrayList = new ArrayList();
            for (p pVar : list) {
                arrayList.add(hVar.f38380c.h.a((a.q) pVar));
            }
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<as> d() {
            return (List) m.a(this.f, f38382a[0]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<an> e() {
            return (List) m.a(this.g, f38382a[1]);
        }

        public static final /* synthetic */ List e(b bVar) {
            Set<kotlin.reflect.jvm.internal.impl.c.e> a2 = bVar.f38383b.a();
            ArrayList arrayList = new ArrayList();
            for (kotlin.reflect.jvm.internal.impl.c.e eVar : a2) {
                n.a((Collection) arrayList, (Iterable) bVar.b(eVar));
            }
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<as> f() {
            return (List) m.a(this.i, f38382a[3]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<an> g() {
            return (List) m.a(this.j, f38382a[4]);
        }

        public static final /* synthetic */ List g(b bVar) {
            Set<kotlin.reflect.jvm.internal.impl.c.e> b2 = bVar.f38383b.b();
            ArrayList arrayList = new ArrayList();
            for (kotlin.reflect.jvm.internal.impl.c.e eVar : b2) {
                n.a((Collection) arrayList, (Iterable) bVar.c(eVar));
            }
            return arrayList;
        }

        public static final /* synthetic */ List h(b bVar) {
            return (List) m.a(bVar.h, f38382a[2]);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h.a
        public final Collection<as> a(kotlin.reflect.jvm.internal.impl.c.e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
            kotlin.jvm.internal.p.d(name, "name");
            kotlin.jvm.internal.p.d(location, "location");
            if (!a().contains(name)) {
                return z.f36608a;
            }
            Collection<as> collection = (Collection) ((Map) m.a(this.l, f38382a[6])).get(name);
            z zVar = collection;
            if (collection == null) {
                zVar = z.f36608a;
            }
            return zVar;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h.a
        public final Set<kotlin.reflect.jvm.internal.impl.c.e> a() {
            return (Set) m.a(this.n, f38382a[8]);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h.a
        public final ax a(kotlin.reflect.jvm.internal.impl.c.e name) {
            kotlin.jvm.internal.p.d(name, "name");
            return (ax) ((Map) m.a(this.k, f38382a[5])).get(name);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h.a
        public final void a(Collection<kotlin.reflect.jvm.internal.impl.descriptors.k> result, kotlin.reflect.jvm.internal.impl.resolve.e.d kindFilter, Function1<? super kotlin.reflect.jvm.internal.impl.c.e, Boolean> nameFilter, kotlin.reflect.jvm.internal.impl.a.a.b location) {
            int i2;
            int i3;
            kotlin.jvm.internal.p.d(result, "result");
            kotlin.jvm.internal.p.d(kindFilter, "kindFilter");
            kotlin.jvm.internal.p.d(nameFilter, "nameFilter");
            kotlin.jvm.internal.p.d(location, "location");
            d.a aVar = kotlin.reflect.jvm.internal.impl.resolve.e.d.f38279a;
            i2 = kotlin.reflect.jvm.internal.impl.resolve.e.d.t;
            if (kindFilter.a(i2)) {
                for (Object obj : g()) {
                    kotlin.reflect.jvm.internal.impl.c.e name = ((an) obj).getName();
                    kotlin.jvm.internal.p.b(name, "it.name");
                    if (nameFilter.invoke(name).booleanValue()) {
                        result.add(obj);
                    }
                }
            }
            d.a aVar2 = kotlin.reflect.jvm.internal.impl.resolve.e.d.f38279a;
            i3 = kotlin.reflect.jvm.internal.impl.resolve.e.d.s;
            if (kindFilter.a(i3)) {
                for (Object obj2 : f()) {
                    kotlin.reflect.jvm.internal.impl.c.e name2 = ((as) obj2).getName();
                    kotlin.jvm.internal.p.b(name2, "it.name");
                    if (nameFilter.invoke(name2).booleanValue()) {
                        result.add(obj2);
                    }
                }
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h.a
        public final Collection<an> b(kotlin.reflect.jvm.internal.impl.c.e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
            kotlin.jvm.internal.p.d(name, "name");
            kotlin.jvm.internal.p.d(location, "location");
            if (!b().contains(name)) {
                return z.f36608a;
            }
            Collection<an> collection = (Collection) ((Map) m.a(this.m, f38382a[7])).get(name);
            z zVar = collection;
            if (collection == null) {
                zVar = z.f36608a;
            }
            return zVar;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h.a
        public final Set<kotlin.reflect.jvm.internal.impl.c.e> b() {
            return (Set) m.a(this.o, f38382a[9]);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h.a
        public final Set<kotlin.reflect.jvm.internal.impl.c.e> c() {
            List<a.q> list = this.e;
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            h hVar = this.f38383b;
            for (p pVar : list) {
                linkedHashSet.add(u.b(hVar.f38380c.f38446b, ((a.q) pVar).f37100c));
            }
            return linkedHashSet;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c.class */
    final class c implements a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ KProperty<Object>[] f38398a = {ac.a(new aa(ac.b(c.class), "functionNames", "getFunctionNames()Ljava/util/Set;")), ac.a(new aa(ac.b(c.class), "variableNames", "getVariableNames()Ljava/util/Set;"))};

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ h f38399b;

        /* renamed from: c  reason: collision with root package name */
        private final Map<kotlin.reflect.jvm.internal.impl.c.e, byte[]> f38400c;

        /* renamed from: d  reason: collision with root package name */
        private final Map<kotlin.reflect.jvm.internal.impl.c.e, byte[]> f38401d;
        private final Map<kotlin.reflect.jvm.internal.impl.c.e, byte[]> e;
        private final g<kotlin.reflect.jvm.internal.impl.c.e, Collection<as>> f;
        private final g<kotlin.reflect.jvm.internal.impl.c.e, Collection<an>> g;
        private final kotlin.reflect.jvm.internal.impl.f.h<kotlin.reflect.jvm.internal.impl.c.e, ax> h;
        private final kotlin.reflect.jvm.internal.impl.f.i i;
        private final kotlin.reflect.jvm.internal.impl.f.i j;

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$a.class */
        public static final class a extends r implements Function0<M> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ kotlin.reflect.jvm.internal.impl.protobuf.r<M> f38402a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ ByteArrayInputStream f38403b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ h f38404c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(kotlin.reflect.jvm.internal.impl.protobuf.r<M> rVar, ByteArrayInputStream byteArrayInputStream, h hVar) {
                super(0);
                this.f38402a = rVar;
                this.f38403b = byteArrayInputStream;
                this.f38404c = hVar;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Object invoke() {
                return (p) this.f38402a.a(this.f38403b, this.f38404c.f38380c.f38445a.p);
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$b.class */
        static final class b extends r implements Function0<Set<? extends kotlin.reflect.jvm.internal.impl.c.e>> {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ h f38406b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(h hVar) {
                super(0);
                this.f38406b = hVar;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Set<? extends kotlin.reflect.jvm.internal.impl.c.e> invoke() {
                return ap.a(c.this.f38400c.keySet(), (Iterable) this.f38406b.a());
            }
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h$c$c  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$c.class */
        static final class C0719c extends r implements Function1<kotlin.reflect.jvm.internal.impl.c.e, Collection<? extends as>> {
            C0719c() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ Collection<? extends as> invoke(kotlin.reflect.jvm.internal.impl.c.e eVar) {
                kotlin.reflect.jvm.internal.impl.c.e it2 = eVar;
                kotlin.jvm.internal.p.d(it2, "it");
                return c.a(c.this, it2);
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$d.class */
        static final class d extends r implements Function1<kotlin.reflect.jvm.internal.impl.c.e, Collection<? extends an>> {
            d() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ Collection<? extends an> invoke(kotlin.reflect.jvm.internal.impl.c.e eVar) {
                kotlin.reflect.jvm.internal.impl.c.e it2 = eVar;
                kotlin.jvm.internal.p.d(it2, "it");
                return c.b(c.this, it2);
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$e.class */
        static final class e extends r implements Function1<kotlin.reflect.jvm.internal.impl.c.e, ax> {
            e() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ ax invoke(kotlin.reflect.jvm.internal.impl.c.e eVar) {
                kotlin.reflect.jvm.internal.impl.c.e it2 = eVar;
                kotlin.jvm.internal.p.d(it2, "it");
                return c.c(c.this, it2);
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$f.class */
        static final class f extends r implements Function0<Set<? extends kotlin.reflect.jvm.internal.impl.c.e>> {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ h f38411b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            f(h hVar) {
                super(0);
                this.f38411b = hVar;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Set<? extends kotlin.reflect.jvm.internal.impl.c.e> invoke() {
                return ap.a(c.this.f38401d.keySet(), (Iterable) this.f38411b.b());
            }
        }

        public c(h this$0, List<a.h> functionList, List<a.m> propertyList, List<a.q> typeAliasList) {
            Map<kotlin.reflect.jvm.internal.impl.c.e, byte[]> map;
            kotlin.jvm.internal.p.d(this$0, "this$0");
            kotlin.jvm.internal.p.d(functionList, "functionList");
            kotlin.jvm.internal.p.d(propertyList, "propertyList");
            kotlin.jvm.internal.p.d(typeAliasList, "typeAliasList");
            this.f38399b = this$0;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : functionList) {
                kotlin.reflect.jvm.internal.impl.c.e b2 = u.b(this$0.f38380c.f38446b, ((a.h) ((p) obj)).f37040d);
                Object obj2 = linkedHashMap.get(b2);
                ArrayList arrayList = obj2;
                if (obj2 == null) {
                    arrayList = new ArrayList();
                    linkedHashMap.put(b2, arrayList);
                }
                ((List) arrayList).add(obj);
            }
            this.f38400c = a(linkedHashMap);
            h hVar = this.f38399b;
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Object obj3 : propertyList) {
                kotlin.reflect.jvm.internal.impl.c.e b3 = u.b(hVar.f38380c.f38446b, ((a.m) ((p) obj3)).f37061d);
                Object obj4 = linkedHashMap2.get(b3);
                ArrayList arrayList2 = obj4;
                if (obj4 == null) {
                    arrayList2 = new ArrayList();
                    linkedHashMap2.put(b3, arrayList2);
                }
                ((List) arrayList2).add(obj3);
            }
            this.f38401d = a(linkedHashMap2);
            if (this.f38399b.f38380c.f38445a.f38443c.getTypeAliasesAllowed()) {
                h hVar2 = this.f38399b;
                LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                for (Object obj5 : typeAliasList) {
                    kotlin.reflect.jvm.internal.impl.c.e b4 = u.b(hVar2.f38380c.f38446b, ((a.q) ((p) obj5)).f37100c);
                    Object obj6 = linkedHashMap3.get(b4);
                    ArrayList arrayList3 = obj6;
                    if (obj6 == null) {
                        arrayList3 = new ArrayList();
                        linkedHashMap3.put(b4, arrayList3);
                    }
                    ((List) arrayList3).add(obj5);
                }
                map = a(linkedHashMap3);
            } else {
                map = ai.a();
            }
            this.e = map;
            this.f = this.f38399b.f38380c.f38445a.f38441a.a(new C0719c());
            this.g = this.f38399b.f38380c.f38445a.f38441a.a(new d());
            this.h = this.f38399b.f38380c.f38445a.f38441a.b(new e());
            this.i = this.f38399b.f38380c.f38445a.f38441a.a(new b(this.f38399b));
            this.j = this.f38399b.f38380c.f38445a.f38441a.a(new f(this.f38399b));
        }

        public static final /* synthetic */ Collection a(c cVar, kotlin.reflect.jvm.internal.impl.c.e eVar) {
            Map<kotlin.reflect.jvm.internal.impl.c.e, byte[]> map = cVar.f38400c;
            kotlin.reflect.jvm.internal.impl.protobuf.r<a.h> PARSER = a.h.f37037a;
            kotlin.jvm.internal.p.b(PARSER, "PARSER");
            h hVar = cVar.f38399b;
            byte[] bArr = map.get(eVar);
            List f2 = bArr == null ? null : kotlin.g.k.f(kotlin.g.k.a(new a(PARSER, new ByteArrayInputStream(bArr), cVar.f38399b)));
            Collection<a.h> collection = f2 == null ? z.f36608a : f2;
            ArrayList arrayList = new ArrayList(collection.size());
            for (a.h it2 : collection) {
                t tVar = hVar.f38380c.h;
                kotlin.jvm.internal.p.b(it2, "it");
                as a2 = tVar.a(it2);
                if (!hVar.a(a2)) {
                    a2 = null;
                }
                if (a2 != null) {
                    arrayList.add(a2);
                }
            }
            ArrayList arrayList2 = arrayList;
            hVar.a(eVar, arrayList2);
            return kotlin.reflect.jvm.internal.impl.utils.a.a(arrayList2);
        }

        private static Map<kotlin.reflect.jvm.internal.impl.c.e, byte[]> a(Map<kotlin.reflect.jvm.internal.impl.c.e, ? extends Collection<? extends kotlin.reflect.jvm.internal.impl.protobuf.a>> map) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(ai.a(map.size()));
            Iterator<T> it2 = map.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                Object key = entry.getKey();
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                Iterable<kotlin.reflect.jvm.internal.impl.protobuf.a> iterable = (Iterable) entry.getValue();
                ArrayList arrayList = new ArrayList(n.a(iterable, 10));
                for (kotlin.reflect.jvm.internal.impl.protobuf.a aVar : iterable) {
                    aVar.a(byteArrayOutputStream);
                    arrayList.add(v.f38654a);
                }
                linkedHashMap.put(key, byteArrayOutputStream.toByteArray());
            }
            return linkedHashMap;
        }

        public static final /* synthetic */ Collection b(c cVar, kotlin.reflect.jvm.internal.impl.c.e eVar) {
            Map<kotlin.reflect.jvm.internal.impl.c.e, byte[]> map = cVar.f38401d;
            kotlin.reflect.jvm.internal.impl.protobuf.r<a.m> PARSER = a.m.f37058a;
            kotlin.jvm.internal.p.b(PARSER, "PARSER");
            h hVar = cVar.f38399b;
            byte[] bArr = map.get(eVar);
            List f2 = bArr == null ? null : kotlin.g.k.f(kotlin.g.k.a(new a(PARSER, new ByteArrayInputStream(bArr), cVar.f38399b)));
            Collection<a.m> collection = f2 == null ? z.f36608a : f2;
            ArrayList arrayList = new ArrayList(collection.size());
            for (a.m it2 : collection) {
                t tVar = hVar.f38380c.h;
                kotlin.jvm.internal.p.b(it2, "it");
                arrayList.add(tVar.a(it2));
            }
            ArrayList arrayList2 = arrayList;
            hVar.b(eVar, arrayList2);
            return kotlin.reflect.jvm.internal.impl.utils.a.a(arrayList2);
        }

        public static final /* synthetic */ ax c(c cVar, kotlin.reflect.jvm.internal.impl.c.e eVar) {
            a.q a2;
            byte[] bArr = cVar.e.get(eVar);
            if (bArr == null || (a2 = a.q.a(new ByteArrayInputStream(bArr), cVar.f38399b.f38380c.f38445a.p)) == null) {
                return null;
            }
            return cVar.f38399b.f38380c.h.a(a2);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h.a
        public final Collection<as> a(kotlin.reflect.jvm.internal.impl.c.e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
            kotlin.jvm.internal.p.d(name, "name");
            kotlin.jvm.internal.p.d(location, "location");
            return !a().contains(name) ? z.f36608a : this.f.invoke(name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h.a
        public final Set<kotlin.reflect.jvm.internal.impl.c.e> a() {
            return (Set) m.a(this.i, f38398a[0]);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h.a
        public final ax a(kotlin.reflect.jvm.internal.impl.c.e name) {
            kotlin.jvm.internal.p.d(name, "name");
            return this.h.invoke(name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h.a
        public final void a(Collection<kotlin.reflect.jvm.internal.impl.descriptors.k> result, kotlin.reflect.jvm.internal.impl.resolve.e.d kindFilter, Function1<? super kotlin.reflect.jvm.internal.impl.c.e, Boolean> nameFilter, kotlin.reflect.jvm.internal.impl.a.a.b location) {
            int i;
            int i2;
            kotlin.jvm.internal.p.d(result, "result");
            kotlin.jvm.internal.p.d(kindFilter, "kindFilter");
            kotlin.jvm.internal.p.d(nameFilter, "nameFilter");
            kotlin.jvm.internal.p.d(location, "location");
            d.a aVar = kotlin.reflect.jvm.internal.impl.resolve.e.d.f38279a;
            i = kotlin.reflect.jvm.internal.impl.resolve.e.d.t;
            if (kindFilter.a(i)) {
                Set<kotlin.reflect.jvm.internal.impl.c.e> b2 = b();
                ArrayList arrayList = new ArrayList();
                for (kotlin.reflect.jvm.internal.impl.c.e eVar : b2) {
                    if (nameFilter.invoke(eVar).booleanValue()) {
                        arrayList.addAll(b(eVar, location));
                    }
                }
                ArrayList arrayList2 = arrayList;
                f.a INSTANCE = f.a.f38316a;
                kotlin.jvm.internal.p.b(INSTANCE, "INSTANCE");
                n.a((List) arrayList2, (Comparator) INSTANCE);
                result.addAll(arrayList);
            }
            d.a aVar2 = kotlin.reflect.jvm.internal.impl.resolve.e.d.f38279a;
            i2 = kotlin.reflect.jvm.internal.impl.resolve.e.d.s;
            if (kindFilter.a(i2)) {
                Set<kotlin.reflect.jvm.internal.impl.c.e> a2 = a();
                ArrayList arrayList3 = new ArrayList();
                for (kotlin.reflect.jvm.internal.impl.c.e eVar2 : a2) {
                    if (nameFilter.invoke(eVar2).booleanValue()) {
                        arrayList3.addAll(a(eVar2, location));
                    }
                }
                ArrayList arrayList4 = arrayList3;
                f.a INSTANCE2 = f.a.f38316a;
                kotlin.jvm.internal.p.b(INSTANCE2, "INSTANCE");
                n.a((List) arrayList4, (Comparator) INSTANCE2);
                result.addAll(arrayList3);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h.a
        public final Collection<an> b(kotlin.reflect.jvm.internal.impl.c.e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
            kotlin.jvm.internal.p.d(name, "name");
            kotlin.jvm.internal.p.d(location, "location");
            return !b().contains(name) ? z.f36608a : this.g.invoke(name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h.a
        public final Set<kotlin.reflect.jvm.internal.impl.c.e> b() {
            return (Set) m.a(this.j, f38398a[1]);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h.a
        public final Set<kotlin.reflect.jvm.internal.impl.c.e> c() {
            return this.e.keySet();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$d.class */
    static final class d extends r implements Function0<Set<? extends kotlin.reflect.jvm.internal.impl.c.e>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Collection<kotlin.reflect.jvm.internal.impl.c.e>> f38412a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        d(Function0<? extends Collection<kotlin.reflect.jvm.internal.impl.c.e>> function0) {
            super(0);
            this.f38412a = function0;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Set<? extends kotlin.reflect.jvm.internal.impl.c.e> invoke() {
            return n.j(this.f38412a.invoke());
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$e.class */
    static final class e extends r implements Function0<Set<? extends kotlin.reflect.jvm.internal.impl.c.e>> {
        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Set<? extends kotlin.reflect.jvm.internal.impl.c.e> invoke() {
            Set<kotlin.reflect.jvm.internal.impl.c.e> c2 = h.this.c();
            if (c2 == null) {
                return null;
            }
            return ap.a(ap.a((Set) h.this.d(), (Iterable) h.this.f38379a.c()), (Iterable) c2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public h(k c2, List<a.h> functionList, List<a.m> propertyList, List<a.q> typeAliasList, Function0<? extends Collection<kotlin.reflect.jvm.internal.impl.c.e>> classNames) {
        kotlin.jvm.internal.p.d(c2, "c");
        kotlin.jvm.internal.p.d(functionList, "functionList");
        kotlin.jvm.internal.p.d(propertyList, "propertyList");
        kotlin.jvm.internal.p.d(typeAliasList, "typeAliasList");
        kotlin.jvm.internal.p.d(classNames, "classNames");
        this.f38380c = c2;
        this.f38379a = c2.f38445a.f38443c.getPreserveDeclarationsOrdering() ? new b(this, functionList, propertyList, typeAliasList) : new c(this, functionList, propertyList, typeAliasList);
        this.f38381d = c2.f38445a.f38441a.a(new d(classNames));
        this.e = c2.f38445a.f38441a.b(new e());
    }

    private final kotlin.reflect.jvm.internal.impl.descriptors.d c(kotlin.reflect.jvm.internal.impl.c.e eVar) {
        return this.f38380c.f38445a.a(a(eVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Collection<kotlin.reflect.jvm.internal.impl.descriptors.k> a(kotlin.reflect.jvm.internal.impl.resolve.e.d kindFilter, Function1<? super kotlin.reflect.jvm.internal.impl.c.e, Boolean> nameFilter, kotlin.reflect.jvm.internal.impl.a.a.b location) {
        int i;
        int i2;
        int i3;
        kotlin.jvm.internal.p.d(kindFilter, "kindFilter");
        kotlin.jvm.internal.p.d(nameFilter, "nameFilter");
        kotlin.jvm.internal.p.d(location, "location");
        ArrayList arrayList = new ArrayList(0);
        d.a aVar = kotlin.reflect.jvm.internal.impl.resolve.e.d.f38279a;
        i = kotlin.reflect.jvm.internal.impl.resolve.e.d.p;
        if (kindFilter.a(i)) {
            a(arrayList, nameFilter);
        }
        ArrayList arrayList2 = arrayList;
        this.f38379a.a(arrayList2, kindFilter, nameFilter, location);
        d.a aVar2 = kotlin.reflect.jvm.internal.impl.resolve.e.d.f38279a;
        i2 = kotlin.reflect.jvm.internal.impl.resolve.e.d.v;
        if (kindFilter.a(i2)) {
            for (kotlin.reflect.jvm.internal.impl.c.e eVar : d()) {
                if (nameFilter.invoke(eVar).booleanValue()) {
                    kotlin.reflect.jvm.internal.impl.utils.a.a(arrayList2, c(eVar));
                }
            }
        }
        d.a aVar3 = kotlin.reflect.jvm.internal.impl.resolve.e.d.f38279a;
        i3 = kotlin.reflect.jvm.internal.impl.resolve.e.d.q;
        if (kindFilter.a(i3)) {
            for (kotlin.reflect.jvm.internal.impl.c.e eVar2 : this.f38379a.c()) {
                if (nameFilter.invoke(eVar2).booleanValue()) {
                    kotlin.reflect.jvm.internal.impl.utils.a.a(arrayList2, this.f38379a.a(eVar2));
                }
            }
        }
        return kotlin.reflect.jvm.internal.impl.utils.a.a(arrayList);
    }

    protected abstract Set<kotlin.reflect.jvm.internal.impl.c.e> a();

    protected abstract kotlin.reflect.jvm.internal.impl.c.a a(kotlin.reflect.jvm.internal.impl.c.e eVar);

    protected abstract void a(Collection<kotlin.reflect.jvm.internal.impl.descriptors.k> collection, Function1<? super kotlin.reflect.jvm.internal.impl.c.e, Boolean> function1);

    protected void a(kotlin.reflect.jvm.internal.impl.c.e name, List<as> functions) {
        kotlin.jvm.internal.p.d(name, "name");
        kotlin.jvm.internal.p.d(functions, "functions");
    }

    protected boolean a(as function) {
        kotlin.jvm.internal.p.d(function, "function");
        return true;
    }

    protected abstract Set<kotlin.reflect.jvm.internal.impl.c.e> b();

    protected void b(kotlin.reflect.jvm.internal.impl.c.e name, List<an> descriptors) {
        kotlin.jvm.internal.p.d(name, "name");
        kotlin.jvm.internal.p.d(descriptors, "descriptors");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean b(kotlin.reflect.jvm.internal.impl.c.e name) {
        kotlin.jvm.internal.p.d(name, "name");
        return d().contains(name);
    }

    protected abstract Set<kotlin.reflect.jvm.internal.impl.c.e> c();

    public final Set<kotlin.reflect.jvm.internal.impl.c.e> d() {
        return (Set) m.a(this.f38381d, f38378b[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h
    public Set<kotlin.reflect.jvm.internal.impl.c.e> getClassifierNames() {
        return (Set) m.a(this.e, f38378b[1]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.k
    public kotlin.reflect.jvm.internal.impl.descriptors.g getContributedClassifier(kotlin.reflect.jvm.internal.impl.c.e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
        kotlin.jvm.internal.p.d(name, "name");
        kotlin.jvm.internal.p.d(location, "location");
        if (b(name)) {
            return c(name);
        }
        if (this.f38379a.c().contains(name)) {
            return this.f38379a.a(name);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h, kotlin.reflect.jvm.internal.impl.resolve.e.k
    public Collection<as> getContributedFunctions(kotlin.reflect.jvm.internal.impl.c.e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
        kotlin.jvm.internal.p.d(name, "name");
        kotlin.jvm.internal.p.d(location, "location");
        return this.f38379a.a(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h
    public Collection<an> getContributedVariables(kotlin.reflect.jvm.internal.impl.c.e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
        kotlin.jvm.internal.p.d(name, "name");
        kotlin.jvm.internal.p.d(location, "location");
        return this.f38379a.b(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h
    public Set<kotlin.reflect.jvm.internal.impl.c.e> getFunctionNames() {
        return this.f38379a.a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h
    public Set<kotlin.reflect.jvm.internal.impl.c.e> getVariableNames() {
        return this.f38379a.b();
    }
}
