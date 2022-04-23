package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.a.ap;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.c.d;
import kotlin.reflect.jvm.internal.impl.c.h;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ad;
import kotlin.reflect.jvm.internal.impl.descriptors.ar;
import kotlin.reflect.jvm.internal.impl.descriptors.aw;
import kotlin.reflect.jvm.internal.impl.descriptors.ay;
import kotlin.reflect.jvm.internal.impl.descriptors.bf;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.e;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.f.i;
import kotlin.reflect.jvm.internal.impl.load.java.a.k;
import kotlin.reflect.jvm.internal.impl.load.java.b.d;
import kotlin.reflect.jvm.internal.impl.load.java.d.g;
import kotlin.reflect.jvm.internal.impl.load.java.d.j;
import kotlin.reflect.jvm.internal.impl.load.java.d.w;
import kotlin.reflect.jvm.internal.impl.load.java.d.x;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolverKt;
import kotlin.reflect.jvm.internal.impl.load.java.u;
import kotlin.reflect.jvm.internal.impl.resolve.constants.s;
import kotlin.reflect.jvm.internal.impl.resolve.e.f;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.o;
import kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor.class */
public final class LazyJavaClassDescriptor extends e implements d {

    /* renamed from: a  reason: collision with root package name */
    public static final a f37793a = new a(null);
    private static final Set<String> q = ap.a((Object[]) new String[]{"equals", "hashCode", "getClass", "wait", "notify", "notifyAll", "toString"});

    /* renamed from: b  reason: collision with root package name */
    public final g f37794b;

    /* renamed from: c  reason: collision with root package name */
    public final kotlin.reflect.jvm.internal.impl.load.java.lazy.g f37795c;

