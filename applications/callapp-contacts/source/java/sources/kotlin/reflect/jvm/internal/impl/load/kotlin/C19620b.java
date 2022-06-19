package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.C19001ad;
import kotlin.reflect.jvm.internal.impl.descriptors.C19216v;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.C18979d;
import kotlin.reflect.jvm.internal.impl.load.java.p558a.C19344a;
import kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.AbstractC18813c;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19787k;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19775a;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19778d;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19780f;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19782h;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19786j;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19791m;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19793o;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19798p;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19800r;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19802t;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19803u;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19804v;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19805w;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19937e;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.utils.C19999a;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/b.class */
public final class C19620b extends AbstractC19599a<AbstractC18977c, AbstractC19781g<?>> {

    /* renamed from: a */
    private final AbstractC18999ab f65703a;

    /* renamed from: b */
    private final C19001ad f65704b;

    /* renamed from: c */
    private final C19937e f65705c;

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.b$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/b$a.class */
    public static final class C19621a implements AbstractC19646o.AbstractC19647a {

        /* renamed from: a */
        final HashMap<C18966e, AbstractC19781g<?>> f65706a = new HashMap<>();

        /* renamed from: b */
        final /* synthetic */ AbstractC19070d f65707b;

        /* renamed from: c */
        final /* synthetic */ C19620b f65708c;

        /* renamed from: d */
        final /* synthetic */ List<AbstractC18977c> f65709d;

        /* renamed from: e */
        final /* synthetic */ AbstractC19026at f65710e;

        /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.b$a$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a.class */
        public static final class C19622a implements AbstractC19646o.AbstractC19647a {

            /* renamed from: a */
            final /* synthetic */ AbstractC19646o.AbstractC19647a f65711a;

            /* renamed from: b */
            final /* synthetic */ C19621a f65712b;

            /* renamed from: c */
            final /* synthetic */ C18966e f65713c;

            /* renamed from: d */
            final /* synthetic */ ArrayList<AbstractC18977c> f65714d;

            /* renamed from: e */
            private final /* synthetic */ AbstractC19646o.AbstractC19647a f65715e;

