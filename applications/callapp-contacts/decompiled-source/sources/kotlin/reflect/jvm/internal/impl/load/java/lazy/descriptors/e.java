package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.a.ai;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.n;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.a.d;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.v;
import kotlin.reflect.jvm.internal.impl.f.j;
import kotlin.reflect.jvm.internal.impl.load.java.a.k;
import kotlin.reflect.jvm.internal.impl.load.java.b.i;
import kotlin.reflect.jvm.internal.impl.load.java.d.m;
import kotlin.reflect.jvm.internal.impl.load.java.d.o;
import kotlin.reflect.jvm.internal.impl.load.java.d.w;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.g;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolverKt;
import kotlin.reflect.jvm.internal.impl.load.java.u;
import kotlin.reflect.jvm.internal.impl.resolve.constants.h;
import kotlin.reflect.jvm.internal.impl.resolve.constants.o;
import kotlin.reflect.jvm.internal.impl.resolve.constants.q;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.t;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e.class */
public final class e implements kotlin.reflect.jvm.internal.impl.descriptors.a.c, i {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f37812a = {ac.a(new aa(ac.b(e.class), "fqName", "getFqName()Lorg/jetbrains/kotlin/name/FqName;")), ac.a(new aa(ac.b(e.class), "type", "getType()Lorg/jetbrains/kotlin/types/SimpleType;")), ac.a(new aa(ac.b(e.class), "allValueArguments", "getAllValueArguments()Ljava/util/Map;"))};

    /* renamed from: b  reason: collision with root package name */
    public final boolean f37813b;

    /* renamed from: c  reason: collision with root package name */
    private final g f37814c;

    /* renamed from: d  reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.load.java.d.a f37815d;
    private final j e;
    private final kotlin.reflect.jvm.internal.impl.f.i f;
    private final kotlin.reflect.jvm.internal.impl.load.java.c.a g;
    private final kotlin.reflect.jvm.internal.impl.f.i h;
    private final boolean i;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e$a.class */
    static final class a extends r implements Function0<Map<kotlin.reflect.jvm.internal.impl.c.e, ? extends kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Map<kotlin.reflect.jvm.internal.impl.c.e, ? extends kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> invoke() {
            Collection<kotlin.reflect.jvm.internal.impl.load.java.d.b> a2 = e.this.f37815d.a();
            e eVar = e.this;
            ArrayList arrayList = new ArrayList();
            for (kotlin.reflect.jvm.internal.impl.load.java.d.b bVar : a2) {
                kotlin.reflect.jvm.internal.impl.c.e a3 = bVar.a();
                kotlin.reflect.jvm.internal.impl.c.e eVar2 = a3;
                if (a3 == null) {
                    eVar2 = u.f38003c;
                }
                kotlin.reflect.jvm.internal.impl.resolve.constants.g a4 = eVar.a(bVar);
                n a5 = a4 == null ? null : t.a(eVar2, a4);
                if (a5 != null) {
                    arrayList.add(a5);
                }
            }
            return ai.a(arrayList);
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e$b.class */
    static final class b extends r implements Function0<kotlin.reflect.jvm.internal.impl.c.b> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ kotlin.reflect.jvm.internal.impl.c.b invoke() {
            kotlin.reflect.jvm.internal.impl.c.a b2 = e.this.f37815d.b();
            if (b2 == null) {
                return null;
            }
            return b2.f();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e$c.class */
    static final class c extends r implements Function0<SimpleType> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ SimpleType invoke() {
            kotlin.reflect.jvm.internal.impl.c.b b2 = e.this.b();
            if (b2 == null) {
                return ErrorUtils.createErrorType(p.a("No fqName: ", (Object) e.this.f37815d));
            }
            d dVar = d.f37244a;
            kotlin.reflect.jvm.internal.impl.descriptors.d a2 = d.a(b2, e.this.f37814c.f37882a.o.getBuiltIns());
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar2 = a2;
            if (a2 == null) {
                kotlin.reflect.jvm.internal.impl.descriptors.d a3 = e.this.f37814c.f37882a.k.a(e.this.f37815d.e());
                dVar2 = a3;
                if (a3 == null) {
                    dVar2 = e.a(e.this, b2);
                }
            }
            return dVar2.getDefaultType();
        }
    }

    public e(g c2, kotlin.reflect.jvm.internal.impl.load.java.d.a javaAnnotation, boolean z) {
        p.d(c2, "c");
        p.d(javaAnnotation, "javaAnnotation");
        this.f37814c = c2;
        this.f37815d = javaAnnotation;
        this.e = c2.f37882a.f37782a.b(new b());
        this.f = c2.f37882a.f37782a.a(new c());
        this.g = c2.f37882a.j.a(javaAnnotation);
        this.h = c2.f37882a.f37782a.a(new a());
        this.i = javaAnnotation.d();
        javaAnnotation.c();
        this.f37813b = z;
    }

    public /* synthetic */ e(g gVar, kotlin.reflect.jvm.internal.impl.load.java.d.a aVar, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(gVar, aVar, (i & 4) != 0 ? false : z);
    }

