package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.a.z;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.f.j;
import kotlin.reflect.jvm.internal.impl.load.java.d.ab;
import kotlin.reflect.jvm.internal.impl.load.java.d.g;
import kotlin.reflect.jvm.internal.impl.load.java.d.t;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b;
import kotlin.reflect.jvm.internal.impl.load.java.n;
import kotlin.reflect.jvm.internal.impl.load.kotlin.a.a;
import kotlin.reflect.jvm.internal.impl.load.kotlin.m;
import kotlin.reflect.jvm.internal.impl.load.kotlin.o;
import kotlin.reflect.jvm.internal.impl.resolve.e.d;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.f;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h.class */
public final class h extends k {

    /* renamed from: a  reason: collision with root package name */
    final g f37840a;

    /* renamed from: b  reason: collision with root package name */
    private final t f37841b;
    private final j<Set<String>> h;
    private final kotlin.reflect.jvm.internal.impl.f.h<a, kotlin.reflect.jvm.internal.impl.descriptors.d> i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final e f37842a;

        /* renamed from: b  reason: collision with root package name */
        final g f37843b;

        public a(e name, g gVar) {
            p.d(name, "name");
            this.f37842a = name;
            this.f37843b = gVar;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof a) && p.a(this.f37842a, ((a) obj).f37842a);
        }

        public final int hashCode() {
            return this.f37842a.hashCode();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$b.class */
    public static abstract class b {

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$b$a.class */
        public static final class a extends b {

            /* renamed from: a  reason: collision with root package name */
            final kotlin.reflect.jvm.internal.impl.descriptors.d f37844a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(kotlin.reflect.jvm.internal.impl.descriptors.d descriptor) {
                super(null);
                p.d(descriptor, "descriptor");
                this.f37844a = descriptor;
            }
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.h$b$b  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$b$b.class */
        public static final class C0687b extends b {

            /* renamed from: a  reason: collision with root package name */
            public static final C0687b f37845a = new C0687b();

            private C0687b() {
                super(null);
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$b$c.class */
        public static final class c extends b {

            /* renamed from: a  reason: collision with root package name */
            public static final c f37846a = new c();

            private c() {
                super(null);
            }
        }

        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$c.class */
    static final class c extends r implements Function1<a, kotlin.reflect.jvm.internal.impl.descriptors.d> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.load.java.lazy.g f37848b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(kotlin.reflect.jvm.internal.impl.load.java.lazy.g gVar) {
            super(1);
            this.f37848b = gVar;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.d invoke(a aVar) {
            byte[] bArr;
            a request = aVar;
            p.d(request, "request");
            kotlin.reflect.jvm.internal.impl.c.a aVar2 = new kotlin.reflect.jvm.internal.impl.c.a(h.this.f37840a.f37582a, request.f37842a);
            m.a a2 = request.f37843b != null ? this.f37848b.f37882a.f37784c.a(request.f37843b) : this.f37848b.f37882a.f37784c.a(aVar2);
            o oVar = null;
            o a3 = a2 == null ? null : a2.a();
            kotlin.reflect.jvm.internal.impl.c.a c2 = a3 == null ? null : a3.c();
            if (c2 != null && (c2.e() || c2.f37331a)) {
                return null;
            }
            b a4 = h.a(h.this, a3);
            if (a4 instanceof b.a) {
                return ((b.a) a4).f37844a;
            }
            if (a4 instanceof b.c) {
                return null;
            }
            if (a4 instanceof b.C0687b) {
                g gVar = request.f37843b;
                g javaClass = gVar;
                if (gVar == null) {
                    n nVar = this.f37848b.f37882a.f37783b;
                    if (a2 != null) {
                        m.a aVar3 = a2;
                        if (!(a2 instanceof m.a.C0700a)) {
                            aVar3 = null;
                        }
                        m.a.C0700a aVar4 = (m.a.C0700a) aVar3;
                        if (aVar4 != null) {
                            bArr = aVar4.f38087a;
                            javaClass = nVar.a(new n.a(aVar2, bArr, null, 4, null));
                        }
                    }
                    bArr = null;
                    javaClass = nVar.a(new n.a(aVar2, bArr, null, 4, null));
                }
                if (ab.BINARY == null) {
                    StringBuilder sb = new StringBuilder("Couldn't find kotlin binary class for light class created by kotlin binary file\nJavaClass: ");
                    sb.append(javaClass);
                    sb.append("\nClassId: ");
                    sb.append(aVar2);
                    sb.append("\nfindKotlinClass(JavaClass) = ");
                    m mVar = this.f37848b.f37882a.f37784c;
                    p.d(mVar, "<this>");
                    p.d(javaClass, "javaClass");
                    m.a a5 = mVar.a(javaClass);
                    if (a5 != null) {
                        oVar = a5.a();
                    }
                    sb.append(oVar);
                    sb.append("\nfindKotlinClass(ClassId) = ");
                    sb.append(kotlin.reflect.jvm.internal.impl.load.kotlin.n.a(this.f37848b.f37882a.f37784c, aVar2));
                    sb.append('\n');
                    throw new IllegalStateException(sb.toString());
                }
                kotlin.reflect.jvm.internal.impl.c.b e = javaClass == null ? null : javaClass.e();
                LazyJavaClassDescriptor lazyJavaClassDescriptor = null;
                if (e != null) {
                    lazyJavaClassDescriptor = null;
                    if (!e.f37335b.f37340a.isEmpty()) {
                        if (!p.a(e.d(), h.this.f37840a.f37582a)) {
                            lazyJavaClassDescriptor = null;
                        } else {
                            lazyJavaClassDescriptor = new LazyJavaClassDescriptor(this.f37848b, h.this.f37840a, javaClass, null, 8, null);
                            this.f37848b.f37882a.s.a(lazyJavaClassDescriptor);
                        }
                    }
                }
                return lazyJavaClassDescriptor;
            }
            throw new NoWhenBranchMatchedException();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$d.class */
    static final class d extends r implements Function0<Set<? extends String>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.load.java.lazy.g f37849a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ h f37850b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(kotlin.reflect.jvm.internal.impl.load.java.lazy.g gVar, h hVar) {
            super(0);
            this.f37849a = gVar;
            this.f37850b = hVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Set<? extends String> invoke() {
            return this.f37849a.f37882a.f37783b.b(this.f37850b.f37840a.f37582a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(kotlin.reflect.jvm.internal.impl.load.java.lazy.g c2, t jPackage, g ownerDescriptor) {
        super(c2);
        p.d(c2, "c");
        p.d(jPackage, "jPackage");
        p.d(ownerDescriptor, "ownerDescriptor");
        this.f37841b = jPackage;
        this.f37840a = ownerDescriptor;
        this.h = c2.f37882a.f37782a.b(new d(c2, this));
        this.i = c2.f37882a.f37782a.b(new c(c2));
    }

    public static final /* synthetic */ b a(h hVar, o kotlinClass) {
        if (kotlinClass == null) {
            return b.C0687b.f37845a;
        }
        if (kotlinClass.a().f38020a != a.EnumC0694a.CLASS) {
            return b.c.f37846a;
        }
        kotlin.reflect.jvm.internal.impl.load.kotlin.e eVar = hVar.f37854d.f37882a.f37785d;
        p.d(kotlinClass, "kotlinClass");
        f a2 = eVar.a(kotlinClass);
        kotlin.reflect.jvm.internal.impl.descriptors.d a3 = a2 == null ? null : eVar.a().s.a(kotlinClass.c(), a2);
        return a3 != null ? new b.a(a3) : b.C0687b.f37845a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i
    protected final Set<e> a(kotlin.reflect.jvm.internal.impl.resolve.e.d kindFilter) {
        p.d(kindFilter, "kindFilter");
        return kotlin.a.ab.f36567a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i
    protected final Set<e> a(kotlin.reflect.jvm.internal.impl.resolve.e.d kindFilter, Function1<? super e, Boolean> function1) {
        int i;
        p.d(kindFilter, "kindFilter");
        d.a aVar = kotlin.reflect.jvm.internal.impl.resolve.e.d.f38279a;
        i = kotlin.reflect.jvm.internal.impl.resolve.e.d.o;
        if (!kindFilter.a(i)) {
            return kotlin.a.ab.f36567a;
        }
        Set<String> invoke = this.h.invoke();
        if (invoke != null) {
            Set<String> set = invoke;
            HashSet hashSet = new HashSet();
            for (String str : set) {
                hashSet.add(e.a(str));
            }
            return hashSet;
        }
        t tVar = this.f37841b;
        Function1<? super e, Boolean> function12 = function1;
        if (function1 == null) {
            function12 = kotlin.reflect.jvm.internal.impl.utils.d.a();
        }
        Collection<g> a2 = tVar.a(function12);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (g gVar : a2) {
            e h = ab.SOURCE == null ? null : gVar.h();
            if (h != null) {
                linkedHashSet.add(h);
            }
        }
        return linkedHashSet;
    }

    /* renamed from: a */
    public final kotlin.reflect.jvm.internal.impl.descriptors.d getContributedClassifier(e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
        p.d(name, "name");
        p.d(location, "location");
        return a(name, (g) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final kotlin.reflect.jvm.internal.impl.descriptors.d a(e eVar, g gVar) {
        if (!kotlin.reflect.jvm.internal.impl.c.g.b(eVar)) {
            return null;
        }
        Set<String> invoke = this.h.invoke();
        if (gVar != null || invoke == null || invoke.contains(eVar.a())) {
            return this.i.invoke(new a(eVar, gVar));
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i
    protected final void a(Collection<as> result, e name) {
        p.d(result, "result");
        p.d(name, "name");
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i
    protected final Set<e> b(kotlin.reflect.jvm.internal.impl.resolve.e.d kindFilter, Function1<? super e, Boolean> function1) {
        p.d(kindFilter, "kindFilter");
        return kotlin.a.ab.f36567a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i
    protected final /* bridge */ /* synthetic */ k b() {
        return this.f37840a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i
    protected final kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.b c() {
        return b.a.f37806a;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00a3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0050 A[SYNTHETIC] */
    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i, kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Collection<kotlin.reflect.jvm.internal.impl.descriptors.k> getContributedDescriptors(kotlin.reflect.jvm.internal.impl.resolve.e.d r5, kotlin.jvm.functions.Function1<? super kotlin.reflect.jvm.internal.impl.c.e, java.lang.Boolean> r6) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "kindFilter"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r6
            java.lang.String r1 = "nameFilter"
            kotlin.jvm.internal.p.d(r0, r1)
            kotlin.reflect.jvm.internal.impl.resolve.e.d$a r0 = kotlin.reflect.jvm.internal.impl.resolve.e.d.f38279a
            r7 = r0
            int r0 = kotlin.reflect.jvm.internal.impl.resolve.e.d.i()
            r8 = r0
            kotlin.reflect.jvm.internal.impl.resolve.e.d$a r0 = kotlin.reflect.jvm.internal.impl.resolve.e.d.f38279a
            r7 = r0
            r0 = r5
            r1 = r8
            int r2 = kotlin.reflect.jvm.internal.impl.resolve.e.d.b()
            r1 = r1 | r2
            boolean r0 = r0.a(r1)
            if (r0 != 0) goto L_0x0031
            kotlin.a.z r0 = kotlin.a.z.f36608a
            java.util.List r0 = (java.util.List) r0
            java.util.Collection r0 = (java.util.Collection) r0
            return r0
        L_0x0031:
            r0 = r4
            kotlin.reflect.jvm.internal.impl.f.i r0 = r0.d()
            java.lang.Object r0 = r0.invoke()
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            r7 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            java.util.Collection r0 = (java.util.Collection) r0
            r5 = r0
            r0 = r7
            java.util.Iterator r0 = r0.iterator()
            r7 = r0
        L_0x0050:
            r0 = r7
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x00af
            r0 = r7
            java.lang.Object r0 = r0.next()
            r9 = r0
            r0 = r9
            kotlin.reflect.jvm.internal.impl.descriptors.k r0 = (kotlin.reflect.jvm.internal.impl.descriptors.k) r0
            r10 = r0
            r0 = r10
            boolean r0 = r0 instanceof kotlin.reflect.jvm.internal.impl.descriptors.d
            if (r0 == 0) goto L_0x009b
            r0 = r10
            kotlin.reflect.jvm.internal.impl.descriptors.d r0 = (kotlin.reflect.jvm.internal.impl.descriptors.d) r0
            kotlin.reflect.jvm.internal.impl.c.e r0 = r0.getName()
            r10 = r0
            r0 = r10
            java.lang.String r1 = "it.name"
            kotlin.jvm.internal.p.b(r0, r1)
            r0 = r6
            r1 = r10
            java.lang.Object r0 = r0.invoke(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x009b
            r0 = 1
            r8 = r0
            goto L_0x009e
        L_0x009b:
            r0 = 0
            r8 = r0
        L_0x009e:
            r0 = r8
            if (r0 == 0) goto L_0x0050
            r0 = r5
            r1 = r9
            boolean r0 = r0.add(r1)
            goto L_0x0050
        L_0x00af:
            r0 = r5
            java.util.List r0 = (java.util.List) r0
            java.util.Collection r0 = (java.util.Collection) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.h.getContributedDescriptors(kotlin.reflect.jvm.internal.impl.resolve.e.d, kotlin.jvm.functions.Function1):java.util.Collection");
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.i, kotlin.reflect.jvm.internal.impl.resolve.e.i, kotlin.reflect.jvm.internal.impl.resolve.e.h
    public final Collection<an> getContributedVariables(e name, kotlin.reflect.jvm.internal.impl.a.a.b location) {
        p.d(name, "name");
        p.d(location, "location");
        return z.f36608a;
    }
}
