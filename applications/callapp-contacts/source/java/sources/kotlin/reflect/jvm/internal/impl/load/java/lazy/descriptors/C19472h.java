package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18240ab;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.load.java.AbstractC19510n;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19501g;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19446b;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19411t;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.EnumC19391ab;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19641m;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o;
import kotlin.reflect.jvm.internal.impl.load.kotlin.C19626e;
import kotlin.reflect.jvm.internal.impl.load.kotlin.C19645n;
import kotlin.reflect.jvm.internal.impl.load.kotlin.p562a.C19608a;
import kotlin.reflect.jvm.internal.impl.p537a.p538a.AbstractC18695b;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p545c.C18968g;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19295h;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19297j;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.C19825d;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19939f;
import kotlin.reflect.jvm.internal.impl.utils.C20010d;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.h */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h.class */
public final class C19472h extends AbstractC19497k {

    /* renamed from: a */
    final C19467g f65426a;

    /* renamed from: b */
    private final AbstractC19411t f65427b;

    /* renamed from: h */
    private final AbstractC19297j<Set<String>> f65428h;

    /* renamed from: i */
    private final AbstractC19295h<C19473a, AbstractC19070d> f65429i;

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.h$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$a.class */
    public static final class C19473a {

        /* renamed from: a */
        final C18966e f65430a;

        /* renamed from: b */
        final AbstractC19398g f65431b;

        public C19473a(C18966e name, AbstractC19398g abstractC19398g) {
            C18524p.m3840d(name, "name");
            this.f65430a = name;
            this.f65431b = abstractC19398g;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof C19473a) && C18524p.m3850a(this.f65430a, ((C19473a) obj).f65430a);
        }

