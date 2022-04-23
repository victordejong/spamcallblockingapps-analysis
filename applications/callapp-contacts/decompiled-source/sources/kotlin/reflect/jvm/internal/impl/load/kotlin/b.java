package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.a.n;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.descriptors.a.c;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.ad;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.load.kotlin.o;
import kotlin.reflect.jvm.internal.impl.resolve.constants.f;
import kotlin.reflect.jvm.internal.impl.resolve.constants.g;
import kotlin.reflect.jvm.internal.impl.resolve.constants.h;
import kotlin.reflect.jvm.internal.impl.resolve.constants.j;
import kotlin.reflect.jvm.internal.impl.resolve.constants.k;
import kotlin.reflect.jvm.internal.impl.resolve.constants.m;
import kotlin.reflect.jvm.internal.impl.resolve.constants.r;
import kotlin.reflect.jvm.internal.impl.resolve.constants.t;
import kotlin.reflect.jvm.internal.impl.resolve.constants.u;
import kotlin.reflect.jvm.internal.impl.resolve.constants.v;
import kotlin.reflect.jvm.internal.impl.resolve.constants.w;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.e;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/b.class */
public final class b extends kotlin.reflect.jvm.internal.impl.load.kotlin.a<c, g<?>> {

    /* renamed from: a  reason: collision with root package name */
    private final ab f38048a;

    /* renamed from: b  reason: collision with root package name */
    private final ad f38049b;

    /* renamed from: c  reason: collision with root package name */
    private final e f38050c;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/b$a.class */
    public static final class a implements o.a {

        /* renamed from: a  reason: collision with root package name */
        final HashMap<kotlin.reflect.jvm.internal.impl.c.e, g<?>> f38051a = new HashMap<>();

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ d f38052b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ b f38053c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ List<c> f38054d;
        final /* synthetic */ at e;

        /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/b$a$a.class */
        public static final class C0698a implements o.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ o.a f38055a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ a f38056b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ kotlin.reflect.jvm.internal.impl.c.e f38057c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ ArrayList<c> f38058d;
            private final /* synthetic */ o.a e;

