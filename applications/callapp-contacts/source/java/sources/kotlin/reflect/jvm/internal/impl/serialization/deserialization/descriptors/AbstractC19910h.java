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
import kotlin.C20128v;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18255ap;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.p530f.C18363d;
import kotlin.p531g.C18381k;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19033ax;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18695b;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19294g;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19295h;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19296i;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19297j;
import kotlin.reflect.jvm.internal.impl.p554f.C19301m;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19666a;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19708r;
import kotlin.reflect.jvm.internal.impl.resolve.C19852f;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.C19825d;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19949k;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19963t;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19970u;
import kotlin.reflect.jvm.internal.impl.utils.C19999a;
/* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h.class */
public abstract class AbstractC19910h extends AbstractC19839i {

    /* renamed from: b */
    static final /* synthetic */ KProperty<Object>[] f66152b = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(AbstractC19910h.class), "classNames", "getClassNames$deserialization()Ljava/util/Set;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(AbstractC19910h.class), "classifierNamesLazy", "getClassifierNamesLazy()Ljava/util/Set;"))};

    /* renamed from: a */
    private final AbstractC19911a f66153a;

    /* renamed from: c */
    final C19949k f66154c;

    /* renamed from: d */
    private final AbstractC19296i f66155d;

    /* renamed from: e */
    private final AbstractC19297j f66156e;

    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$a.class */
    public interface AbstractC19911a {
        /* renamed from: a */
        Collection<AbstractC19025as> mo1302a(C18966e c18966e, AbstractC18695b abstractC18695b);

        /* renamed from: a */
        Set<C18966e> mo1306a();

        /* renamed from: a */
        AbstractC19033ax mo1303a(C18966e c18966e);

        /* renamed from: a */
        void mo1305a(Collection<AbstractC19193k> collection, C19825d c19825d, Function1<? super C18966e, Boolean> function1, AbstractC18695b abstractC18695b);

        /* renamed from: b */
        Collection<AbstractC19017an> mo1298b(C18966e c18966e, AbstractC18695b abstractC18695b);

        /* renamed from: b */
        Set<C18966e> mo1299b();

        /* renamed from: c */
        Set<C18966e> mo1295c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b.class */
    public final class C19912b implements AbstractC19911a {

