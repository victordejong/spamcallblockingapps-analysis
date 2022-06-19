package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.C18538n;
import kotlin.C20126t;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.p544a.C18896d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.C19216v;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.EnumC18980e;
import kotlin.reflect.jvm.internal.impl.load.java.C19585u;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19501g;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolverKt;
import kotlin.reflect.jvm.internal.impl.load.java.p558a.C19344a;
import kotlin.reflect.jvm.internal.impl.load.java.p558a.EnumC19365k;
import kotlin.reflect.jvm.internal.impl.load.java.p559b.AbstractC19377i;
import kotlin.reflect.jvm.internal.impl.load.java.p560c.AbstractC19385a;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19389a;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19393b;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19394c;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19396e;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19399h;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19404m;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19406o;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19414w;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p553e.AbstractC19230c;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19296i;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19297j;
import kotlin.reflect.jvm.internal.impl.p554f.C19301m;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19775a;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19782h;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19786j;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19793o;
import kotlin.reflect.jvm.internal.impl.resolve.constants.C19799q;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.e */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e.class */
public final class C19451e implements AbstractC18977c, AbstractC19377i {

    /* renamed from: a */
    static final /* synthetic */ KProperty<Object>[] f65383a = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C19451e.class), "fqName", "getFqName()Lorg/jetbrains/kotlin/name/FqName;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C19451e.class), "type", "getType()Lorg/jetbrains/kotlin/types/SimpleType;")), C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C19451e.class), "allValueArguments", "getAllValueArguments()Ljava/util/Map;"))};

    /* renamed from: b */
    public final boolean f65384b;

    /* renamed from: c */
    private final C19501g f65385c;

    /* renamed from: d */
    private final AbstractC19389a f65386d;

    /* renamed from: e */
    private final AbstractC19297j f65387e;

    /* renamed from: f */
    private final AbstractC19296i f65388f;

    /* renamed from: g */
    private final AbstractC19385a f65389g;

    /* renamed from: h */
    private final AbstractC19296i f65390h;

    /* renamed from: i */
    private final boolean f65391i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.e$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e$a.class */
    public static final class C19452a extends AbstractC18526r implements Function0<Map<C18966e, ? extends AbstractC19781g<?>>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19452a() {
            super(0);
            C19451e.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ Map<C18966e, ? extends AbstractC19781g<?>> invoke() {
            Collection<AbstractC19393b> mo2230a = C19451e.this.f65386d.mo2230a();
            C19451e c19451e = C19451e.this;
            ArrayList arrayList = new ArrayList();
            for (AbstractC19393b abstractC19393b : mo2230a) {
                C18966e mo2223a = abstractC19393b.mo2223a();
                C18966e c18966e = mo2223a;
                if (mo2223a == null) {
                    c18966e = C19585u.f65609c;
                }
                AbstractC19781g m2138a = c19451e.m2138a(abstractC19393b);
                C18538n m1103a = m2138a == null ? null : C20126t.m1103a(c18966e, m2138a);
                if (m1103a != null) {
                    arrayList.add(m1103a);
                }
            }
            return C18247ai.m4256a(arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.e$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e$b.class */
    public static final class C19453b extends AbstractC18526r implements Function0<C18961b> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19453b() {
            super(0);
            C19451e.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ C18961b invoke() {
            C18960a mo2229b = C19451e.this.f65386d.mo2229b();
            if (mo2229b == null) {
                return null;
            }
            return mo2229b.m2748f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.e$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/e$c.class */
    public static final class C19454c extends AbstractC18526r implements Function0<SimpleType> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19454c() {
            super(0);
            C19451e.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ SimpleType invoke() {
            C18961b mo2042b = C19451e.this.mo2042b();
            if (mo2042b == null) {
                return ErrorUtils.createErrorType(C18524p.m3847a("No fqName: ", (Object) C19451e.this.f65386d));
            }
            C18896d c18896d = C18896d.f64468a;
            AbstractC19070d m2896a = C18896d.m2896a(mo2042b, C19451e.this.f65385c.f65480a.f65332o.getBuiltIns());
            AbstractC19070d abstractC19070d = m2896a;
            if (m2896a == null) {
                AbstractC19070d mo2068a = C19451e.this.f65385c.f65480a.f65328k.mo2068a(C19451e.this.f65386d.mo2226e());
                abstractC19070d = mo2068a;
                if (mo2068a == null) {
                    abstractC19070d = C19451e.m2136a(C19451e.this, mo2042b);
                }
            }
            return abstractC19070d.getDefaultType();
        }
    }

    public C19451e(C19501g c, AbstractC19389a javaAnnotation, boolean z) {
        C18524p.m3840d(c, "c");
        C18524p.m3840d(javaAnnotation, "javaAnnotation");
        this.f65385c = c;
        this.f65386d = javaAnnotation;
        this.f65387e = c.f65480a.f65318a.mo2308b(new C19453b());
        this.f65388f = c.f65480a.f65318a.mo2313a(new C19454c());
        this.f65389g = c.f65480a.f65327j.mo2236a(javaAnnotation);
        this.f65390h = c.f65480a.f65318a.mo2313a(new C19452a());
        this.f65391i = javaAnnotation.mo2227d();
        javaAnnotation.mo2228c();
        this.f65384b = z;
    }

    public /* synthetic */ C19451e(C19501g c19501g, AbstractC19389a abstractC19389a, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(c19501g, abstractC19389a, (i & 4) != 0 ? false : z);
    }

    /* renamed from: a */
    public static final /* synthetic */ AbstractC19070d m2136a(C19451e c19451e, C18961b c18961b) {
        AbstractC18999ab abstractC18999ab = c19451e.f65385c.f65480a.f65332o;
        C18960a m2754a = C18960a.m2754a(c18961b);
        C18524p.m3843b(m2754a, "topLevel(fqName)");
        return C19216v.m2498a(abstractC18999ab, m2754a, c19451e.f65385c.f65480a.f65321d.m1915a().f66260l);
    }

    /* renamed from: a */
    public final AbstractC19781g<?> m2138a(AbstractC19393b abstractC19393b) {
        if (abstractC19393b instanceof AbstractC19406o) {
            return C19782h.f65967a.m1492a(((AbstractC19406o) abstractC19393b).mo2193b());
        }
        if (abstractC19393b instanceof AbstractC19404m) {
            AbstractC19404m abstractC19404m = (AbstractC19404m) abstractC19393b;
            C18960a mo2197b = abstractC19404m.mo2197b();
            C18966e mo2196c = abstractC19404m.mo2196c();
            C19786j c19786j = null;
            if (mo2197b != null) {
                c19786j = mo2196c == null ? null : new C19786j(mo2197b, mo2196c);
            }
            return c19786j;
        } else if (!(abstractC19393b instanceof AbstractC19396e)) {
            if (abstractC19393b instanceof AbstractC19394c) {
                return new C19775a(new C19451e(this.f65385c, ((AbstractC19394c) abstractC19393b).mo2222b(), false, 4, null));
            } else if (!(abstractC19393b instanceof AbstractC19399h)) {
                return null;
            } else {
                AbstractC19414w mo2204b = ((AbstractC19399h) abstractC19393b).mo2204b();
                C19793o.C19794a c19794a = C19793o.f65974a;
                return C19793o.C19794a.m1486a(this.f65385c.f65483d.transformJavaType(mo2204b, JavaTypeResolverKt.toAttributes$default(EnumC19365k.COMMON, false, null, 3, null)));
            }
        } else {
            C18966e mo2223a = abstractC19393b.mo2223a();
            C18966e c18966e = mo2223a;
            if (mo2223a == null) {
                c18966e = C19585u.f65609c;
            }
            C18524p.m3843b(c18966e, "argument.name ?: DEFAULT_ANNOTATION_MEMBER_NAME");
            List<AbstractC19393b> mo2218b = ((AbstractC19396e) abstractC19393b).mo2218b();
            SimpleType type = mo2043a();
            C18524p.m3843b(type, "type");
            if (KotlinTypeKt.isError(type)) {
                return null;
            }
            AbstractC19070d m1539a = C19756a.m1539a(this);
            C18524p.m3851a(m1539a);
            AbstractC19050ba m2285a = C19344a.m2285a(c18966e, m1539a);
            KotlinType g = m2285a == null ? null : m2285a.mo2593g();
            SimpleType simpleType = g;
            if (g == null) {
                simpleType = this.f65385c.f65480a.f65332o.getBuiltIns().m2823a(Variance.INVARIANT, ErrorUtils.createErrorType("Unknown array element type"));
            }
            C18524p.m3843b(simpleType, "DescriptorResolverUtils.getAnnotationParameterByName(argumentName, annotationClass!!)?.type\n            // Try to load annotation arguments even if the annotation class is not found\n                ?: c.components.module.builtIns.getArrayType(\n                    Variance.INVARIANT,\n                    ErrorUtils.createErrorType(\"Unknown array element type\")\n                )");
            List<AbstractC19393b> list = mo2218b;
            ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list, 10));
            for (AbstractC19393b abstractC19393b2 : list) {
                AbstractC19781g<?> m2138a = m2138a(abstractC19393b2);
                C19799q c19799q = m2138a;
                if (m2138a == null) {
                    c19799q = new C19799q();
                }
                arrayList.add(c19799q);
            }
            ArrayList arrayList2 = arrayList;
            C19782h c19782h = C19782h.f65967a;
            return C19782h.m1490a(arrayList2, simpleType);
        }
    }

    /* renamed from: f */
    public SimpleType mo2043a() {
        return (SimpleType) C19301m.m2316a(this.f65388f, f65383a[1]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c
    /* renamed from: b */
    public final C18961b mo2042b() {
        return (C18961b) C19301m.m2315a(this.f65387e, f65383a[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c
    /* renamed from: c */
    public final Map<C18966e, AbstractC19781g<?>> mo2041c() {
        return (Map) C19301m.m2316a(this.f65390h, f65383a[2]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ AbstractC19026at mo2040d() {
        return this.f65389g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p559b.AbstractC19377i
    /* renamed from: e */
    public final boolean mo2133e() {
        return this.f65391i;
    }

    public final String toString() {
        String mo2457a;
        mo2457a = AbstractC19230c.f65030g.mo2457a(this, (EnumC18980e) null);
        return mo2457a;
    }
}