    public static final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.d a(e eVar, kotlin.reflect.jvm.internal.impl.c.b bVar) {
        ab abVar = eVar.f37814c.f37882a.o;
        kotlin.reflect.jvm.internal.impl.c.a a2 = kotlin.reflect.jvm.internal.impl.c.a.a(bVar);
        p.b(a2, "topLevel(fqName)");
        return v.a(abVar, a2, eVar.f37814c.f37882a.f37785d.a().l);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> a(kotlin.reflect.jvm.internal.impl.load.java.d.b bVar) {
        if (bVar instanceof o) {
            return h.f38252a.a(((o) bVar).b());
        }
        boolean z = bVar instanceof m;
        KotlinType kotlinType = null;
        if (z) {
            m mVar = (m) bVar;
            kotlin.reflect.jvm.internal.impl.c.a b2 = mVar.b();
            kotlin.reflect.jvm.internal.impl.c.e c2 = mVar.c();
            kotlin.reflect.jvm.internal.impl.resolve.constants.j jVar = null;
            if (b2 != null) {
                jVar = c2 == null ? null : new kotlin.reflect.jvm.internal.impl.resolve.constants.j(b2, c2);
            }
            return jVar;
        } else if (bVar instanceof kotlin.reflect.jvm.internal.impl.load.java.d.e) {
            kotlin.reflect.jvm.internal.impl.c.e a2 = bVar.a();
            kotlin.reflect.jvm.internal.impl.c.e eVar = a2;
            if (a2 == null) {
                eVar = u.f38003c;
            }
            p.b(eVar, "argument.name ?: DEFAULT_ANNOTATION_MEMBER_NAME");
            List<kotlin.reflect.jvm.internal.impl.load.java.d.b> b3 = ((kotlin.reflect.jvm.internal.impl.load.java.d.e) bVar).b();
            SimpleType type = a();
            p.b(type, "type");
            if (KotlinTypeKt.isError(type)) {
                return null;
            }
            kotlin.reflect.jvm.internal.impl.descriptors.d a3 = kotlin.reflect.jvm.internal.impl.resolve.b.a.a(this);
            p.a(a3);
            ba a4 = kotlin.reflect.jvm.internal.impl.load.java.a.a.a(eVar, a3);
            if (a4 != null) {
                kotlinType = a4.g();
            }
            SimpleType simpleType = kotlinType;
            if (kotlinType == null) {
                simpleType = this.f37814c.f37882a.o.getBuiltIns().a(Variance.INVARIANT, ErrorUtils.createErrorType("Unknown array element type"));
            }
            p.b(simpleType, "DescriptorResolverUtils.getAnnotationParameterByName(argumentName, annotationClass!!)?.type\n            // Try to load annotation arguments even if the annotation class is not found\n                ?: c.components.module.builtIns.getArrayType(\n                    Variance.INVARIANT,\n                    ErrorUtils.createErrorType(\"Unknown array element type\")\n                )");
            List<kotlin.reflect.jvm.internal.impl.load.java.d.b> list = b3;
            ArrayList arrayList = new ArrayList(kotlin.a.n.a((Iterable) list, 10));
            for (kotlin.reflect.jvm.internal.impl.load.java.d.b bVar2 : list) {
                kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> a5 = a(bVar2);
                q qVar = a5;
                if (a5 == null) {
                    qVar = new q();
                }
                arrayList.add(qVar);
            }
            ArrayList arrayList2 = arrayList;
            h hVar = h.f38252a;
            return h.a(arrayList2, simpleType);
        } else if (bVar instanceof kotlin.reflect.jvm.internal.impl.load.java.d.c) {
            return new kotlin.reflect.jvm.internal.impl.resolve.constants.a(new e(this.f37814c, ((kotlin.reflect.jvm.internal.impl.load.java.d.c) bVar).b(), false, 4, null));
        } else if (!(bVar instanceof kotlin.reflect.jvm.internal.impl.load.java.d.h)) {
            return null;
        } else {
            w b4 = ((kotlin.reflect.jvm.internal.impl.load.java.d.h) bVar).b();
            o.a aVar = kotlin.reflect.jvm.internal.impl.resolve.constants.o.f38259a;
            return o.a.a(this.f37814c.f37885d.transformJavaType(b4, JavaTypeResolverKt.toAttributes$default(k.COMMON, false, null, 3, null)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public SimpleType a() {
        return (SimpleType) kotlin.reflect.jvm.internal.impl.f.m.a(this.f, f37812a[1]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.c
    public final kotlin.reflect.jvm.internal.impl.c.b b() {
        return (kotlin.reflect.jvm.internal.impl.c.b) kotlin.reflect.jvm.internal.impl.f.m.a(this.e, f37812a[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.c
    public final Map<kotlin.reflect.jvm.internal.impl.c.e, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> c() {
        return (Map) kotlin.reflect.jvm.internal.impl.f.m.a(this.h, f37812a[2]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.c
    public final /* bridge */ /* synthetic */ at d() {
        return this.g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.b.i
    public final boolean e() {
        return this.i;
    }

    public final String toString() {
        String a2;
        a2 = kotlin.reflect.jvm.internal.impl.e.c.g.a(this, (kotlin.reflect.jvm.internal.impl.descriptors.a.e) null);
        return a2;
    }
}