        public final int hashCode() {
            return this.f65430a.hashCode();
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.h$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$b.class */
    public static abstract class AbstractC19474b {

        /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.h$b$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$b$a.class */
        public static final class C19475a extends AbstractC19474b {

            /* renamed from: a */
            final AbstractC19070d f65432a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C19475a(AbstractC19070d descriptor) {
                super(null);
                C18524p.m3840d(descriptor, "descriptor");
                this.f65432a = descriptor;
            }
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.h$b$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$b$b.class */
        public static final class C19476b extends AbstractC19474b {

            /* renamed from: a */
            public static final C19476b f65433a = new C19476b();

            private C19476b() {
                super(null);
            }
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.h$b$c */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$b$c.class */
        public static final class C19477c extends AbstractC19474b {

            /* renamed from: a */
            public static final C19477c f65434a = new C19477c();

            private C19477c() {
                super(null);
            }
        }

        private AbstractC19474b() {
        }

        public /* synthetic */ AbstractC19474b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.h$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$c.class */
    public static final class C19478c extends AbstractC18526r implements Function1<C19473a, AbstractC19070d> {

        /* renamed from: b */
        final /* synthetic */ C19501g f65436b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19478c(C19501g c19501g) {
            super(1);
            C19472h.this = r4;
            this.f65436b = c19501g;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ AbstractC19070d invoke(C19473a c19473a) {
            byte[] bArr;
            C19473a request = c19473a;
            C18524p.m3840d(request, "request");
            C18960a c18960a = new C18960a(C19472h.this.f65426a.f64984a, request.f65430a);
            AbstractC19641m.AbstractC19642a.C19643a mo1882a = request.f65431b != null ? this.f65436b.f65480a.f65320c.mo1882a(request.f65431b) : this.f65436b.f65480a.f65320c.mo1883a(c18960a);
            AbstractC19646o m1881a = mo1882a == null ? null : mo1882a.m1881a();
            C18960a mo1875c = m1881a == null ? null : m1881a.mo1875c();
            if (mo1875c == null || (!mo1875c.m2749e() && !mo1875c.f64682a)) {
                AbstractC19474b m2095a = C19472h.m2095a(C19472h.this, m1881a);
                if (m2095a instanceof AbstractC19474b.C19475a) {
                    return ((AbstractC19474b.C19475a) m2095a).f65432a;
                }
                if (m2095a instanceof AbstractC19474b.C19477c) {
                    return null;
                }
                if (!(m2095a instanceof AbstractC19474b.C19476b)) {
                    throw new NoWhenBranchMatchedException();
                }
                AbstractC19398g abstractC19398g = request.f65431b;
                AbstractC19398g abstractC19398g2 = abstractC19398g;
                if (abstractC19398g == null) {
                    AbstractC19510n abstractC19510n = this.f65436b.f65480a.f65319b;
                    if (mo1882a != null) {
                        AbstractC19641m.AbstractC19642a.C19643a c19643a = mo1882a;
                        if (!(mo1882a instanceof AbstractC19641m.AbstractC19642a.C19643a)) {
                            c19643a = null;
                        }
                        AbstractC19641m.AbstractC19642a.C19643a c19643a2 = c19643a;
                        if (c19643a2 != null) {
                            bArr = c19643a2.f65756a;
                            abstractC19398g2 = abstractC19510n.mo2062a(new AbstractC19510n.C19511a(c18960a, bArr, null, 4, null));
                        }
                    }
                    bArr = null;
                    abstractC19398g2 = abstractC19510n.mo2062a(new AbstractC19510n.C19511a(c18960a, bArr, null, 4, null));
                }
                if (EnumC19391ab.BINARY != null) {
                    C18961b mo2216e = abstractC19398g2 == null ? null : abstractC19398g2.mo2216e();
                    LazyJavaClassDescriptor lazyJavaClassDescriptor = null;
                    if (mo2216e != null) {
                        lazyJavaClassDescriptor = null;
                        if (!mo2216e.f64686b.f64691a.isEmpty()) {
                            if (!C18524p.m3850a(mo2216e.m2739d(), C19472h.this.f65426a.f64984a)) {
                                lazyJavaClassDescriptor = null;
                            } else {
                                lazyJavaClassDescriptor = new LazyJavaClassDescriptor(this.f65436b, C19472h.this.f65426a, abstractC19398g2, null, 8, null);
                                this.f65436b.f65480a.f65336s.mo2060a(lazyJavaClassDescriptor);
                            }
                        }
                    }
                    return lazyJavaClassDescriptor;
                }
                StringBuilder sb = new StringBuilder("Couldn't find kotlin binary class for light class created by kotlin binary file\nJavaClass: ");
                sb.append(abstractC19398g2);
                sb.append("\nClassId: ");
                sb.append(c18960a);
                sb.append("\nfindKotlinClass(JavaClass) = ");
                AbstractC19641m abstractC19641m = this.f65436b.f65480a.f65320c;
                C18524p.m3840d(abstractC19641m, "<this>");
                AbstractC19398g javaClass = abstractC19398g2;
                C18524p.m3840d(javaClass, "javaClass");
                AbstractC19641m.AbstractC19642a mo1882a2 = abstractC19641m.mo1882a(abstractC19398g2);
                sb.append(mo1882a2 == null ? null : mo1882a2.m1881a());
                sb.append("\nfindKotlinClass(ClassId) = ");
                sb.append(C19645n.m1880a(this.f65436b.f65480a.f65320c, c18960a));
                sb.append('\n');
                throw new IllegalStateException(sb.toString());
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.h$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$d.class */
    public static final class C19479d extends AbstractC18526r implements Function0<Set<? extends String>> {

        /* renamed from: a */
        final /* synthetic */ C19501g f65437a;

        /* renamed from: b */
        final /* synthetic */ C19472h f65438b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19479d(C19501g c19501g, C19472h c19472h) {
            super(0);
            this.f65437a = c19501g;
            this.f65438b = c19472h;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Set<? extends String> invoke() {
            return this.f65437a.f65480a.f65319b.mo2061b(this.f65438b.f65426a.f64984a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19472h(C19501g c, AbstractC19411t jPackage, C19467g ownerDescriptor) {
        super(c);
        C18524p.m3840d(c, "c");
        C18524p.m3840d(jPackage, "jPackage");
        C18524p.m3840d(ownerDescriptor, "ownerDescriptor");
        this.f65427b = jPackage;
        this.f65426a = ownerDescriptor;
        this.f65428h = c.f65480a.f65318a.mo2308b(new C19479d(c, this));
        this.f65429i = c.f65480a.f65318a.mo2307b(new C19478c(c));
    }

    /* renamed from: a */
    public static final /* synthetic */ AbstractC19474b m2095a(C19472h c19472h, AbstractC19646o kotlinClass) {
        if (kotlinClass == null) {
            return AbstractC19474b.C19476b.f65433a;
        }
        if (kotlinClass.mo1879a().f65675a != C19608a.EnumC19609a.CLASS) {
            return AbstractC19474b.C19477c.f65434a;
        }
        C19626e c19626e = c19472h.f65442d.f65480a.f65321d;
        C18524p.m3840d(kotlinClass, "kotlinClass");
        C19939f m1913a = c19626e.m1913a(kotlinClass);
        AbstractC19070d m1266a = m1913a == null ? null : c19626e.m1915a().f66267s.m1266a(kotlinClass.mo1875c(), m1913a);
        return m1266a != null ? new AbstractC19474b.C19475a(m1266a) : AbstractC19474b.C19476b.f65433a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i
    /* renamed from: a */
    protected final Set<C18966e> mo2079a(C19825d kindFilter) {
        C18524p.m3840d(kindFilter, "kindFilter");
        return C18240ab.f63351a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i
    /* renamed from: a */
    protected final Set<C18966e> mo2078a(C19825d kindFilter, Function1<? super C18966e, Boolean> function1) {
        int i;
        C18524p.m3840d(kindFilter, "kindFilter");
        C19825d.C19826a c19826a = C19825d.f65994a;
        i = C19825d.f66006o;
        if (!kindFilter.m1428a(i)) {
            return C18240ab.f63351a;
        }
        Set<String> invoke = this.f65428h.invoke();
        if (invoke != null) {
            Set<String> set = invoke;
            HashSet hashSet = new HashSet();
            for (String str : set) {
                hashSet.add(C18966e.m2719a(str));
            }
            return hashSet;
        }
        AbstractC19411t abstractC19411t = this.f65427b;
        Function1<? super C18966e, Boolean> function12 = function1;
        if (function1 == null) {
            function12 = C20010d.m1198a();
        }
        Collection<AbstractC19398g> mo2181a = abstractC19411t.mo2181a(function12);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (AbstractC19398g abstractC19398g : mo2181a) {
            C18966e h = EnumC19391ab.SOURCE == null ? null : abstractC19398g.mo2183h();
            if (h != null) {
                linkedHashSet.add(h);
            }
        }
        return linkedHashSet;
    }

    /* renamed from: a */
    public final AbstractC19070d getContributedClassifier(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        return m2096a(name, (AbstractC19398g) null);
    }

    /* renamed from: a */
    public final AbstractC19070d m2096a(C18966e c18966e, AbstractC19398g abstractC19398g) {
        if (!C18968g.m2710b(c18966e)) {
            return null;
        }
        Set<String> invoke = this.f65428h.invoke();
        if (abstractC19398g == null && invoke != null && !invoke.contains(c18966e.m2721a())) {
            return null;
        }
        return this.f65429i.invoke(new C19473a(c18966e, abstractC19398g));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i
    /* renamed from: a */
    protected final void mo2082a(Collection<AbstractC19025as> result, C18966e name) {
        C18524p.m3840d(result, "result");
        C18524p.m3840d(name, "name");
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i
    /* renamed from: b */
    protected final Set<C18966e> mo2076b(C19825d kindFilter, Function1<? super C18966e, Boolean> function1) {
        C18524p.m3840d(kindFilter, "kindFilter");
        return C18240ab.f63351a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i
    /* renamed from: b */
    protected final /* bridge */ /* synthetic */ AbstractC19193k mo2077b() {
        return this.f65426a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i
    /* renamed from: c */
    protected final AbstractC19446b mo2075c() {
        return AbstractC19446b.C19447a.f65376a;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00a3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0050 A[SYNTHETIC] */
    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19841k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Collection<kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k> getContributedDescriptors(kotlin.reflect.jvm.internal.impl.resolve.p567e.C19825d r5, kotlin.jvm.functions.Function1<? super kotlin.reflect.jvm.internal.impl.p545c.C18966e, java.lang.Boolean> r6) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "kindFilter"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r6
            java.lang.String r1 = "nameFilter"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            kotlin.reflect.jvm.internal.impl.resolve.e.d$a r0 = kotlin.reflect.jvm.internal.impl.resolve.p567e.C19825d.f65994a
            r7 = r0
            int r0 = kotlin.reflect.jvm.internal.impl.resolve.p567e.C19825d.m1419i()
            r8 = r0
            kotlin.reflect.jvm.internal.impl.resolve.e.d$a r0 = kotlin.reflect.jvm.internal.impl.resolve.p567e.C19825d.f65994a
            r7 = r0
            r0 = r5
            r1 = r8
            int r2 = kotlin.reflect.jvm.internal.impl.resolve.p567e.C19825d.m1427b()
            r1 = r1 | r2
            boolean r0 = r0.m1428a(r1)
            if (r0 != 0) goto L31
            kotlin.a.z r0 = kotlin.p518a.C18297z.f63400a
            java.util.List r0 = (java.util.List) r0
            java.util.Collection r0 = (java.util.Collection) r0
            return r0
        L31:
            r0 = r4
            kotlin.reflect.jvm.internal.impl.f.i r0 = r0.m2083d()
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
        L50:
            r0 = r7
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto Laf
            r0 = r7
            java.lang.Object r0 = r0.next()
            r9 = r0
            r0 = r9
            kotlin.reflect.jvm.internal.impl.descriptors.k r0 = (kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k) r0
            r10 = r0
            r0 = r10
            boolean r0 = r0 instanceof kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
            if (r0 == 0) goto L9b
            r0 = r10
            kotlin.reflect.jvm.internal.impl.descriptors.d r0 = (kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d) r0
            kotlin.reflect.jvm.internal.impl.c.e r0 = r0.getName()
            r10 = r0
            r0 = r10
            java.lang.String r1 = "it.name"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            r0 = r6
            r1 = r10
            java.lang.Object r0 = r0.invoke(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L9b
            r0 = 1
            r8 = r0
            goto L9e
        L9b:
            r0 = 0
            r8 = r0
        L9e:
            r0 = r8
            if (r0 == 0) goto L50
            r0 = r5
            r1 = r9
            boolean r0 = r0.add(r1)
            goto L50
        Laf:
            r0 = r5
            java.util.List r0 = (java.util.List) r0
            java.util.Collection r0 = (java.util.Collection) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.C19472h.getContributedDescriptors(kotlin.reflect.jvm.internal.impl.resolve.e.d, kotlin.jvm.functions.Function1):java.util.Collection");
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.AbstractC19480i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19839i, kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h
    public final Collection<AbstractC19017an> getContributedVariables(C18966e name, AbstractC18695b location) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(location, "location");
        return C18297z.f63400a;
    }
}