    /* renamed from: d  reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.load.java.lazy.g f37796d;
    private final kotlin.reflect.jvm.internal.impl.descriptors.d e;
    private final kotlin.reflect.jvm.internal.impl.descriptors.e f;
    private final y g;
    private final bf h;
    private final boolean i;
    private final LazyJavaClassTypeConstructor j;
    private final f k;
    private final ar<f> l;
    private final f m;
    private final j n;
    private final kotlin.reflect.jvm.internal.impl.descriptors.a.g o;
    private final i<List<TypeParameterDescriptor>> p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$LazyJavaClassTypeConstructor.class */
    public final class LazyJavaClassTypeConstructor extends AbstractClassTypeConstructor {
        private final i<List<TypeParameterDescriptor>> parameters;
        final /* synthetic */ LazyJavaClassDescriptor this$0;

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$LazyJavaClassTypeConstructor$a.class */
        static final class a extends r implements Function0<List<? extends TypeParameterDescriptor>> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ LazyJavaClassDescriptor f37797a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(LazyJavaClassDescriptor lazyJavaClassDescriptor) {
                super(0);
                this.f37797a = lazyJavaClassDescriptor;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends TypeParameterDescriptor> invoke() {
                return ay.a(this.f37797a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LazyJavaClassTypeConstructor(LazyJavaClassDescriptor this$0) {
            super(this$0.f37795c.f37882a.f37782a);
            p.d(this$0, "this$0");
            this.this$0 = this$0;
            this.parameters = this$0.f37795c.f37882a.f37782a.a(new a(this$0));
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x0028, code lost:
            if ((!r7.f37335b.f37340a.isEmpty() && r7.b(kotlin.reflect.jvm.internal.impl.builtins.j.l)) != false) goto L_0x0030;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final kotlin.reflect.jvm.internal.impl.types.KotlinType getPurelyImplementedSupertype() {
            /*
                Method dump skipped, instructions count: 405
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor.LazyJavaClassTypeConstructor.getPurelyImplementedSupertype():kotlin.reflect.jvm.internal.impl.types.KotlinType");
        }

        private final kotlin.reflect.jvm.internal.impl.c.b getPurelyImplementsFqNameFromAnnotation() {
            kotlin.reflect.jvm.internal.impl.descriptors.a.g annotations = this.this$0.getAnnotations();
            kotlin.reflect.jvm.internal.impl.c.b PURELY_IMPLEMENTS_ANNOTATION = u.o;
            p.b(PURELY_IMPLEMENTS_ANNOTATION, "PURELY_IMPLEMENTS_ANNOTATION");
            kotlin.reflect.jvm.internal.impl.descriptors.a.c a2 = annotations.a(PURELY_IMPLEMENTS_ANNOTATION);
            if (a2 == null) {
                return null;
            }
            Object e = n.e(a2.c().values());
            s sVar = e instanceof s ? (s) e : null;
            String str = sVar == null ? null : (String) sVar.a();
            if (str == null) {
                return null;
            }
            boolean z = false;
            if (str != null) {
                h hVar = h.BEGINNING;
                int i = 0;
                while (true) {
                    if (i < str.length()) {
                        char charAt = str.charAt(i);
                        int i2 = i + 1;
                        int i3 = d.a.f37341a[hVar.ordinal()];
                        if (i3 == 1 || i3 == 2) {
                            z = false;
                            if (!Character.isJavaIdentifierPart(charAt)) {
                                break;
                            }
                            hVar = h.MIDDLE;
                            i = i2;
                        } else if (i3 != 3) {
                            i = i2;
                        } else if (charAt == '.') {
                            hVar = h.AFTER_DOT;
                            i = i2;
                        } else {
                            i = i2;
                            if (!Character.isJavaIdentifierPart(charAt)) {
                                z = false;
                                break;
                            }
                        }
                    } else {
                        z = false;
                        if (hVar != h.AFTER_DOT) {
                            z = true;
                        }
                    }
                }
            }
            if (!z) {
                return null;
            }
            return new kotlin.reflect.jvm.internal.impl.c.b(str);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        public final Collection<KotlinType> computeSupertypes() {
            KotlinType kotlinType;
            Collection<j> f = this.this$0.f37794b.f();
            ArrayList arrayList = new ArrayList(f.size());
            ArrayList arrayList2 = new ArrayList(0);
            KotlinType purelyImplementedSupertype = getPurelyImplementedSupertype();
            Iterator<j> it2 = f.iterator();
            while (true) {
                kotlinType = null;
                TypeConstructor typeConstructor = null;
                if (!it2.hasNext()) {
                    break;
                }
                j next = it2.next();
                KotlinType transformJavaType = this.this$0.f37795c.f37885d.transformJavaType(next, JavaTypeResolverKt.toAttributes$default(k.SUPERTYPE, false, null, 3, null));
                kotlin.reflect.jvm.internal.impl.load.java.lazy.g unused = this.this$0.f37795c;
                if (transformJavaType.getConstructor().getDeclarationDescriptor() instanceof ad.b) {
                    arrayList2.add(next);
                }
                TypeConstructor constructor = transformJavaType.getConstructor();
                if (purelyImplementedSupertype != null) {
                    typeConstructor = purelyImplementedSupertype.getConstructor();
                }
                if (!p.a(constructor, typeConstructor) && !kotlin.reflect.jvm.internal.impl.builtins.g.o(transformJavaType)) {
                    arrayList.add(transformJavaType);
                }
            }
            ArrayList arrayList3 = arrayList;
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar = this.this$0.e;
            if (dVar != null) {
                kotlinType = kotlin.reflect.jvm.internal.impl.builtins.a.j.a(dVar, this.this$0).buildSubstitutor().substitute(dVar.getDefaultType(), Variance.INVARIANT);
            }
            kotlin.reflect.jvm.internal.impl.utils.a.a(arrayList3, kotlinType);
            kotlin.reflect.jvm.internal.impl.utils.a.a(arrayList3, purelyImplementedSupertype);
            if (!arrayList2.isEmpty()) {
                o oVar = this.this$0.f37795c.f37882a.f;
                kotlin.reflect.jvm.internal.impl.descriptors.d declarationDescriptor = getDeclarationDescriptor();
                ArrayList<w> arrayList4 = arrayList2;
                ArrayList arrayList5 = new ArrayList(n.a((Iterable) arrayList4, 10));
                for (w wVar : arrayList4) {
                    arrayList5.add(((j) wVar).f());
                }
                oVar.a(declarationDescriptor, arrayList5);
            }
            return arrayList3.isEmpty() ^ true ? n.h((Iterable) arrayList) : n.a(this.this$0.f37795c.f37882a.o.getBuiltIns().g());
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor, kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor, kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final kotlin.reflect.jvm.internal.impl.descriptors.d getDeclarationDescriptor() {
            return this.this$0;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final List<TypeParameterDescriptor> getParameters() {
            return this.parameters.invoke();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        public final aw getSupertypeLoopChecker() {
            return this.this$0.f37795c.f37882a.m;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final boolean isDenotable() {
            return true;
        }

        public final String toString() {
            String a2 = this.this$0.getName().a();
            p.b(a2, "name.asString()");
            return a2;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$b.class */
    static final class b extends r implements Function0<List<? extends TypeParameterDescriptor>> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ List<? extends TypeParameterDescriptor> invoke() {
            List<x> i = LazyJavaClassDescriptor.this.f37794b.i();
            LazyJavaClassDescriptor lazyJavaClassDescriptor = LazyJavaClassDescriptor.this;
            ArrayList arrayList = new ArrayList(n.a((Iterable) i, 10));
            for (x xVar : i) {
                TypeParameterDescriptor a2 = lazyJavaClassDescriptor.f37795c.f37883b.a(xVar);
                if (a2 != null) {
                    arrayList.add(a2);
                } else {
                    throw new AssertionError("Parameter " + xVar + " surely belongs to class " + lazyJavaClassDescriptor.f37794b + ", so it must be resolved");
                }
            }
            return arrayList;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor$c.class */
    static final class c extends r implements Function1<KotlinTypeRefiner, f> {
        c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ f invoke(KotlinTypeRefiner kotlinTypeRefiner) {
            KotlinTypeRefiner it2 = kotlinTypeRefiner;
            p.d(it2, "it");
            kotlin.reflect.jvm.internal.impl.load.java.lazy.g gVar = LazyJavaClassDescriptor.this.f37795c;
            LazyJavaClassDescriptor lazyJavaClassDescriptor = LazyJavaClassDescriptor.this;
            return new f(gVar, lazyJavaClassDescriptor, lazyJavaClassDescriptor.f37794b, LazyJavaClassDescriptor.this.e != null, LazyJavaClassDescriptor.this.k);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaClassDescriptor(kotlin.reflect.jvm.internal.impl.load.java.lazy.g outerContext, kotlin.reflect.jvm.internal.impl.descriptors.k containingDeclaration, g jClass, kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        super(outerContext.f37882a.f37782a, containingDeclaration, jClass.h(), outerContext.f37882a.j.a(jClass), false);
        y yVar;
        p.d(outerContext, "outerContext");
        p.d(containingDeclaration, "containingDeclaration");
        p.d(jClass, "jClass");
        this.f37796d = outerContext;
        this.f37794b = jClass;
        this.e = dVar;
        kotlin.reflect.jvm.internal.impl.load.java.lazy.g a2 = kotlin.reflect.jvm.internal.impl.load.java.lazy.a.a(outerContext, (kotlin.reflect.jvm.internal.impl.descriptors.f) this, (kotlin.reflect.jvm.internal.impl.load.java.d.y) jClass, 4);
        this.f37795c = a2;
        a2.f37882a.g.a(jClass);
        boolean z = kotlin.x.f38657a;
        this.f = jClass.k() ? kotlin.reflect.jvm.internal.impl.descriptors.e.ANNOTATION_CLASS : jClass.j() ? kotlin.reflect.jvm.internal.impl.descriptors.e.INTERFACE : jClass.l() ? kotlin.reflect.jvm.internal.impl.descriptors.e.ENUM_CLASS : kotlin.reflect.jvm.internal.impl.descriptors.e.CLASS;
        if (jClass.k() || jClass.l()) {
            yVar = y.FINAL;
        } else {
            y.a aVar = y.Companion;
            yVar = y.a.a(jClass.n() || jClass.j(), !jClass.o());
        }
        this.g = yVar;
        this.h = jClass.q();
        this.i = jClass.s() != null && !jClass.p();
        this.j = new LazyJavaClassTypeConstructor(this);
        LazyJavaClassDescriptor lazyJavaClassDescriptor = this;
        f fVar = new f(a2, lazyJavaClassDescriptor, jClass, dVar != null, null, 16, null);
        this.k = fVar;
        ar.a aVar2 = ar.f37394a;
        this.l = ar.a.a(lazyJavaClassDescriptor, a2.f37882a.f37782a, a2.f37882a.u.getKotlinTypeRefiner(), new c());
        this.m = new f(fVar);
        this.n = new j(a2, jClass, this);
        this.o = kotlin.reflect.jvm.internal.impl.load.java.lazy.e.a(a2, jClass);
        this.p = a2.f37882a.f37782a.a(new b());
    }

    public /* synthetic */ LazyJavaClassDescriptor(kotlin.reflect.jvm.internal.impl.load.java.lazy.g gVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar, g gVar2, kotlin.reflect.jvm.internal.impl.descriptors.d dVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(gVar, kVar, gVar2, (i & 8) != 0 ? null : dVar);
    }

    public final f a() {
        return (f) super.getUnsubstitutedMemberScope();
    }

    /* renamed from: b */
    public final List<kotlin.reflect.jvm.internal.impl.descriptors.c> getConstructors() {
        return this.k.f37820b.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.a
    public final kotlin.reflect.jvm.internal.impl.descriptors.a.g getAnnotations() {
        return this.o;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final kotlin.reflect.jvm.internal.impl.descriptors.d getCompanionObjectDescriptor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.h
    public final List<TypeParameterDescriptor> getDeclaredTypeParameters() {
        return this.p.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final kotlin.reflect.jvm.internal.impl.descriptors.e getKind() {
        return this.f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.x
    public final y getModality() {
        return this.g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> getSealedSubclasses() {
        if (this.g != y.SEALED) {
            return z.f36608a;
        }
        JavaTypeAttributes attributes$default = JavaTypeResolverKt.toAttributes$default(k.COMMON, false, null, 3, null);
        Collection<j> m = this.f37794b.m();
        ArrayList arrayList = new ArrayList();
        for (j jVar : m) {
            kotlin.reflect.jvm.internal.impl.descriptors.g declarationDescriptor = this.f37795c.f37885d.transformJavaType(jVar, attributes$default).getConstructor().getDeclarationDescriptor();
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar = declarationDescriptor instanceof kotlin.reflect.jvm.internal.impl.descriptors.d ? (kotlin.reflect.jvm.internal.impl.descriptors.d) declarationDescriptor : null;
            if (dVar != null) {
                arrayList.add(dVar);
            }
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final kotlin.reflect.jvm.internal.impl.resolve.e.h getStaticScope() {
        return this.n;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    public final TypeConstructor getTypeConstructor() {
        return this.j;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.a, kotlin.reflect.jvm.internal.impl.descriptors.d
    public final kotlin.reflect.jvm.internal.impl.resolve.e.h getUnsubstitutedInnerClassesScope() {
        return this.m;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.a, kotlin.reflect.jvm.internal.impl.descriptors.d
    public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.resolve.e.h getUnsubstitutedMemberScope() {
        return (f) super.getUnsubstitutedMemberScope();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.q
    public final /* synthetic */ kotlin.reflect.jvm.internal.impl.resolve.e.h getUnsubstitutedMemberScope(KotlinTypeRefiner kotlinTypeRefiner) {
        p.d(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this.l.a(kotlinTypeRefiner);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final kotlin.reflect.jvm.internal.impl.descriptors.c getUnsubstitutedPrimaryConstructor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.x
    public final kotlin.reflect.jvm.internal.impl.descriptors.s getVisibility() {
        if (!p.a(this.h, kotlin.reflect.jvm.internal.impl.descriptors.r.f37590a) || this.f37794b.s() != null) {
            return kotlin.reflect.jvm.internal.impl.load.java.z.a(this.h);
        }
        kotlin.reflect.jvm.internal.impl.descriptors.s sVar = kotlin.reflect.jvm.internal.impl.load.java.r.f37903a;
        p.b(sVar, "{\n            JavaDescriptorVisibilities.PACKAGE_VISIBILITY\n        }");
        return sVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public final boolean isActual() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final boolean isCompanionObject() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final boolean isData() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public final boolean isExpect() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final boolean isFun() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final boolean isInline() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.h
    public final boolean isInner() {
        return this.i;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final boolean isValue() {
        return false;
    }

    public final String toString() {
        return p.a("Lazy Java class ", (Object) kotlin.reflect.jvm.internal.impl.resolve.b.a.a((kotlin.reflect.jvm.internal.impl.descriptors.k) this));
    }
}