            C19622a(AbstractC19646o.AbstractC19647a abstractC19647a, C19621a c19621a, C18966e c18966e, ArrayList<AbstractC18977c> arrayList) {
                this.f65711a = abstractC19647a;
                this.f65712b = c19621a;
                this.f65713c = c18966e;
                this.f65714d = arrayList;
                this.f65715e = abstractC19647a;
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19647a
            /* renamed from: a */
            public final AbstractC19646o.AbstractC19647a mo1871a(C18966e name, C18960a classId) {
                C18524p.m3840d(name, "name");
                C18524p.m3840d(classId, "classId");
                return this.f65715e.mo1871a(name, classId);
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19647a
            /* renamed from: a */
            public final AbstractC19646o.AbstractC19648b mo1873a(C18966e name) {
                C18524p.m3840d(name, "name");
                return this.f65715e.mo1873a(name);
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19647a
            /* renamed from: a */
            public final void mo1874a() {
                this.f65711a.mo1874a();
                this.f65712b.f65706a.put(this.f65713c, new C19775a((AbstractC18977c) C18282n.m4115i((List<? extends Object>) this.f65714d)));
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19647a
            /* renamed from: a */
            public final void mo1872a(C18966e c18966e, Object obj) {
                this.f65715e.mo1872a(c18966e, obj);
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19647a
            /* renamed from: a */
            public final void mo1870a(C18966e name, C18960a enumClassId, C18966e enumEntryName) {
                C18524p.m3840d(name, "name");
                C18524p.m3840d(enumClassId, "enumClassId");
                C18524p.m3840d(enumEntryName, "enumEntryName");
                this.f65715e.mo1870a(name, enumClassId, enumEntryName);
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19647a
            /* renamed from: a */
            public final void mo1869a(C18966e name, C19780f value) {
                C18524p.m3840d(name, "name");
                C18524p.m3840d(value, "value");
                this.f65715e.mo1869a(name, value);
            }
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.b$a$b */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b.class */
        public static final class C19623b implements AbstractC19646o.AbstractC19648b {

            /* renamed from: b */
            final /* synthetic */ C18966e f65717b;

            /* renamed from: c */
            final /* synthetic */ AbstractC19070d f65718c;

            /* renamed from: d */
            private final ArrayList<AbstractC19781g<?>> f65719d = new ArrayList<>();

            C19623b(C18966e c18966e, AbstractC19070d abstractC19070d) {
                C19621a.this = r5;
                this.f65717b = c18966e;
                this.f65718c = abstractC19070d;
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19648b
            /* renamed from: a */
            public final void mo1868a() {
                AbstractC19050ba m2285a = C19344a.m2285a(this.f65717b, this.f65718c);
                if (m2285a != null) {
                    HashMap<C18966e, AbstractC19781g<?>> hashMap = C19621a.this.f65706a;
                    C18966e c18966e = this.f65717b;
                    C19782h c19782h = C19782h.f65967a;
                    List m1209a = C19999a.m1209a((ArrayList) this.f65719d);
                    KotlinType g = m2285a.mo2593g();
                    C18524p.m3843b(g, "parameter.type");
                    hashMap.put(c18966e, C19782h.m1490a(m1209a, g));
                }
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19648b
            /* renamed from: a */
            public final void mo1867a(Object obj) {
                this.f65719d.add(C19621a.m1920b(this.f65717b, obj));
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19648b
            /* renamed from: a */
            public final void mo1866a(C18960a enumClassId, C18966e enumEntryName) {
                C18524p.m3840d(enumClassId, "enumClassId");
                C18524p.m3840d(enumEntryName, "enumEntryName");
                this.f65719d.add(new C19786j(enumClassId, enumEntryName));
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19648b
            /* renamed from: a */
            public final void mo1865a(C19780f value) {
                C18524p.m3840d(value, "value");
                this.f65719d.add(new C19793o(value));
            }
        }

        C19621a(AbstractC19070d abstractC19070d, C19620b c19620b, List<AbstractC18977c> list, AbstractC19026at abstractC19026at) {
            this.f65707b = abstractC19070d;
            this.f65708c = c19620b;
            this.f65709d = list;
            this.f65710e = abstractC19026at;
        }

        /* renamed from: b */
        static AbstractC19781g<?> m1920b(C18966e c18966e, Object obj) {
            AbstractC19781g<?> m1492a = C19782h.f65967a.m1492a(obj);
            if (m1492a == null) {
                AbstractC19787k.C19788a c19788a = AbstractC19787k.f65972a;
                return AbstractC19787k.C19788a.m1488a(C18524p.m3847a("Unsupported annotation argument: ", (Object) c18966e));
            }
            return m1492a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19647a
        /* renamed from: a */
        public final AbstractC19646o.AbstractC19647a mo1871a(C18966e name, C18960a classId) {
            C18524p.m3840d(name, "name");
            C18524p.m3840d(classId, "classId");
            ArrayList arrayList = new ArrayList();
            C19620b c19620b = this.f65708c;
            AbstractC19026at NO_SOURCE = AbstractC19026at.f64759a;
            C18524p.m3843b(NO_SOURCE, "NO_SOURCE");
            AbstractC19646o.AbstractC19647a mo1921a = c19620b.mo1921a(classId, NO_SOURCE, arrayList);
            C18524p.m3851a(mo1921a);
            return new C19622a(mo1921a, this, name, arrayList);
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19647a
        /* renamed from: a */
        public final AbstractC19646o.AbstractC19648b mo1873a(C18966e name) {
            C18524p.m3840d(name, "name");
            return new C19623b(name, this.f65707b);
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19647a
        /* renamed from: a */
        public final void mo1874a() {
            this.f65709d.add(new C18979d(this.f65707b.getDefaultType(), this.f65706a, this.f65710e));
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19647a
        /* renamed from: a */
        public final void mo1872a(C18966e c18966e, Object obj) {
            if (c18966e != null) {
                this.f65706a.put(c18966e, m1920b(c18966e, obj));
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19647a
        /* renamed from: a */
        public final void mo1870a(C18966e name, C18960a enumClassId, C18966e enumEntryName) {
            C18524p.m3840d(name, "name");
            C18524p.m3840d(enumClassId, "enumClassId");
            C18524p.m3840d(enumEntryName, "enumEntryName");
            this.f65706a.put(name, new C19786j(enumClassId, enumEntryName));
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19646o.AbstractC19647a
        /* renamed from: a */
        public final void mo1869a(C18966e name, C19780f value) {
            C18524p.m3840d(name, "name");
            C18524p.m3840d(value, "value");
            this.f65706a.put(name, new C19793o(value));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19620b(AbstractC18999ab module, C19001ad notFoundClasses, AbstractC19302n storageManager, AbstractC19641m kotlinClassFinder) {
        super(storageManager, kotlinClassFinder);
        C18524p.m3840d(module, "module");
        C18524p.m3840d(notFoundClasses, "notFoundClasses");
        C18524p.m3840d(storageManager, "storageManager");
        C18524p.m3840d(kotlinClassFinder, "kotlinClassFinder");
        this.f65703a = module;
        this.f65704b = notFoundClasses;
        this.f65705c = new C19937e(module, notFoundClasses);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19599a
    /* renamed from: a */
    protected final /* synthetic */ AbstractC19781g<?> mo1923a(AbstractC19781g<?> abstractC19781g) {
        AbstractC19781g<?> constant = abstractC19781g;
        C18524p.m3840d(constant, "constant");
        return constant instanceof C19778d ? new C19802t(((C19778d) constant).mo1489a().byteValue()) : constant instanceof C19800r ? new C19805w(((C19800r) constant).mo1489a().shortValue()) : constant instanceof C19791m ? new C19803u(((C19791m) constant).mo1489a().intValue()) : constant instanceof C19798p ? new C19804v(((C19798p) constant).mo1489a().longValue()) : constant;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19599a
    /* renamed from: a */
    protected final /* synthetic */ AbstractC18977c mo1922a(C18702a.C18704a proto, AbstractC18813c nameResolver) {
        C18524p.m3840d(proto, "proto");
        C18524p.m3840d(nameResolver, "nameResolver");
        return this.f65705c.m1272a(proto, nameResolver);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractC19599a
    /* renamed from: a */
    protected final AbstractC19646o.AbstractC19647a mo1921a(C18960a annotationClassId, AbstractC19026at source, List<AbstractC18977c> result) {
        C18524p.m3840d(annotationClassId, "annotationClassId");
        C18524p.m3840d(source, "source");
        C18524p.m3840d(result, "result");
        return new C19621a(C19216v.m2498a(this.f65703a, annotationClassId, this.f65704b), this, result, source);
    }
}