            C0698a(o.a aVar, a aVar2, kotlin.reflect.jvm.internal.impl.c.e eVar, ArrayList<c> arrayList) {
                this.f38055a = aVar;
                this.f38056b = aVar2;
                this.f38057c = eVar;
                this.f38058d = arrayList;
                this.e = aVar;
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.a
            public final o.a a(kotlin.reflect.jvm.internal.impl.c.e name, kotlin.reflect.jvm.internal.impl.c.a classId) {
                p.d(name, "name");
                p.d(classId, "classId");
                return this.e.a(name, classId);
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.a
            public final o.b a(kotlin.reflect.jvm.internal.impl.c.e name) {
                p.d(name, "name");
                return this.e.a(name);
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.a
            public final void a() {
                this.f38055a.a();
                this.f38056b.f38051a.put(this.f38057c, new kotlin.reflect.jvm.internal.impl.resolve.constants.a((c) n.i((List<? extends Object>) this.f38058d)));
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.a
            public final void a(kotlin.reflect.jvm.internal.impl.c.e eVar, Object obj) {
                this.e.a(eVar, obj);
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.a
            public final void a(kotlin.reflect.jvm.internal.impl.c.e name, kotlin.reflect.jvm.internal.impl.c.a enumClassId, kotlin.reflect.jvm.internal.impl.c.e enumEntryName) {
                p.d(name, "name");
                p.d(enumClassId, "enumClassId");
                p.d(enumEntryName, "enumEntryName");
                this.e.a(name, enumClassId, enumEntryName);
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.a
            public final void a(kotlin.reflect.jvm.internal.impl.c.e name, f value) {
                p.d(name, "name");
                p.d(value, "value");
                this.e.a(name, value);
            }
        }

        /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.b$a$b  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/b$a$b.class */
        public static final class C0699b implements o.b {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ kotlin.reflect.jvm.internal.impl.c.e f38060b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ d f38061c;

            /* renamed from: d  reason: collision with root package name */
            private final ArrayList<g<?>> f38062d = new ArrayList<>();

            C0699b(kotlin.reflect.jvm.internal.impl.c.e eVar, d dVar) {
                this.f38060b = eVar;
                this.f38061c = dVar;
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.b
            public final void a() {
                ba a2 = kotlin.reflect.jvm.internal.impl.load.java.a.a.a(this.f38060b, this.f38061c);
                if (a2 != null) {
                    HashMap<kotlin.reflect.jvm.internal.impl.c.e, g<?>> hashMap = a.this.f38051a;
                    kotlin.reflect.jvm.internal.impl.c.e eVar = this.f38060b;
                    h hVar = h.f38252a;
                    List a3 = kotlin.reflect.jvm.internal.impl.utils.a.a((ArrayList) this.f38062d);
                    KotlinType g = a2.g();
                    p.b(g, "parameter.type");
                    hashMap.put(eVar, h.a(a3, g));
                }
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.b
            public final void a(Object obj) {
                this.f38062d.add(a.b(this.f38060b, obj));
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.b
            public final void a(kotlin.reflect.jvm.internal.impl.c.a enumClassId, kotlin.reflect.jvm.internal.impl.c.e enumEntryName) {
                p.d(enumClassId, "enumClassId");
                p.d(enumEntryName, "enumEntryName");
                this.f38062d.add(new j(enumClassId, enumEntryName));
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.b
            public final void a(f value) {
                p.d(value, "value");
                this.f38062d.add(new kotlin.reflect.jvm.internal.impl.resolve.constants.o(value));
            }
        }

        a(d dVar, b bVar, List<c> list, at atVar) {
            this.f38052b = dVar;
            this.f38053c = bVar;
            this.f38054d = list;
            this.e = atVar;
        }

        static g<?> b(kotlin.reflect.jvm.internal.impl.c.e eVar, Object obj) {
            g<?> a2 = h.f38252a.a(obj);
            if (a2 != null) {
                return a2;
            }
            k.a aVar = k.f38257a;
            return k.a.a(p.a("Unsupported annotation argument: ", (Object) eVar));
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.a
        public final o.a a(kotlin.reflect.jvm.internal.impl.c.e name, kotlin.reflect.jvm.internal.impl.c.a classId) {
            p.d(name, "name");
            p.d(classId, "classId");
            ArrayList arrayList = new ArrayList();
            b bVar = this.f38053c;
            at NO_SOURCE = at.f37401a;
            p.b(NO_SOURCE, "NO_SOURCE");
            o.a a2 = bVar.a(classId, NO_SOURCE, arrayList);
            p.a(a2);
            return new C0698a(a2, this, name, arrayList);
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.a
        public final o.b a(kotlin.reflect.jvm.internal.impl.c.e name) {
            p.d(name, "name");
            return new C0699b(name, this.f38052b);
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.a
        public final void a() {
            this.f38054d.add(new kotlin.reflect.jvm.internal.impl.descriptors.a.d(this.f38052b.getDefaultType(), this.f38051a, this.e));
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.a
        public final void a(kotlin.reflect.jvm.internal.impl.c.e eVar, Object obj) {
            if (eVar != null) {
                this.f38051a.put(eVar, b(eVar, obj));
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.a
        public final void a(kotlin.reflect.jvm.internal.impl.c.e name, kotlin.reflect.jvm.internal.impl.c.a enumClassId, kotlin.reflect.jvm.internal.impl.c.e enumEntryName) {
            p.d(name, "name");
            p.d(enumClassId, "enumClassId");
            p.d(enumEntryName, "enumEntryName");
            this.f38051a.put(name, new j(enumClassId, enumEntryName));
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.o.a
        public final void a(kotlin.reflect.jvm.internal.impl.c.e name, f value) {
            p.d(name, "name");
            p.d(value, "value");
            this.f38051a.put(name, new kotlin.reflect.jvm.internal.impl.resolve.constants.o(value));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(ab module, ad notFoundClasses, kotlin.reflect.jvm.internal.impl.f.n storageManager, m kotlinClassFinder) {
        super(storageManager, kotlinClassFinder);
        p.d(module, "module");
        p.d(notFoundClasses, "notFoundClasses");
        p.d(storageManager, "storageManager");
        p.d(kotlinClassFinder, "kotlinClassFinder");
        this.f38048a = module;
        this.f38049b = notFoundClasses;
        this.f38050c = new e(module, notFoundClasses);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.a
    protected final /* synthetic */ g<?> a(g<?> gVar) {
        g<?> constant = gVar;
        p.d(constant, "constant");
        return constant instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.d ? new t(((kotlin.reflect.jvm.internal.impl.resolve.constants.d) constant).a().byteValue()) : constant instanceof r ? new w(((r) constant).a().shortValue()) : constant instanceof m ? new u(((m) constant).a().intValue()) : constant instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.p ? new v(((kotlin.reflect.jvm.internal.impl.resolve.constants.p) constant).a().longValue()) : constant;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.a
    protected final /* synthetic */ c a(a.C0625a proto, kotlin.reflect.jvm.internal.impl.b.b.c nameResolver) {
        p.d(proto, "proto");
        p.d(nameResolver, "nameResolver");
        return this.f38050c.a(proto, nameResolver);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.a
    protected final o.a a(kotlin.reflect.jvm.internal.impl.c.a annotationClassId, at source, List<c> result) {
        p.d(annotationClassId, "annotationClassId");
        p.d(source, "source");
        p.d(result, "result");
        return new a(kotlin.reflect.jvm.internal.impl.descriptors.v.a(this.f38048a, annotationClassId, this.f38049b), this, result, source);
    }
}