        /* renamed from: a */
        static final /* synthetic */ KProperty<Object>[] f66157a = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C19912b.class), "declaredFunctions", "getDeclaredFunctions()Ljava/util/List;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C19912b.class), "declaredProperties", "getDeclaredProperties()Ljava/util/List;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C19912b.class), "allTypeAliases", "getAllTypeAliases()Ljava/util/List;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C19912b.class), "allFunctions", "getAllFunctions()Ljava/util/List;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C19912b.class), "allProperties", "getAllProperties()Ljava/util/List;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C19912b.class), "typeAliasesByName", "getTypeAliasesByName()Ljava/util/Map;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C19912b.class), "functionsByName", "getFunctionsByName()Ljava/util/Map;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C19912b.class), "propertiesByName", "getPropertiesByName()Ljava/util/Map;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C19912b.class), "functionNames", "getFunctionNames()Ljava/util/Set;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C19912b.class), "variableNames", "getVariableNames()Ljava/util/Set;"))};

        /* renamed from: b */
        final /* synthetic */ AbstractC19910h f66158b;

        /* renamed from: c */
        private final List<C18702a.C18741h> f66159c;

        /* renamed from: d */
        private final List<C18702a.C18754m> f66160d;

        /* renamed from: e */
        private final List<C18702a.C18776q> f66161e;

        /* renamed from: f */
        private final AbstractC19296i f66162f;

        /* renamed from: g */
        private final AbstractC19296i f66163g;

        /* renamed from: h */
        private final AbstractC19296i f66164h;

        /* renamed from: i */
        private final AbstractC19296i f66165i;

        /* renamed from: j */
        private final AbstractC19296i f66166j;

        /* renamed from: k */
        private final AbstractC19296i f66167k;

        /* renamed from: l */
        private final AbstractC19296i f66168l;

        /* renamed from: m */
        private final AbstractC19296i f66169m;

        /* renamed from: n */
        private final AbstractC19296i f66170n;

        /* renamed from: o */
        private final AbstractC19296i f66171o;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h$b$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b$a.class */
        public static final class C19913a extends AbstractC18526r implements Function0<List<? extends AbstractC19025as>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C19913a() {
                super(0);
                C19912b.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends AbstractC19025as> invoke() {
                return C18282n.m4135b((Collection) C19912b.this.m1319d(), (Iterable) C19912b.m1316e(C19912b.this));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h$b$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b$b.class */
        public static final class C19914b extends AbstractC18526r implements Function0<List<? extends AbstractC19017an>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C19914b() {
                super(0);
                C19912b.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends AbstractC19017an> invoke() {
                return C18282n.m4135b((Collection) C19912b.this.m1317e(), (Iterable) C19912b.m1312g(C19912b.this));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h$b$c */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b$c.class */
        public static final class C19915c extends AbstractC18526r implements Function0<List<? extends AbstractC19033ax>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C19915c() {
                super(0);
                C19912b.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends AbstractC19033ax> invoke() {
                return C19912b.m1320c(C19912b.this);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h$b$d */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b$d.class */
        public static final class C19916d extends AbstractC18526r implements Function0<List<? extends AbstractC19025as>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C19916d() {
                super(0);
                C19912b.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends AbstractC19025as> invoke() {
                return C19912b.m1324a(C19912b.this);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h$b$e */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b$e.class */
        public static final class C19917e extends AbstractC18526r implements Function0<List<? extends AbstractC19017an>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C19917e() {
                super(0);
                C19912b.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends AbstractC19017an> invoke() {
                return C19912b.m1322b(C19912b.this);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h$b$f */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b$f.class */
        public static final class C19918f extends AbstractC18526r implements Function0<Set<? extends C18966e>> {

            /* renamed from: b */
            final /* synthetic */ AbstractC19910h f66178b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C19918f(AbstractC19910h abstractC19910h) {
                super(0);
                C19912b.this = r4;
                this.f66178b = abstractC19910h;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Set<? extends C18966e> invoke() {
                C19912b c19912b = C19912b.this;
                List<AbstractC19705p> list = c19912b.f66159c;
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                AbstractC19910h abstractC19910h = c19912b.f66158b;
                for (AbstractC19705p abstractC19705p : list) {
                    linkedHashSet.add(C19970u.m1228b(abstractC19910h.f66154c.f66270b, ((C18702a.C18741h) abstractC19705p).f63974d));
                }
                return C18255ap.m4238a((Set) linkedHashSet, (Iterable) this.f66178b.mo1293a());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h$b$g */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b$g.class */
        public static final class C19919g extends AbstractC18526r implements Function0<Map<C18966e, ? extends List<? extends AbstractC19025as>>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C19919g() {
                super(0);
                C19912b.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Map<C18966e, ? extends List<? extends AbstractC19025as>> invoke() {
                List m1315f = C19912b.this.m1315f();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Object obj : m1315f) {
                    C18966e name = ((AbstractC19025as) obj).getName();
                    C18524p.m3843b(name, "it.name");
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

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h$b$h */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b$h.class */
        public static final class C19920h extends AbstractC18526r implements Function0<Map<C18966e, ? extends List<? extends AbstractC19017an>>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C19920h() {
                super(0);
                C19912b.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Map<C18966e, ? extends List<? extends AbstractC19017an>> invoke() {
                List m1313g = C19912b.this.m1313g();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Object obj : m1313g) {
                    C18966e name = ((AbstractC19017an) obj).getName();
                    C18524p.m3843b(name, "it.name");
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

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h$b$i */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b$i.class */
        public static final class C19921i extends AbstractC18526r implements Function0<Map<C18966e, ? extends AbstractC19033ax>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C19921i() {
                super(0);
                C19912b.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Map<C18966e, ? extends AbstractC19033ax> invoke() {
                List m1311h = C19912b.m1311h(C19912b.this);
                LinkedHashMap linkedHashMap = new LinkedHashMap(C18363d.m4051c(C18247ai.m4260a(C18282n.m4163a((Iterable) m1311h, 10)), 16));
                for (Object obj : m1311h) {
                    C18966e name = ((AbstractC19033ax) obj).getName();
                    C18524p.m3843b(name, "it.name");
                    linkedHashMap.put(name, obj);
                }
                return linkedHashMap;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h$b$j */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b$j.class */
        public static final class C19922j extends AbstractC18526r implements Function0<Set<? extends C18966e>> {

            /* renamed from: b */
            final /* synthetic */ AbstractC19910h f66183b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C19922j(AbstractC19910h abstractC19910h) {
                super(0);
                C19912b.this = r4;
                this.f66183b = abstractC19910h;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Set<? extends C18966e> invoke() {
                C19912b c19912b = C19912b.this;
                List<AbstractC19705p> list = c19912b.f66160d;
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                AbstractC19910h abstractC19910h = c19912b.f66158b;
                for (AbstractC19705p abstractC19705p : list) {
                    linkedHashSet.add(C19970u.m1228b(abstractC19910h.f66154c.f66270b, ((C18702a.C18754m) abstractC19705p).f64037d));
                }
                return C18255ap.m4238a((Set) linkedHashSet, (Iterable) this.f66183b.mo1290b());
            }
        }

        public C19912b(AbstractC19910h this$0, List<C18702a.C18741h> functionList, List<C18702a.C18754m> propertyList, List<C18702a.C18776q> typeAliasList) {
            C18524p.m3840d(this$0, "this$0");
            C18524p.m3840d(functionList, "functionList");
            C18524p.m3840d(propertyList, "propertyList");
            C18524p.m3840d(typeAliasList, "typeAliasList");
            this.f66158b = this$0;
            this.f66159c = functionList;
            this.f66160d = propertyList;
            this.f66161e = !this$0.f66154c.f66269a.f66251c.getTypeAliasesAllowed() ? C18297z.f63400a : typeAliasList;
            this.f66162f = this$0.f66154c.f66269a.f66249a.mo2313a(new C19916d());
            this.f66163g = this$0.f66154c.f66269a.f66249a.mo2313a(new C19917e());
            this.f66164h = this$0.f66154c.f66269a.f66249a.mo2313a(new C19915c());
            this.f66165i = this$0.f66154c.f66269a.f66249a.mo2313a(new C19913a());
            this.f66166j = this$0.f66154c.f66269a.f66249a.mo2313a(new C19914b());
            this.f66167k = this$0.f66154c.f66269a.f66249a.mo2313a(new C19921i());
            this.f66168l = this$0.f66154c.f66269a.f66249a.mo2313a(new C19919g());
            this.f66169m = this$0.f66154c.f66269a.f66249a.mo2313a(new C19920h());
            this.f66170n = this$0.f66154c.f66269a.f66249a.mo2313a(new C19918f(this$0));
            this.f66171o = this$0.f66154c.f66269a.f66249a.mo2313a(new C19922j(this$0));
        }

        /* renamed from: a */
        public static final /* synthetic */ List m1324a(C19912b c19912b) {
            List<C18702a.C18741h> list = c19912b.f66159c;
            AbstractC19910h abstractC19910h = c19912b.f66158b;
            List<C18702a.C18741h> list2 = list;
            ArrayList arrayList = new ArrayList();
            for (AbstractC19705p abstractC19705p : list2) {
                AbstractC19025as m1244a = abstractC19910h.f66154c.f66276h.m1244a((C18702a.C18741h) abstractC19705p);
                if (!abstractC19910h.mo1331a(m1244a)) {
                    m1244a = null;
                }
                AbstractC19025as abstractC19025as = m1244a;
                if (abstractC19025as != null) {
                    arrayList.add(abstractC19025as);
                }
            }
            return arrayList;
        }

        /* renamed from: b */
        private final List<AbstractC19025as> m1323b(C18966e c18966e) {
            List<AbstractC19025as> m1319d = m1319d();
            AbstractC19910h abstractC19910h = this.f66158b;
            List<AbstractC19025as> list = m1319d;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (C18524p.m3850a(((AbstractC19193k) obj).getName(), c18966e)) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            abstractC19910h.mo1332a(c18966e, arrayList2);
            return arrayList2.subList(size, arrayList2.size());
        }

        /* renamed from: b */
        public static final /* synthetic */ List m1322b(C19912b c19912b) {
            List<C18702a.C18754m> list = c19912b.f66160d;
            AbstractC19910h abstractC19910h = c19912b.f66158b;
            ArrayList arrayList = new ArrayList();
            for (AbstractC19705p abstractC19705p : list) {
                arrayList.add(abstractC19910h.f66154c.f66276h.m1243a((C18702a.C18754m) abstractC19705p));
            }
            return arrayList;
        }

        /* renamed from: c */
        private final List<AbstractC19017an> m1321c(C18966e c18966e) {
            List<AbstractC19017an> m1317e = m1317e();
            AbstractC19910h abstractC19910h = this.f66158b;
            List<AbstractC19017an> list = m1317e;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (C18524p.m3850a(((AbstractC19193k) obj).getName(), c18966e)) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            abstractC19910h.mo1328b(c18966e, arrayList2);
            return arrayList2.subList(size, arrayList2.size());
        }

        /* renamed from: c */
        public static final /* synthetic */ List m1320c(C19912b c19912b) {
            List<C18702a.C18776q> list = c19912b.f66161e;
            AbstractC19910h abstractC19910h = c19912b.f66158b;
            ArrayList arrayList = new ArrayList();
            for (AbstractC19705p abstractC19705p : list) {
                arrayList.add(abstractC19910h.f66154c.f66276h.m1241a((C18702a.C18776q) abstractC19705p));
            }
            return arrayList;
        }

        /* renamed from: d */
        public final List<AbstractC19025as> m1319d() {
            return (List) C19301m.m2316a(this.f66162f, f66157a[0]);
        }

        /* renamed from: e */
        public final List<AbstractC19017an> m1317e() {
            return (List) C19301m.m2316a(this.f66163g, f66157a[1]);
        }

        /* renamed from: e */
        public static final /* synthetic */ List m1316e(C19912b c19912b) {
            Set<C18966e> mo1293a = c19912b.f66158b.mo1293a();
            ArrayList arrayList = new ArrayList();
            for (C18966e c18966e : mo1293a) {
                C18282n.m4158a((Collection) arrayList, (Iterable) c19912b.m1323b(c18966e));
            }
            return arrayList;
        }

        /* renamed from: f */
        public final List<AbstractC19025as> m1315f() {
            return (List) C19301m.m2316a(this.f66165i, f66157a[3]);
        }

        /* renamed from: g */
        public final List<AbstractC19017an> m1313g() {
            return (List) C19301m.m2316a(this.f66166j, f66157a[4]);
        }

        /* renamed from: g */
        public static final /* synthetic */ List m1312g(C19912b c19912b) {
            Set<C18966e> mo1290b = c19912b.f66158b.mo1290b();
            ArrayList arrayList = new ArrayList();
            for (C18966e c18966e : mo1290b) {
                C18282n.m4158a((Collection) arrayList, (Iterable) c19912b.m1321c(c18966e));
            }
            return arrayList;
        }

        /* renamed from: h */
        public static final /* synthetic */ List m1311h(C19912b c19912b) {
            return (List) C19301m.m2316a(c19912b.f66164h, f66157a[2]);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h.AbstractC19911a
        /* renamed from: a */
        public final Collection<AbstractC19025as> mo1302a(C18966e name, AbstractC18695b location) {
            C18524p.m3840d(name, "name");
            C18524p.m3840d(location, "location");
            if (!mo1306a().contains(name)) {
                return C18297z.f63400a;
            }
            Collection<AbstractC19025as> collection = (Collection) ((Map) C19301m.m2316a(this.f66168l, f66157a[6])).get(name);
            C18297z c18297z = collection;
            if (collection == null) {
                c18297z = C18297z.f63400a;
            }
            return c18297z;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h.AbstractC19911a
        /* renamed from: a */
        public final Set<C18966e> mo1306a() {
            return (Set) C19301m.m2316a(this.f66170n, f66157a[8]);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h.AbstractC19911a
        /* renamed from: a */
        public final AbstractC19033ax mo1303a(C18966e name) {
            C18524p.m3840d(name, "name");
            return (AbstractC19033ax) ((Map) C19301m.m2316a(this.f66167k, f66157a[5])).get(name);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h.AbstractC19911a
        /* renamed from: a */
        public final void mo1305a(Collection<AbstractC19193k> result, C19825d kindFilter, Function1<? super C18966e, Boolean> nameFilter, AbstractC18695b location) {
            int i;
            int i2;
            C18524p.m3840d(result, "result");
            C18524p.m3840d(kindFilter, "kindFilter");
            C18524p.m3840d(nameFilter, "nameFilter");
            C18524p.m3840d(location, "location");
            C19825d.C19826a c19826a = C19825d.f65994a;
            i = C19825d.f66011t;
            if (kindFilter.m1428a(i)) {
                for (Object obj : m1313g()) {
                    C18966e name = ((AbstractC19017an) obj).getName();
                    C18524p.m3843b(name, "it.name");
                    if (nameFilter.invoke(name).booleanValue()) {
                        result.add(obj);
                    }
                }
            }
            C19825d.C19826a c19826a2 = C19825d.f65994a;
            i2 = C19825d.f66010s;
            if (kindFilter.m1428a(i2)) {
                for (Object obj2 : m1315f()) {
                    C18966e name2 = ((AbstractC19025as) obj2).getName();
                    C18524p.m3843b(name2, "it.name");
                    if (nameFilter.invoke(name2).booleanValue()) {
                        result.add(obj2);
                    }
                }
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h.AbstractC19911a
        /* renamed from: b */
        public final Collection<AbstractC19017an> mo1298b(C18966e name, AbstractC18695b location) {
            C18524p.m3840d(name, "name");
            C18524p.m3840d(location, "location");
            if (!mo1299b().contains(name)) {
                return C18297z.f63400a;
            }
            Collection<AbstractC19017an> collection = (Collection) ((Map) C19301m.m2316a(this.f66169m, f66157a[7])).get(name);
            C18297z c18297z = collection;
            if (collection == null) {
                c18297z = C18297z.f63400a;
            }
            return c18297z;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h.AbstractC19911a
        /* renamed from: b */
        public final Set<C18966e> mo1299b() {
            return (Set) C19301m.m2316a(this.f66171o, f66157a[9]);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h.AbstractC19911a
        /* renamed from: c */
        public final Set<C18966e> mo1295c() {
            List<C18702a.C18776q> list = this.f66161e;
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            AbstractC19910h abstractC19910h = this.f66158b;
            for (AbstractC19705p abstractC19705p : list) {
                linkedHashSet.add(C19970u.m1228b(abstractC19910h.f66154c.f66270b, ((C18702a.C18776q) abstractC19705p).f64145c));
            }
            return linkedHashSet;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c.class */
    public final class C19923c implements AbstractC19911a {

        /* renamed from: a */
        static final /* synthetic */ KProperty<Object>[] f66184a = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C19923c.class), "functionNames", "getFunctionNames()Ljava/util/Set;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C19923c.class), "variableNames", "getVariableNames()Ljava/util/Set;"))};

        /* renamed from: b */
        final /* synthetic */ AbstractC19910h f66185b;

        /* renamed from: c */
        private final Map<C18966e, byte[]> f66186c;

        /* renamed from: d */
        private final Map<C18966e, byte[]> f66187d;

        /* renamed from: e */
        private final Map<C18966e, byte[]> f66188e;

        /* renamed from: f */
        private final AbstractC19294g<C18966e, Collection<AbstractC19025as>> f66189f;

        /* renamed from: g */
        private final AbstractC19294g<C18966e, Collection<AbstractC19017an>> f66190g;

        /* renamed from: h */
        private final AbstractC19295h<C18966e, AbstractC19033ax> f66191h;

        /* renamed from: i */
        private final AbstractC19296i f66192i;

        /* renamed from: j */
        private final AbstractC19296i f66193j;

        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h$c$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$a.class */
        public static final class C19924a extends AbstractC18526r implements Function0<M> {

            /* renamed from: a */
            final /* synthetic */ AbstractC19708r<M> f66194a;

            /* renamed from: b */
            final /* synthetic */ ByteArrayInputStream f66195b;

            /* renamed from: c */
            final /* synthetic */ AbstractC19910h f66196c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C19924a(AbstractC19708r<M> abstractC19708r, ByteArrayInputStream byteArrayInputStream, AbstractC19910h abstractC19910h) {
                super(0);
                this.f66194a = abstractC19708r;
                this.f66195b = byteArrayInputStream;
                this.f66196c = abstractC19910h;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Object invoke() {
                return (AbstractC19705p) this.f66194a.mo1653a(this.f66195b, this.f66196c.f66154c.f66269a.f66264p);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h$c$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$b.class */
        public static final class C19925b extends AbstractC18526r implements Function0<Set<? extends C18966e>> {

            /* renamed from: b */
            final /* synthetic */ AbstractC19910h f66198b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C19925b(AbstractC19910h abstractC19910h) {
                super(0);
                C19923c.this = r4;
                this.f66198b = abstractC19910h;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Set<? extends C18966e> invoke() {
                return C18255ap.m4238a(C19923c.this.f66186c.keySet(), (Iterable) this.f66198b.mo1293a());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h$c$c */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$c.class */
        public static final class C19926c extends AbstractC18526r implements Function1<C18966e, Collection<? extends AbstractC19025as>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C19926c() {
                super(1);
                C19923c.this = r4;
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ Collection<? extends AbstractC19025as> invoke(C18966e c18966e) {
                C18966e it2 = c18966e;
                C18524p.m3840d(it2, "it");
                return C19923c.m1300a(C19923c.this, it2);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h$c$d */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$d.class */
        public static final class C19927d extends AbstractC18526r implements Function1<C18966e, Collection<? extends AbstractC19017an>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C19927d() {
                super(1);
                C19923c.this = r4;
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ Collection<? extends AbstractC19017an> invoke(C18966e c18966e) {
                C18966e it2 = c18966e;
                C18524p.m3840d(it2, "it");
                return C19923c.m1296b(C19923c.this, it2);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h$c$e */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$e.class */
        public static final class C19928e extends AbstractC18526r implements Function1<C18966e, AbstractC19033ax> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C19928e() {
                super(1);
                C19923c.this = r4;
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* synthetic */ AbstractC19033ax invoke(C18966e c18966e) {
                C18966e it2 = c18966e;
                C18524p.m3840d(it2, "it");
                return C19923c.m1294c(C19923c.this, it2);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h$c$f */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c$f.class */
        public static final class C19929f extends AbstractC18526r implements Function0<Set<? extends C18966e>> {

            /* renamed from: b */
            final /* synthetic */ AbstractC19910h f66203b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C19929f(AbstractC19910h abstractC19910h) {
                super(0);
                C19923c.this = r4;
                this.f66203b = abstractC19910h;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ Set<? extends C18966e> invoke() {
                return C18255ap.m4238a(C19923c.this.f66187d.keySet(), (Iterable) this.f66203b.mo1290b());
            }
        }

        public C19923c(AbstractC19910h this$0, List<C18702a.C18741h> functionList, List<C18702a.C18754m> propertyList, List<C18702a.C18776q> typeAliasList) {
            Map<C18966e, byte[]> map;
            C18524p.m3840d(this$0, "this$0");
            C18524p.m3840d(functionList, "functionList");
            C18524p.m3840d(propertyList, "propertyList");
            C18524p.m3840d(typeAliasList, "typeAliasList");
            this.f66185b = this$0;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : functionList) {
                C18966e m1228b = C19970u.m1228b(this$0.f66154c.f66270b, ((C18702a.C18741h) ((AbstractC19705p) obj)).f63974d);
                Object obj2 = linkedHashMap.get(m1228b);
                ArrayList arrayList = obj2;
                if (obj2 == null) {
                    arrayList = new ArrayList();
                    linkedHashMap.put(m1228b, arrayList);
                }
                ((List) arrayList).add(obj);
            }
            this.f66186c = m1304a(linkedHashMap);
            AbstractC19910h abstractC19910h = this.f66185b;
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Object obj3 : propertyList) {
                C18966e m1228b2 = C19970u.m1228b(abstractC19910h.f66154c.f66270b, ((C18702a.C18754m) ((AbstractC19705p) obj3)).f64037d);
                Object obj4 = linkedHashMap2.get(m1228b2);
                ArrayList arrayList2 = obj4;
                if (obj4 == null) {
                    arrayList2 = new ArrayList();
                    linkedHashMap2.put(m1228b2, arrayList2);
                }
                ((List) arrayList2).add(obj3);
            }
            this.f66187d = m1304a(linkedHashMap2);
            if (this.f66185b.f66154c.f66269a.f66251c.getTypeAliasesAllowed()) {
                AbstractC19910h abstractC19910h2 = this.f66185b;
                LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                for (Object obj5 : typeAliasList) {
                    C18966e m1228b3 = C19970u.m1228b(abstractC19910h2.f66154c.f66270b, ((C18702a.C18776q) ((AbstractC19705p) obj5)).f64145c);
                    Object obj6 = linkedHashMap3.get(m1228b3);
                    ArrayList arrayList3 = obj6;
                    if (obj6 == null) {
                        arrayList3 = new ArrayList();
                        linkedHashMap3.put(m1228b3, arrayList3);
                    }
                    ((List) arrayList3).add(obj5);
                }
                map = m1304a(linkedHashMap3);
            } else {
                map = C18247ai.m4257a();
            }
            this.f66188e = map;
            this.f66189f = this.f66185b.f66154c.f66269a.f66249a.mo2310a(new C19926c());
            this.f66190g = this.f66185b.f66154c.f66269a.f66249a.mo2310a(new C19927d());
            this.f66191h = this.f66185b.f66154c.f66269a.f66249a.mo2307b(new C19928e());
            this.f66192i = this.f66185b.f66154c.f66269a.f66249a.mo2313a(new C19925b(this.f66185b));
            this.f66193j = this.f66185b.f66154c.f66269a.f66249a.mo2313a(new C19929f(this.f66185b));
        }

        /* renamed from: a */
        public static final /* synthetic */ Collection m1300a(C19923c c19923c, C18966e c18966e) {
            Map<C18966e, byte[]> map = c19923c.f66186c;
            AbstractC19708r<C18702a.C18741h> PARSER = C18702a.C18741h.f63970a;
            C18524p.m3843b(PARSER, "PARSER");
            AbstractC19910h abstractC19910h = c19923c.f66185b;
            byte[] bArr = map.get(c18966e);
            List f = bArr == null ? null : C18381k.m4012f(C18381k.m4027a(new C19924a(PARSER, new ByteArrayInputStream(bArr), c19923c.f66185b)));
            Collection<C18702a.C18741h> collection = f == null ? C18297z.f63400a : f;
            ArrayList arrayList = new ArrayList(collection.size());
            for (C18702a.C18741h it2 : collection) {
                C19963t c19963t = abstractC19910h.f66154c.f66276h;
                C18524p.m3843b(it2, "it");
                AbstractC19025as m1244a = c19963t.m1244a(it2);
                if (!abstractC19910h.mo1331a(m1244a)) {
                    m1244a = null;
                }
                if (m1244a != null) {
                    arrayList.add(m1244a);
                }
            }
            ArrayList arrayList2 = arrayList;
            abstractC19910h.mo1332a(c18966e, arrayList2);
            return C19999a.m1209a(arrayList2);
        }

        /* renamed from: a */
        private static Map<C18966e, byte[]> m1304a(Map<C18966e, ? extends Collection<? extends AbstractC19666a>> map) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(C18247ai.m4260a(map.size()));
            Iterator<T> it2 = map.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                Object key = entry.getKey();
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                Iterable<AbstractC19666a> iterable = (Iterable) entry.getValue();
                ArrayList arrayList = new ArrayList(C18282n.m4163a(iterable, 10));
                for (AbstractC19666a abstractC19666a : iterable) {
                    abstractC19666a.m1780a(byteArrayOutputStream);
                    arrayList.add(C20128v.f66529a);
                }
                linkedHashMap.put(key, byteArrayOutputStream.toByteArray());
            }
            return linkedHashMap;
        }

        /* renamed from: b */
        public static final /* synthetic */ Collection m1296b(C19923c c19923c, C18966e c18966e) {
            Map<C18966e, byte[]> map = c19923c.f66187d;
            AbstractC19708r<C18702a.C18754m> PARSER = C18702a.C18754m.f64033a;
            C18524p.m3843b(PARSER, "PARSER");
            AbstractC19910h abstractC19910h = c19923c.f66185b;
            byte[] bArr = map.get(c18966e);
            List f = bArr == null ? null : C18381k.m4012f(C18381k.m4027a(new C19924a(PARSER, new ByteArrayInputStream(bArr), c19923c.f66185b)));
            Collection<C18702a.C18754m> collection = f == null ? C18297z.f63400a : f;
            ArrayList arrayList = new ArrayList(collection.size());
            for (C18702a.C18754m it2 : collection) {
                C19963t c19963t = abstractC19910h.f66154c.f66276h;
                C18524p.m3843b(it2, "it");
                arrayList.add(c19963t.m1243a(it2));
            }
            ArrayList arrayList2 = arrayList;
            abstractC19910h.mo1328b(c18966e, arrayList2);
            return C19999a.m1209a(arrayList2);
        }

        /* renamed from: c */
        public static final /* synthetic */ AbstractC19033ax m1294c(C19923c c19923c, C18966e c18966e) {
            C18702a.C18776q m3216a;
            byte[] bArr = c19923c.f66188e.get(c18966e);
            if (bArr == null || (m3216a = C18702a.C18776q.m3216a(new ByteArrayInputStream(bArr), c19923c.f66185b.f66154c.f66269a.f66264p)) == null) {
                return null;
            }
            return c19923c.f66185b.f66154c.f66276h.m1241a(m3216a);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h.AbstractC19911a
        /* renamed from: a */
        public final Collection<AbstractC19025as> mo1302a(C18966e name, AbstractC18695b location) {
            C18524p.m3840d(name, "name");
            C18524p.m3840d(location, "location");
            return !mo1306a().contains(name) ? C18297z.f63400a : this.f66189f.invoke(name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h.AbstractC19911a
        /* renamed from: a */
        public final Set<C18966e> mo1306a() {
            return (Set) C19301m.m2316a(this.f66192i, f66184a[0]);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h.AbstractC19911a
        /* renamed from: a */
        public final AbstractC19033ax mo1303a(C18966e name) {
            C18524p.m3840d(name, "name");
            return this.f66191h.invoke(name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h.AbstractC19911a
        /* renamed from: a */
        public final void mo1305a(Collection<AbstractC19193k> result, C19825d kindFilter, Function1<? super C18966e, Boolean> nameFilter, AbstractC18695b location) {
            int i;
            int i2;
            C18524p.m3840d(result, "result");
            C18524p.m3840d(kindFilter, "kindFilter");
            C18524p.m3840d(nameFilter, "nameFilter");
            C18524p.m3840d(location, "location");
            C19825d.C19826a c19826a = C19825d.f65994a;
            i = C19825d.f66011t;
            if (kindFilter.m1428a(i)) {
                Set<C18966e> mo1299b = mo1299b();
                ArrayList arrayList = new ArrayList();
                for (C18966e c18966e : mo1299b) {
                    if (nameFilter.invoke(c18966e).booleanValue()) {
                        arrayList.addAll(mo1298b(c18966e, location));
                    }
                }
                ArrayList arrayList2 = arrayList;
                C19852f.C19854a INSTANCE = C19852f.C19854a.f66054a;
                C18524p.m3843b(INSTANCE, "INSTANCE");
                C18282n.m4161a((List) arrayList2, (Comparator) INSTANCE);
                result.addAll(arrayList);
            }
            C19825d.C19826a c19826a2 = C19825d.f65994a;
            i2 = C19825d.f66010s;
            if (kindFilter.m1428a(i2)) {
                Set<C18966e> mo1306a = mo1306a();
                ArrayList arrayList3 = new ArrayList();
                for (C18966e c18966e2 : mo1306a) {
                    if (nameFilter.invoke(c18966e2).booleanValue()) {
                        arrayList3.addAll(mo1302a(c18966e2, location));
                    }
                }
                ArrayList arrayList4 = arrayList3;
                C19852f.C19854a INSTANCE2 = C19852f.C19854a.f66054a;
                C18524p.m3843b(INSTANCE2, "INSTANCE");
                C18282n.m4161a((List) arrayList4, (Comparator) INSTANCE2);
                result.addAll(arrayList3);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h.AbstractC19911a
        /* renamed from: b */
        public final Collection<AbstractC19017an> mo1298b(C18966e name, AbstractC18695b location) {
            C18524p.m3840d(name, "name");
            C18524p.m3840d(location, "location");
            return !mo1299b().contains(name) ? C18297z.f63400a : this.f66190g.invoke(name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h.AbstractC19911a
        /* renamed from: b */
        public final Set<C18966e> mo1299b() {
            return (Set) C19301m.m2316a(this.f66193j, f66184a[1]);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19910h.AbstractC19911a
        /* renamed from: c */
        public final Set<C18966e> mo1295c() {
            return this.f66188e.keySet();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$d.class */
    public static final class C19930d extends AbstractC18526r implements Function0<Set<? extends C18966e>> {

        /* renamed from: a */
        final /* synthetic */ Function0<Collection<C18966e>> f66204a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C19930d(Function0<? extends Collection<C18966e>> function0) {
            super(0);
            this.f66204a = function0;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Set<? extends C18966e> invoke() {
            return C18282n.m4114j(this.f66204a.invoke());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.h$e */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$e.class */
    public static final class C19931e extends AbstractC18526r implements Function0<Set<? extends C18966e>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19931e() {
            super(0);
            AbstractC19910h.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Set<? extends C18966e> invoke() {
            Set<C18966e> mo1288c = AbstractC19910h.this.mo1288c();
            if (mo1288c == null) {
                return null;
            }
            return C18255ap.m4238a(C18255ap.m4238a((Set) AbstractC19910h.this.m1325d(), (Iterable) AbstractC19910h.this.f66153a.mo1295c()), (Iterable) mo1288c);
        }
    }

    public AbstractC19910h(C19949k c, List<C18702a.C18741h> functionList, List<C18702a.C18754m> propertyList, List<C18702a.C18776q> typeAliasList, Function0<? extends Collection<C18966e>> classNames) {
        C18524p.m3840d(c, "c");
        C18524p.m3840d(functionList, "functionList");
        C18524p.m3840d(propertyList, "propertyList");
        C18524p.m3840d(typeAliasList, "typeAliasList");
        C18524p.m3840d(classNames, "classNames");
        this.f66154c = c;
        this.f66153a = c.f66269a.f66251c.getPreserveDeclarationsOrdering() ? new C19912b(this, functionList, propertyList, typeAliasList) : new C19923c(this, functionList, propertyList, typeAliasList);
        this.f66155d = c.f66269a.f66249a.mo2313a(new C19930d(classNames));
        this.f66156e = c.f66269a.f66249a.mo2308b(new C19931e());
    }

    /* renamed from: c */
    private final AbstractC19070d m1326c(C18966e c18966e) {
        return this.f66154c.f66269a.m1261a(mo1291a(c18966e));
    }

    /* renamed from: a */
    public final Collection<AbstractC19193k> m1330a(C19825d kindFilter, Function1<? super C18966e, Boolean> nameFilter, AbstractC18695b location) {
        int i;
        int i2;
        int i3;
        C18524p.m3840d(kindFilter, "kindFilter");
        C18524p.m3840d(nameFilter, "nameFilter");
        C18524p.m3840d(location, "location");
        ArrayList arrayList = new ArrayList(0);
        C19825d.C19826a c19826a = C19825d.f65994a;
        i = C19825d.f66007p;
        if (kindFilter.m1428a(i)) {
            mo1292a(arrayList, nameFilter);
        }
        ArrayList arrayList2 = arrayList;
        this.f66153a.mo1305a(arrayList2, kindFilter, nameFilter, location);
        C19825d.C19826a c19826a2 = C19825d.f65994a;
        i2 = C19825d.f66013v;
        if (kindFilter.m1428a(i2)) {
            for (C18966e c18966e : m1325d()) {
                if (nameFilter.invoke(c18966e).booleanValue()) {
                    C19999a.m1208a(arrayList2, m1326c(c18966e));
                }
            }
        }
        C19825d.C19826a c19826a3 = C19825d.f65994a;
        i3 = C19825d.f66008q;
        if (kindFilter.m1428a(i3)) {
            for (C18966e c18966e2 : this.f66153a.mo1295c()) {
                if (nameFilter.invoke(c18966e2).booleanValue()) {
                    C19999a.m1208a(arrayList2, this.f66153a.mo1303a(c18966e2));
                }
            }
        }
        return C19999a.m1209a(arrayList);
    }

    /* renamed from: a */
    protected abstract Set<C18966e> mo1293a();

    /* renamed from: a */
    protected abstract C18960a mo1291a(C18966e c18966e);

    /* renamed from: a */
    protected abstract void mo1292a(Collection<AbstractC19193k> collection, Function1<? super C18966e, Boolean> function1);

    /* renamed from: a */
    protected void mo1332a(C18966e name, List<AbstractC19025as> functions) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(functions, "functions");
    }

    /* renamed from: a */
    protected boolean mo1331a(AbstractC19025as function) {
        C18524p.m3840d(function, "function");
        return true;
    }

    /* renamed from: b */
    protected abstract Set<C18966e> mo1290b();

    /* renamed from: b */
    protected void mo1328b(C18966e name, List<AbstractC19017an> descriptors) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(descriptors, "descriptors");
    }

    /* renamed from: b */
    public boolean mo1289b(C18966e name) {
        C18524p.m3840d(name, "name");
        return m1325d().contains(name);
    }

    /* renamed from: c */
    protected abstract Set<C18966e> mo1288c();

    /* renamed from: d */
    public final Set<C18966e> m1325d() {
        return (Set) C19301m.m2316a(this.f66155d, f66152b[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public Set<C18966e> getClassifierNames() {
        return (Set) C19301m.m2315a(this.f66156e, f66152b[1]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public AbstractC19129g getContributedClassifier(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        if (mo1289b(name)) {
            return m1326c(name);
        }
        if (!this.f66153a.mo1295c().contains(name)) {
            return null;
        }
        return this.f66153a.mo1303a(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    public Collection<AbstractC19025as> getContributedFunctions(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        return this.f66153a.mo1302a(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public Collection<AbstractC19017an> getContributedVariables(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        return this.f66153a.mo1298b(name, location);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public Set<C18966e> getFunctionNames() {
        return this.f66153a.mo1306a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public Set<C18966e> getVariableNames() {
        return this.f66153a.mo1299b();
    }
}
